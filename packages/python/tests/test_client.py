"""Smoke tests for the public client surface."""

from __future__ import annotations

import pytest

from xberg_io_sdk import AsyncXbergClient, XbergClient, XbergError


def test_sync_client_constructs_with_api_key() -> None:
    with XbergClient(api_key="secret-test") as client:
        assert client._headers["Authorization"] == "Bearer secret-test"


def test_sync_client_constructs_without_api_key() -> None:
    with XbergClient() as client:
        assert "Authorization" not in client._headers


def test_sync_client_uses_custom_base_url() -> None:
    with XbergClient(base_url="https://api.example.test/") as client:
        assert client._base_url == "https://api.example.test"


@pytest.mark.asyncio
async def test_async_client_constructs_with_api_key() -> None:
    async with AsyncXbergClient(api_key="secret-test") as client:
        assert client._headers["Authorization"] == "Bearer secret-test"


@pytest.mark.asyncio
async def test_async_client_uses_custom_base_url() -> None:
    async with AsyncXbergClient(base_url="https://api.example.test/") as client:
        assert client._base_url == "https://api.example.test"


def test_error_carries_status_code_and_payload() -> None:
    err = XbergError("bad request", status_code=400, payload={"detail": "no file"})
    assert err.status_code == 400
    assert err.payload == {"detail": "no file"}
    assert str(err) == "bad request"
