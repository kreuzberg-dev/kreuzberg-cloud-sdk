"""Tests for the dual-target client surface: base-url policy, retry engine, and tier gating."""

from __future__ import annotations

import httpx
import pytest
import respx

from xberg_io_sdk import AsyncXbergClient, RateLimitError, ServerError, XbergClient, XbergError
from xberg_io_sdk import client as client_module

PRO_URL = "https://pro.example.test"


# -- base-url policy -----------------------------------------------------------


def test_enterprise_target_defaults_base_url() -> None:
    with XbergClient(target="enterprise") as client:
        assert client._base_url == "https://api.xberg.io"


def test_none_target_defaults_to_enterprise_base_url() -> None:
    with XbergClient() as client:
        assert client._base_url == "https://api.xberg.io"


def test_pro_target_requires_explicit_base_url() -> None:
    with pytest.raises(XbergError, match="Pro has no default base_url"):
        XbergClient(target="pro")


def test_pro_target_accepts_explicit_base_url() -> None:
    with XbergClient(target="pro", base_url=f"{PRO_URL}/") as client:
        assert client._base_url == PRO_URL


# -- retry engine --------------------------------------------------------------


@respx.mock
def test_retry_recovers_after_transient_5xx(base_url: str, api_key: str, monkeypatch: pytest.MonkeyPatch) -> None:
    route = respx.get(f"{base_url}/v1/rag/collections").mock(
        side_effect=[
            httpx.Response(503, json={"message": "unavailable"}),
            httpx.Response(503, json={"message": "unavailable"}),
            httpx.Response(200, json={"collections": []}),
        ],
    )
    sleeps: list[float] = []
    monkeypatch.setattr(client_module.time, "sleep", sleeps.append)

    with XbergClient(api_key=api_key, base_url=base_url, retries=3) as client:
        result = client.list_rag_collections()

    assert result == {"collections": []}
    assert route.call_count == 3
    assert sleeps == [pytest.approx(0.2), pytest.approx(0.4)]


@respx.mock
def test_retry_honors_retry_after_header(base_url: str, api_key: str, monkeypatch: pytest.MonkeyPatch) -> None:
    route = respx.get(f"{base_url}/v1/rag/collections").mock(
        side_effect=[
            httpx.Response(429, headers={"Retry-After": "2"}, json={"message": "slow down"}),
            httpx.Response(200, json={"collections": []}),
        ],
    )
    sleeps: list[float] = []
    monkeypatch.setattr(client_module.time, "sleep", sleeps.append)

    with XbergClient(api_key=api_key, base_url=base_url, retries=2) as client:
        result = client.list_rag_collections()

    assert result == {"collections": []}
    assert route.call_count == 2
    assert sleeps == [pytest.approx(2.0)]


@respx.mock
def test_retry_exhaustion_raises_mapped_error(base_url: str, api_key: str, monkeypatch: pytest.MonkeyPatch) -> None:
    respx.get(f"{base_url}/v1/rag/collections").mock(
        return_value=httpx.Response(503, json={"message": "unavailable"}),
    )
    monkeypatch.setattr(client_module.time, "sleep", lambda _seconds: None)

    with XbergClient(api_key=api_key, base_url=base_url, retries=1) as client, pytest.raises(ServerError):
        client.list_rag_collections()


@respx.mock
def test_no_retry_on_non_retryable_status(base_url: str, api_key: str) -> None:
    route = respx.get(f"{base_url}/v1/rag/collections").mock(
        return_value=httpx.Response(500, json={"message": "boom"}),
    )
    with XbergClient(api_key=api_key, base_url=base_url, retries=3) as client, pytest.raises(ServerError):
        client.list_rag_collections()
    assert route.call_count == 1  # 500 is not in the retry set


