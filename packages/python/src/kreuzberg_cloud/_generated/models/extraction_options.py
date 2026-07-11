from __future__ import annotations

from collections.abc import Mapping
from typing import TYPE_CHECKING, Any, TypeVar, cast
from uuid import UUID

from attrs import define as _attrs_define
from attrs import field as _attrs_field
from typing_extensions import Self

from ..types import UNSET, Unset

if TYPE_CHECKING:
    from ..models.extraction_config import ExtractionConfig
    from ..models.extraction_options_context_type_0 import ExtractionOptionsContextType0


T = TypeVar("T", bound="ExtractionOptions")


@_attrs_define
class ExtractionOptions:
    """Extraction options (shared by JSON and multipart requests)

    Attributes:
        context (ExtractionOptionsContextType0 | None | Unset): Free-form context map merged into the preset's
            `context_template`
            (Mustache `{{key}}`) before the system prompt is sent to the model.
            Ignored when `preset` is not set.
        extraction_config (ExtractionConfig | None | Unset):
        preset (None | str | Unset): Preset identifier (matches `crates/presets/library/<id>/v1.json`).
            When set, the worker resolves the preset for structured-extraction
            configuration. Mutually compatible with `extraction_config`.
        saved_preset_id (None | Unset | UUID): Saved preset ID (project-scoped user-created preset).
            When set, the preset's schema, system_prompt, context_template,
            preferred_call_mode, and emit_citations are merged into extraction_config.
            Mutually exclusive with `preset` and raw `extraction_config.structured_extraction.schema`.
        split_documents (bool | None | Unset): When set to true and the document is a PDF, enable multi-document
            boundary detection and fan-out orchestration.
    """

    context: ExtractionOptionsContextType0 | None | Unset = UNSET
    extraction_config: ExtractionConfig | None | Unset = UNSET
    preset: None | str | Unset = UNSET
    saved_preset_id: None | Unset | UUID = UNSET
    split_documents: bool | None | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)

    def to_dict(self) -> dict[str, Any]:
        from ..models.extraction_config import ExtractionConfig
        from ..models.extraction_options_context_type_0 import ExtractionOptionsContextType0

        context: dict[str, Any] | None | Unset
        if isinstance(self.context, Unset):
            context = UNSET
        elif isinstance(self.context, ExtractionOptionsContextType0):
            context = self.context.to_dict()
        else:
            context = self.context

        extraction_config: dict[str, Any] | None | Unset
        if isinstance(self.extraction_config, Unset):
            extraction_config = UNSET
        elif isinstance(self.extraction_config, ExtractionConfig):
            extraction_config = self.extraction_config.to_dict()
        else:
            extraction_config = self.extraction_config

        preset: None | str | Unset
        if isinstance(self.preset, Unset):
            preset = UNSET
        else:
            preset = self.preset

        saved_preset_id: None | str | Unset
        if isinstance(self.saved_preset_id, Unset):
            saved_preset_id = UNSET
        elif isinstance(self.saved_preset_id, UUID):
            saved_preset_id = str(self.saved_preset_id)
        else:
            saved_preset_id = self.saved_preset_id

        split_documents: bool | None | Unset
        if isinstance(self.split_documents, Unset):
            split_documents = UNSET
        else:
            split_documents = self.split_documents

        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({})
        if context is not UNSET:
            field_dict["context"] = context
        if extraction_config is not UNSET:
            field_dict["extraction_config"] = extraction_config
        if preset is not UNSET:
            field_dict["preset"] = preset
        if saved_preset_id is not UNSET:
            field_dict["saved_preset_id"] = saved_preset_id
        if split_documents is not UNSET:
            field_dict["split_documents"] = split_documents

        return field_dict

    @classmethod
    def from_dict(cls, src_dict: Mapping[str, Any]) -> Self:
        from ..models.extraction_config import ExtractionConfig
        from ..models.extraction_options_context_type_0 import ExtractionOptionsContextType0

        d = dict(src_dict)

        def _parse_context(data: object) -> ExtractionOptionsContextType0 | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, dict):
                    raise TypeError
                context_type_0 = ExtractionOptionsContextType0.from_dict(data)

                return context_type_0
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("ExtractionOptionsContextType0 | None | Unset", data)

        context = _parse_context(d.pop("context", UNSET))

        def _parse_extraction_config(data: object) -> ExtractionConfig | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, dict):
                    raise TypeError
                extraction_config_type_1 = ExtractionConfig.from_dict(data)

                return extraction_config_type_1
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("ExtractionConfig | None | Unset", data)

        extraction_config = _parse_extraction_config(d.pop("extraction_config", UNSET))

        def _parse_preset(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("None | str | Unset", data)

        preset = _parse_preset(d.pop("preset", UNSET))

        def _parse_saved_preset_id(data: object) -> None | Unset | UUID:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, str):
                    raise TypeError
                saved_preset_id_type_0 = UUID(data)

                return saved_preset_id_type_0
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("None | Unset | UUID", data)

        saved_preset_id = _parse_saved_preset_id(d.pop("saved_preset_id", UNSET))

        def _parse_split_documents(data: object) -> bool | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("bool | None | Unset", data)

        split_documents = _parse_split_documents(d.pop("split_documents", UNSET))

        extraction_options = cls(
            context=context,
            extraction_config=extraction_config,
            preset=preset,
            saved_preset_id=saved_preset_id,
            split_documents=split_documents,
        )

        extraction_options.additional_properties = d
        return extraction_options

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
