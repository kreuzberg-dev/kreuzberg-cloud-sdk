from __future__ import annotations

from collections.abc import Mapping
from typing import TYPE_CHECKING, Any, TypeVar, cast

from attrs import define as _attrs_define
from attrs import field as _attrs_field
from typing_extensions import Self

from ..models.image_kind import ImageKind, check_image_kind
from ..types import UNSET, Unset

if TYPE_CHECKING:
    from ..models.bounding_box import BoundingBox
    from ..models.extracted_document import ExtractedDocument
    from ..models.qr_code import QrCode


T = TypeVar("T", bound="ExtractedImage")


@_attrs_define
class ExtractedImage:
    """Extracted image from a document.

    Contains raw image data, metadata, and optional nested OCR results.
    Raw bytes allow cross-language compatibility - users can convert to
    PIL.Image (Python), Sharp (Node.js), or other formats as needed.

    Attributes:
            data (list[int]): Raw image data (PNG, JPEG, WebP, etc. bytes).
                Uses `bytes::Bytes` for cheap cloning of large buffers.
            format_ (str): Image format (e.g., "jpeg", "png", "webp")
                Uses Cow<'static, str> to avoid allocation for static literals.
            image_index (int): Zero-indexed position of this image in the document/page
            bits_per_component (int | None | Unset): Bits per color component (e.g., 8, 16)
            bounding_box (BoundingBox | None | Unset):
            caption (None | str | Unset): VLM-generated caption describing the image, when captioning is configured.

                Populated by the captioning post-processor
                (`crates/xberg/src/plugins/processor/builtin/captioning.rs`), which routes
                each image through `crate::llm::region_extractor::extract_region_with_vlm` in
                caption mode. `None` when captioning is disabled or the VLM declined to caption.
            cluster_id (int | None | Unset): Identifier shared across images that form a single logical figure
                (e.g. all raster tiles of one technical drawing). `None` for singletons.
            colorspace (None | str | Unset): Colorspace information (e.g., "RGB", "CMYK", "Gray")
            data_base64 (None | str | Unset): Base64-encoded copy of `data`; populated when
                `ImageExtractionConfig::include_data_base64`
                is `true`. Omitted from JSON by default; use instead of `data` in JSON-only clients.
            description (None | str | Unset): Optional description of the image
            height (int | None | Unset): Image height in pixels
            image_kind (ImageKind | None | Unset):
            is_mask (bool | Unset): Whether this image is a mask image
            kind_confidence (float | None | Unset): Confidence score for `image_kind`, in the range 0.0 to 1.0.
            ocr_result (ExtractedDocument | None | Unset):
            page_number (int | None | Unset): Page/slide number where image was found (1-indexed)
            qr_codes (list[QrCode] | None | Unset): QR codes decoded from this image, when QR detection is enabled.

                Populated by the QR post-processor (`crates/xberg/src/extractors/qr.rs`) via
                the pure-Rust `rqrr` decoder. `None` when QR detection is disabled; an empty
                `Some(vec![])` when detection ran but found nothing.
            source_path (None | str | Unset): Original source path of the image within the document archive (e.g.,
                "media/image1.png" in DOCX).
                Used for rendering image references when the binary data is not extracted.
            width (int | None | Unset): Image width in pixels
    """

    data: list[int]
    format_: str
    image_index: int
    bits_per_component: int | None | Unset = UNSET
    bounding_box: BoundingBox | None | Unset = UNSET
    caption: None | str | Unset = UNSET
    cluster_id: int | None | Unset = UNSET
    colorspace: None | str | Unset = UNSET
    data_base64: None | str | Unset = UNSET
    description: None | str | Unset = UNSET
    height: int | None | Unset = UNSET
    image_kind: ImageKind | None | Unset = UNSET
    is_mask: bool | Unset = UNSET
    kind_confidence: float | None | Unset = UNSET
    ocr_result: ExtractedDocument | None | Unset = UNSET
    page_number: int | None | Unset = UNSET
    qr_codes: list[QrCode] | None | Unset = UNSET
    source_path: None | str | Unset = UNSET
    width: int | None | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)

    def to_dict(self) -> dict[str, Any]:
        from ..models.bounding_box import BoundingBox
        from ..models.extracted_document import ExtractedDocument

        data = self.data

        format_ = self.format_

        image_index = self.image_index

        bits_per_component: int | None | Unset
        if isinstance(self.bits_per_component, Unset):
            bits_per_component = UNSET
        else:
            bits_per_component = self.bits_per_component

        bounding_box: dict[str, Any] | None | Unset
        if isinstance(self.bounding_box, Unset):
            bounding_box = UNSET
        elif isinstance(self.bounding_box, BoundingBox):
            bounding_box = self.bounding_box.to_dict()
        else:
            bounding_box = self.bounding_box

        caption: None | str | Unset
        if isinstance(self.caption, Unset):
            caption = UNSET
        else:
            caption = self.caption

        cluster_id: int | None | Unset
        if isinstance(self.cluster_id, Unset):
            cluster_id = UNSET
        else:
            cluster_id = self.cluster_id

        colorspace: None | str | Unset
        if isinstance(self.colorspace, Unset):
            colorspace = UNSET
        else:
            colorspace = self.colorspace

        data_base64: None | str | Unset
        if isinstance(self.data_base64, Unset):
            data_base64 = UNSET
        else:
            data_base64 = self.data_base64

        description: None | str | Unset
        if isinstance(self.description, Unset):
            description = UNSET
        else:
            description = self.description

        height: int | None | Unset
        if isinstance(self.height, Unset):
            height = UNSET
        else:
            height = self.height

        image_kind: None | str | Unset
        if isinstance(self.image_kind, Unset):
            image_kind = UNSET
        elif isinstance(self.image_kind, str):
            image_kind = self.image_kind
        else:
            image_kind = self.image_kind

        is_mask = self.is_mask

        kind_confidence: float | None | Unset
        if isinstance(self.kind_confidence, Unset):
            kind_confidence = UNSET
        else:
            kind_confidence = self.kind_confidence

        ocr_result: dict[str, Any] | None | Unset
        if isinstance(self.ocr_result, Unset):
            ocr_result = UNSET
        elif isinstance(self.ocr_result, ExtractedDocument):
            ocr_result = self.ocr_result.to_dict()
        else:
            ocr_result = self.ocr_result

        page_number: int | None | Unset
        if isinstance(self.page_number, Unset):
            page_number = UNSET
        else:
            page_number = self.page_number

        qr_codes: list[dict[str, Any]] | None | Unset
        if isinstance(self.qr_codes, Unset):
            qr_codes = UNSET
        elif isinstance(self.qr_codes, list):
            qr_codes = []
            for qr_codes_type_0_item_data in self.qr_codes:
                qr_codes_type_0_item = qr_codes_type_0_item_data.to_dict()
                qr_codes.append(qr_codes_type_0_item)

        else:
            qr_codes = self.qr_codes

        source_path: None | str | Unset
        if isinstance(self.source_path, Unset):
            source_path = UNSET
        else:
            source_path = self.source_path

        width: int | None | Unset
        if isinstance(self.width, Unset):
            width = UNSET
        else:
            width = self.width

        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update(
            {
                "data": data,
                "format": format_,
                "image_index": image_index,
            }
        )
        if bits_per_component is not UNSET:
            field_dict["bits_per_component"] = bits_per_component
        if bounding_box is not UNSET:
            field_dict["bounding_box"] = bounding_box
        if caption is not UNSET:
            field_dict["caption"] = caption
        if cluster_id is not UNSET:
            field_dict["cluster_id"] = cluster_id
        if colorspace is not UNSET:
            field_dict["colorspace"] = colorspace
        if data_base64 is not UNSET:
            field_dict["data_base64"] = data_base64
        if description is not UNSET:
            field_dict["description"] = description
        if height is not UNSET:
            field_dict["height"] = height
        if image_kind is not UNSET:
            field_dict["image_kind"] = image_kind
        if is_mask is not UNSET:
            field_dict["is_mask"] = is_mask
        if kind_confidence is not UNSET:
            field_dict["kind_confidence"] = kind_confidence
        if ocr_result is not UNSET:
            field_dict["ocr_result"] = ocr_result
        if page_number is not UNSET:
            field_dict["page_number"] = page_number
        if qr_codes is not UNSET:
            field_dict["qr_codes"] = qr_codes
        if source_path is not UNSET:
            field_dict["source_path"] = source_path
        if width is not UNSET:
            field_dict["width"] = width

        return field_dict

    @classmethod
    def from_dict(cls, src_dict: Mapping[str, Any]) -> Self:
        from ..models.bounding_box import BoundingBox
        from ..models.extracted_document import ExtractedDocument
        from ..models.qr_code import QrCode

        d = dict(src_dict)
        data = cast("list[int]", d.pop("data"))

        format_ = d.pop("format")

        image_index = d.pop("image_index")

        def _parse_bits_per_component(data: object) -> int | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("int | None | Unset", data)

        bits_per_component = _parse_bits_per_component(d.pop("bits_per_component", UNSET))

        def _parse_bounding_box(data: object) -> BoundingBox | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, dict):
                    raise TypeError
                bounding_box_type_1 = BoundingBox.from_dict(data)

                return bounding_box_type_1
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("BoundingBox | None | Unset", data)

        bounding_box = _parse_bounding_box(d.pop("bounding_box", UNSET))

        def _parse_caption(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("None | str | Unset", data)

        caption = _parse_caption(d.pop("caption", UNSET))

        def _parse_cluster_id(data: object) -> int | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("int | None | Unset", data)

        cluster_id = _parse_cluster_id(d.pop("cluster_id", UNSET))

        def _parse_colorspace(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("None | str | Unset", data)

        colorspace = _parse_colorspace(d.pop("colorspace", UNSET))

        def _parse_data_base64(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("None | str | Unset", data)

        data_base64 = _parse_data_base64(d.pop("data_base64", UNSET))

        def _parse_description(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("None | str | Unset", data)

        description = _parse_description(d.pop("description", UNSET))

        def _parse_height(data: object) -> int | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("int | None | Unset", data)

        height = _parse_height(d.pop("height", UNSET))

        def _parse_image_kind(data: object) -> ImageKind | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, str):
                    raise TypeError
                image_kind_type_1 = check_image_kind(data)

                return image_kind_type_1
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("ImageKind | None | Unset", data)

        image_kind = _parse_image_kind(d.pop("image_kind", UNSET))

        is_mask = d.pop("is_mask", UNSET)

        def _parse_kind_confidence(data: object) -> float | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("float | None | Unset", data)

        kind_confidence = _parse_kind_confidence(d.pop("kind_confidence", UNSET))

        def _parse_ocr_result(data: object) -> ExtractedDocument | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, dict):
                    raise TypeError
                ocr_result_type_1 = ExtractedDocument.from_dict(data)

                return ocr_result_type_1
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("ExtractedDocument | None | Unset", data)

        ocr_result = _parse_ocr_result(d.pop("ocr_result", UNSET))

        def _parse_page_number(data: object) -> int | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("int | None | Unset", data)

        page_number = _parse_page_number(d.pop("page_number", UNSET))

        def _parse_qr_codes(data: object) -> list[QrCode] | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, list):
                    raise TypeError
                qr_codes_type_0 = []
                _qr_codes_type_0 = data
                for qr_codes_type_0_item_data in _qr_codes_type_0:
                    qr_codes_type_0_item = QrCode.from_dict(qr_codes_type_0_item_data)

                    qr_codes_type_0.append(qr_codes_type_0_item)

                return qr_codes_type_0
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast("list[QrCode] | None | Unset", data)

        qr_codes = _parse_qr_codes(d.pop("qr_codes", UNSET))

        def _parse_source_path(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("None | str | Unset", data)

        source_path = _parse_source_path(d.pop("source_path", UNSET))

        def _parse_width(data: object) -> int | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast("int | None | Unset", data)

        width = _parse_width(d.pop("width", UNSET))

        extracted_image = cls(
            data=data,
            format_=format_,
            image_index=image_index,
            bits_per_component=bits_per_component,
            bounding_box=bounding_box,
            caption=caption,
            cluster_id=cluster_id,
            colorspace=colorspace,
            data_base64=data_base64,
            description=description,
            height=height,
            image_kind=image_kind,
            is_mask=is_mask,
            kind_confidence=kind_confidence,
            ocr_result=ocr_result,
            page_number=page_number,
            qr_codes=qr_codes,
            source_path=source_path,
            width=width,
        )

        extracted_image.additional_properties = d
        return extracted_image

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