@pytest.mark.asyncio
@respx.mock
async def test_retry_recovers_async(base_url: str, api_key: str, monkeypatch: pytest.MonkeyPatch) -> None:
    route = respx.get(f"{base_url}/v1/rag/collections").mock(
        side_effect=[
            httpx.Response(502, json={"message": "bad gateway"}),
            httpx.Response(200, json={"collections": ["a"]}),
        ],
    )

    async def _fake_sleep(_seconds: float) -> None:
        return None

    monkeypatch.setattr(client_module.asyncio, "sleep", _fake_sleep)

    async with AsyncXbergClient(api_key=api_key, base_url=base_url, retries=2) as client:
        result = await client.list_rag_collections()

    assert result == {"collections": ["a"]}
    assert route.call_count == 2


@respx.mock
def test_rate_limit_retry_after_surfaces_when_exhausted(
    base_url: str, api_key: str, monkeypatch: pytest.MonkeyPatch
) -> None:
    respx.get(f"{base_url}/v1/rag/collections").mock(
        return_value=httpx.Response(429, headers={"Retry-After": "1"}, json={"message": "throttled"}),
    )
    monkeypatch.setattr(client_module.time, "sleep", lambda _seconds: None)

    with XbergClient(api_key=api_key, base_url=base_url, retries=1) as client, pytest.raises(RateLimitError) as exc:
        client.list_rag_collections()
    assert exc.value.retry_after == 1.0


# -- tier gating (explicit target) --------------------------------------------


@respx.mock
def test_pro_only_method_rejected_on_enterprise(base_url: str, api_key: str) -> None:
    with (
        XbergClient(api_key=api_key, base_url=base_url, target="enterprise") as client,
        pytest.raises(XbergError, match="not available on the 'enterprise' tier"),
    ):
        client.login({"id_token": "x"})


@respx.mock
def test_enterprise_only_method_rejected_on_pro(api_key: str) -> None:
    with (
        XbergClient(api_key=api_key, base_url=PRO_URL, target="pro") as client,
        pytest.raises(XbergError, match="not available on the 'pro' tier"),
    ):
        client.usage()


@respx.mock
def test_pro_login_reaches_endpoint_on_pro(api_key: str) -> None:
    route = respx.post(f"{PRO_URL}/auth/login").mock(
        return_value=httpx.Response(200, json={"token": "session-jwt"}),
    )
    with XbergClient(api_key=api_key, base_url=PRO_URL, target="pro") as client:
        result = client.login({"id_token": "verified"})
    assert route.called
    assert result == {"token": "session-jwt"}


@respx.mock
def test_enterprise_usage_on_enterprise(base_url: str, api_key: str) -> None:
    respx.get(f"{base_url}/v1/usage").mock(
        return_value=httpx.Response(200, json={"pages": 42}),
    )
    with XbergClient(api_key=api_key, base_url=base_url, target="enterprise") as client:
        assert client.usage() == {"pages": 42}


# -- tier gating (capability probe) -------------------------------------------


@respx.mock
def test_capability_probe_reads_healthz_tier_and_caches(base_url: str, api_key: str) -> None:
    health = respx.get(f"{base_url}/healthz").mock(
        return_value=httpx.Response(200, json={"status": "ok", "tier": "enterprise"}),
    )
    respx.get(f"{base_url}/v1/usage").mock(
        return_value=httpx.Response(200, json={"pages": 7}),
    )

    # target omitted -> tier is discovered from /healthz, then cached.
    with XbergClient(api_key=api_key, base_url=base_url) as client:
        assert client.usage() == {"pages": 7}
        assert client.usage() == {"pages": 7}

    assert health.call_count == 1


@respx.mock
def test_capability_probe_gates_wrong_tier(base_url: str, api_key: str) -> None:
    respx.get(f"{base_url}/healthz").mock(
        return_value=httpx.Response(200, json={"status": "ok", "tier": "pro"}),
    )
    with (
        XbergClient(api_key=api_key, base_url=base_url) as client,
        pytest.raises(XbergError, match="not available on the 'pro' tier"),
    ):
        client.usage()
