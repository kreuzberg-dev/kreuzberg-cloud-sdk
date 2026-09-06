"""Path parameters are percent-encoded before they reach the wire.

Python was the only client that interpolated path parameters raw, while
TypeScript used `encodeURIComponent` and Go used `url.PathEscape`. A value
carrying `/`, `?` or `#` silently retargeted the request -- into a different
route, or truncated at the query or fragment marker -- so these assert the
encoding rather than the absence of a crash.
"""

from __future__ import annotations

import httpx
import pytest
import respx

from xberg_io_sdk import AsyncXbergClient, XbergClient


@respx.mock
def test_collection_name_with_a_slash_cannot_retarget_the_request(base_url: str, api_key: str) -> None:
    """`../` in a free-form collection name must not climb out of the collection route."""
    route = respx.get(f"{base_url}/v1/rag/collections/..%2Fjobs").mock(return_value=httpx.Response(200, json={}))

    with XbergClient(api_key=api_key, base_url=base_url, target="enterprise") as client:
        client.get_rag_collection("../jobs")

    assert route.called
    assert route.calls[0].request.url.raw_path == b"/v1/rag/collections/..%2Fjobs"


@respx.mock
def test_a_question_mark_is_encoded_rather_than_starting_a_query(base_url: str, api_key: str) -> None:
    """An unencoded `?` would truncate the path and turn the rest into a query string."""
    route = respx.get(f"{base_url}/v1/rag/collections/a%3Fb%23c").mock(return_value=httpx.Response(200, json={}))

    with XbergClient(api_key=api_key, base_url=base_url, target="enterprise") as client:
        client.get_rag_collection("a?b#c")

    assert route.called
    request = route.calls[0].request
    # `.path` decodes on read, so the raw form is what proves the encoding.
    assert request.url.raw_path == b"/v1/rag/collections/a%3Fb%23c"
    assert request.url.query == b""


@respx.mock
def test_every_segment_of_a_multi_parameter_path_is_encoded(base_url: str, api_key: str) -> None:
    """`/v1/presets/{preset_id}/sample/{name}` interpolates two values; both are encoded."""
    route = respx.get(f"{base_url}/v1/presets/a%2Fb/sample/c%2Fd.pdf").mock(
        return_value=httpx.Response(200, content=b"bytes")
    )

    with XbergClient(api_key=api_key, base_url=base_url, target="enterprise") as client:
        client.get_preset_sample("a/b", "c/d.pdf")

    assert route.called
    assert route.calls[0].request.url.raw_path == b"/v1/presets/a%2Fb/sample/c%2Fd.pdf"


@pytest.mark.asyncio
@respx.mock
async def test_the_async_client_encodes_identically(base_url: str, api_key: str) -> None:
    """The two client classes are mirrored by hand, so the async twin is asserted too."""
    route = respx.get(f"{base_url}/v1/rag/collections/..%2Fjobs").mock(return_value=httpx.Response(200, json={}))

    async with AsyncXbergClient(api_key=api_key, base_url=base_url, target="enterprise") as client:
        await client.get_rag_collection("../jobs")

    assert route.called
    assert route.calls[0].request.url.raw_path == b"/v1/rag/collections/..%2Fjobs"
