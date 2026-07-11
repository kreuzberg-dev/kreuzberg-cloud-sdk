from __future__ import annotations

from collections.abc import Mapping
from typing import TYPE_CHECKING, Any, TypeVar, cast
from uuid import UUID

from attrs import define as _attrs_define
from attrs import field as _attrs_field
from typing_extensions import Self

from ..types import UNSET, Unset

if TYPE_CHECKING:
    from ..models.integration_input import IntegrationInput


T = TypeVar("T", bound="DocumentInput")


@_attrs_define
class DocumentInput:
    """Document input for JSON extraction requests.

    A document is sourced **either** inline (`data`, base64-encoded) **or** by
    reference to a connected integration (`integration`). Exactly one of the two
    must be present; supplying both or neither is a 400.

    Attributes:
            filename (str): Original filename
            mime_type (str): MIME type of the document. For an integration-sourced document this is a
                hint only — the worker prefers the connector-reported type at fetch time.
            data (None | str | Unset): Base64-encoded document data. Mutually exclusive with `integration`.
            document_id (None | Unset | UUID): Optional client-supplied document identifier. When provided, this
                extraction is recorded as a version of that logical document and the
                response carries `document_id` + `version_sequence`. Server mints a
                new UUID when absent. Not supported with `integration` (versioning needs
                a content hash the integration source has not fetched yet) — the combo
                is rejected with 400.
            integration (IntegrationInput | None | Unset):
    """

    filename: str
    mime_type: str
    data: None | str | Unset = UNSET
    document_id: None | Unset | UUID = UNSET
    integration: IntegrationInput | None | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)

    def to_dict(self) -> dict[str, Any]:
        from ..models.integration_input import IntegrationInput

        filename = self.filename

        mime_type = self.mime_type

        data: None | str | Unset
        if isinstance(self.data, Unset):
            data = UNSET
        else:
            data = self.data

        document_id: None | str | Unset
        if isinstance(self.document_id, Unset):
            document_id = UNSET
        elif isinstance(self.document_id, UUID):
            document_id = str(self.document_id)
        else:
            document_id = self.document_id

        integration: dict[str, Any] | None | Unset
        if isinstance(self.integration, Unset):
            integration = UNSET
        elif isinstance(self.integration, IntegrationInput):
            integration = self.integration.to_dict()
        else:
            integration = self.integration

        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update(
            {
                "filename": filename,
                "mime_type": mime_type,
            }
        )
        if data is not UNSET:
            field_dict["data"] = data
        if document_id is not UNSET:
            field_dict["document_id"] = document_id
        if integration is not UNSET:
            field_dict["integration"] = integration

        return field_dict

    @classmethod
    def from_dict(cls, src_dict: Mapping[str, Any]) -> Self:
        from ..models.integration_input import IntegrationInput

        d = dict(src_dict)
        filename = d.pop("filename")

        mime_type = d.pop("mime_type")

        def _parse_data(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("None | str | Unset", data)

        data = _parse_data(d.pop("data", UNSET))

        def _parse_document_id(data: object) -> None | Unset | UUID:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, str):
                    raise TypeError
                document_id_type_0 = UUID(data)

                return document_id_type_0
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("None | Unset | UUID", data)

        document_id = _parse_document_id(d.pop("document_id", UNSET))

        def _parse_integration(data: object) -> IntegrationInput | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, dict):
                    raise TypeError
                integration_type_1 = IntegrationInput.from_dict(data)

                return integration_type_1
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("IntegrationInput | None | Unset", data)

        integration = _parse_integration(d.pop("integration", UNSET))

        document_input = cls(
            filename=filename,
            mime_type=mime_type,
            data=data,
            document_id=document_id,
            integration=integration,
        )

        document_input.additional_properties = d
        return document_input

    @property
    def additional_keys(self) -> list[str]:
        return list(self.additional_properties.keys())

    def __getitem__(self, key: str) -> Any:
        return self.additional_properties[key]

    def __setitem__(self, key: str, value: Any) -> None:
        self.additional_properties[key] = value

    def __delitem__(self, key: str) -> None:
        del self.additional_properties[key]

    def __contains__(self, key: str) -> bool:
        return key in self.additional_properties
