{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtextserver; export gdtextserver

method hasFeature*(self: TextServerExtension; feature: TextServer_Feature): bool {.base.} = (discard)
proc registerVirtual_hasFeature*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_feature"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).hasFeature(p_args[0].decode(TextServer_Feature)).encode(r_ret)

method getName*(self: TextServerExtension): String {.base.} = (discard)
proc registerVirtual_getName*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).getName().encode(r_ret)

method getFeatures*(self: TextServerExtension): int64 {.base.} = (discard)
proc registerVirtual_getFeatures*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_features"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).getFeatures().encode(r_ret)

method freeRid*(self: TextServerExtension; rid: RID): void {.base.} = (discard)
proc registerVirtual_freeRid*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_free_rid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).freeRid(p_args[0].decode(RID))

method has*(self: TextServerExtension; rid: RID): bool {.base.} = (discard)
proc registerVirtual_has*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).has(p_args[0].decode(RID)).encode(r_ret)

method loadSupportData*(self: TextServerExtension; filename: String): bool {.base.} = (discard)
proc registerVirtual_loadSupportData*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_load_support_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).loadSupportData(p_args[0].decode(String)).encode(r_ret)

method getSupportDataFilename*(self: TextServerExtension): String {.base.} = (discard)
proc registerVirtual_getSupportDataFilename*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_support_data_filename"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).getSupportDataFilename().encode(r_ret)

method getSupportDataInfo*(self: TextServerExtension): String {.base.} = (discard)
proc registerVirtual_getSupportDataInfo*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_support_data_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).getSupportDataInfo().encode(r_ret)

method saveSupportData*(self: TextServerExtension; filename: String): bool {.base.} = (discard)
proc registerVirtual_saveSupportData*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_save_support_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).saveSupportData(p_args[0].decode(String)).encode(r_ret)

method getSupportData*(self: TextServerExtension): PackedByteArray {.base.} = (discard)
proc registerVirtual_getSupportData*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_support_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).getSupportData().encode(r_ret)

method isLocaleRightToLeft*(self: TextServerExtension; locale: String): bool {.base.} = (discard)
proc registerVirtual_isLocaleRightToLeft*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_locale_right_to_left"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).isLocaleRightToLeft(p_args[0].decode(String)).encode(r_ret)

method nameToTag*(self: TextServerExtension; name: String): int64 {.base.} = (discard)
proc registerVirtual_nameToTag*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_name_to_tag"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).nameToTag(p_args[0].decode(String)).encode(r_ret)

method tagToName*(self: TextServerExtension; tag: int64): String {.base.} = (discard)
proc registerVirtual_tagToName*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_tag_to_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).tagToName(p_args[0].decode(int64)).encode(r_ret)

method createFont*(self: TextServerExtension): RID {.base.} = (discard)
proc registerVirtual_createFont*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_font"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).createFont().encode(r_ret)

method createFontLinkedVariation*(self: TextServerExtension; fontRid: RID): RID {.base.} = (discard)
proc registerVirtual_createFontLinkedVariation*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_font_linked_variation"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).createFontLinkedVariation(p_args[0].decode(RID)).encode(r_ret)

method fontSetData*(self: TextServerExtension; fontRid: RID; data: PackedByteArray): void {.base.} = (discard)
proc registerVirtual_fontSetData*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetData(p_args[0].decode(RID), p_args[1].decode(PackedByteArray))

method fontSetDataPtr*(self: TextServerExtension; fontRid: RID; dataPtr: ptr uint8; dataSize: int64): void {.base.} = (discard)
proc registerVirtual_fontSetDataPtr*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_data_ptr"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetDataPtr(p_args[0].decode(RID), p_args[1].decode(ptr uint8), p_args[2].decode(int64))

method fontSetFaceIndex*(self: TextServerExtension; fontRid: RID; faceIndex: int64): void {.base.} = (discard)
proc registerVirtual_fontSetFaceIndex*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_face_index"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetFaceIndex(p_args[0].decode(RID), p_args[1].decode(int64))

method fontGetFaceIndex*(self: TextServerExtension; fontRid: RID): int64 {.base.} = (discard)
proc registerVirtual_fontGetFaceIndex*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_face_index"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetFaceIndex(p_args[0].decode(RID)).encode(r_ret)

method fontGetFaceCount*(self: TextServerExtension; fontRid: RID): int64 {.base.} = (discard)
proc registerVirtual_fontGetFaceCount*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_face_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetFaceCount(p_args[0].decode(RID)).encode(r_ret)

method fontSetStyle*(self: TextServerExtension; fontRid: RID; style: set[TextServer_FontStyle]): void {.base.} = (discard)
proc registerVirtual_fontSetStyle*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_style"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetStyle(p_args[0].decode(RID), p_args[1].decode(set[TextServer_FontStyle]))

method fontGetStyle*(self: TextServerExtension; fontRid: RID): set[TextServer_FontStyle] {.base.} = (discard)
proc registerVirtual_fontGetStyle*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_style"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetStyle(p_args[0].decode(RID)).encode(r_ret)

method fontSetName*(self: TextServerExtension; fontRid: RID; name: String): void {.base.} = (discard)
proc registerVirtual_fontSetName*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetName(p_args[0].decode(RID), p_args[1].decode(String))

method fontGetName*(self: TextServerExtension; fontRid: RID): String {.base.} = (discard)
proc registerVirtual_fontGetName*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetName(p_args[0].decode(RID)).encode(r_ret)

method fontGetOtNameStrings*(self: TextServerExtension; fontRid: RID): Dictionary {.base.} = (discard)
proc registerVirtual_fontGetOtNameStrings*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_ot_name_strings"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetOtNameStrings(p_args[0].decode(RID)).encode(r_ret)

method fontSetStyleName*(self: TextServerExtension; fontRid: RID; nameStyle: String): void {.base.} = (discard)
proc registerVirtual_fontSetStyleName*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_style_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetStyleName(p_args[0].decode(RID), p_args[1].decode(String))

method fontGetStyleName*(self: TextServerExtension; fontRid: RID): String {.base.} = (discard)
proc registerVirtual_fontGetStyleName*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_style_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetStyleName(p_args[0].decode(RID)).encode(r_ret)

method fontSetWeight*(self: TextServerExtension; fontRid: RID; weight: int64): void {.base.} = (discard)
proc registerVirtual_fontSetWeight*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_weight"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetWeight(p_args[0].decode(RID), p_args[1].decode(int64))

method fontGetWeight*(self: TextServerExtension; fontRid: RID): int64 {.base.} = (discard)
proc registerVirtual_fontGetWeight*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_weight"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetWeight(p_args[0].decode(RID)).encode(r_ret)

method fontSetStretch*(self: TextServerExtension; fontRid: RID; stretch: int64): void {.base.} = (discard)
proc registerVirtual_fontSetStretch*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_stretch"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetStretch(p_args[0].decode(RID), p_args[1].decode(int64))

method fontGetStretch*(self: TextServerExtension; fontRid: RID): int64 {.base.} = (discard)
proc registerVirtual_fontGetStretch*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_stretch"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetStretch(p_args[0].decode(RID)).encode(r_ret)

method fontSetAntialiasing*(self: TextServerExtension; fontRid: RID; antialiasing: TextServer_FontAntialiasing): void {.base.} = (discard)
proc registerVirtual_fontSetAntialiasing*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_antialiasing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetAntialiasing(p_args[0].decode(RID), p_args[1].decode(TextServer_FontAntialiasing))

method fontGetAntialiasing*(self: TextServerExtension; fontRid: RID): TextServer_FontAntialiasing {.base.} = (discard)
proc registerVirtual_fontGetAntialiasing*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_antialiasing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetAntialiasing(p_args[0].decode(RID)).encode(r_ret)

method fontSetDisableEmbeddedBitmaps*(self: TextServerExtension; fontRid: RID; disableEmbeddedBitmaps: bool): void {.base.} = (discard)
proc registerVirtual_fontSetDisableEmbeddedBitmaps*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_disable_embedded_bitmaps"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetDisableEmbeddedBitmaps(p_args[0].decode(RID), p_args[1].decode(bool))

method fontGetDisableEmbeddedBitmaps*(self: TextServerExtension; fontRid: RID): bool {.base.} = (discard)
proc registerVirtual_fontGetDisableEmbeddedBitmaps*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_disable_embedded_bitmaps"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetDisableEmbeddedBitmaps(p_args[0].decode(RID)).encode(r_ret)

method fontSetGenerateMipmaps*(self: TextServerExtension; fontRid: RID; generateMipmaps: bool): void {.base.} = (discard)
proc registerVirtual_fontSetGenerateMipmaps*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_generate_mipmaps"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetGenerateMipmaps(p_args[0].decode(RID), p_args[1].decode(bool))

method fontGetGenerateMipmaps*(self: TextServerExtension; fontRid: RID): bool {.base.} = (discard)
proc registerVirtual_fontGetGenerateMipmaps*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_generate_mipmaps"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGenerateMipmaps(p_args[0].decode(RID)).encode(r_ret)

method fontSetMultichannelSignedDistanceField*(self: TextServerExtension; fontRid: RID; msdf: bool): void {.base.} = (discard)
proc registerVirtual_fontSetMultichannelSignedDistanceField*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_multichannel_signed_distance_field"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetMultichannelSignedDistanceField(p_args[0].decode(RID), p_args[1].decode(bool))

method fontIsMultichannelSignedDistanceField*(self: TextServerExtension; fontRid: RID): bool {.base.} = (discard)
proc registerVirtual_fontIsMultichannelSignedDistanceField*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_is_multichannel_signed_distance_field"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontIsMultichannelSignedDistanceField(p_args[0].decode(RID)).encode(r_ret)

method fontSetMsdfPixelRange*(self: TextServerExtension; fontRid: RID; msdfPixelRange: int64): void {.base.} = (discard)
proc registerVirtual_fontSetMsdfPixelRange*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_msdf_pixel_range"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetMsdfPixelRange(p_args[0].decode(RID), p_args[1].decode(int64))

method fontGetMsdfPixelRange*(self: TextServerExtension; fontRid: RID): int64 {.base.} = (discard)
proc registerVirtual_fontGetMsdfPixelRange*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_msdf_pixel_range"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetMsdfPixelRange(p_args[0].decode(RID)).encode(r_ret)

method fontSetMsdfSize*(self: TextServerExtension; fontRid: RID; msdfSize: int64): void {.base.} = (discard)
proc registerVirtual_fontSetMsdfSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_msdf_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetMsdfSize(p_args[0].decode(RID), p_args[1].decode(int64))

method fontGetMsdfSize*(self: TextServerExtension; fontRid: RID): int64 {.base.} = (discard)
proc registerVirtual_fontGetMsdfSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_msdf_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetMsdfSize(p_args[0].decode(RID)).encode(r_ret)

method fontSetFixedSize*(self: TextServerExtension; fontRid: RID; fixedSize: int64): void {.base.} = (discard)
proc registerVirtual_fontSetFixedSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_fixed_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetFixedSize(p_args[0].decode(RID), p_args[1].decode(int64))

method fontGetFixedSize*(self: TextServerExtension; fontRid: RID): int64 {.base.} = (discard)
proc registerVirtual_fontGetFixedSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_fixed_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetFixedSize(p_args[0].decode(RID)).encode(r_ret)

method fontSetFixedSizeScaleMode*(self: TextServerExtension; fontRid: RID; fixedSizeScaleMode: TextServer_FixedSizeScaleMode): void {.base.} = (discard)
proc registerVirtual_fontSetFixedSizeScaleMode*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_fixed_size_scale_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetFixedSizeScaleMode(p_args[0].decode(RID), p_args[1].decode(TextServer_FixedSizeScaleMode))

method fontGetFixedSizeScaleMode*(self: TextServerExtension; fontRid: RID): TextServer_FixedSizeScaleMode {.base.} = (discard)
proc registerVirtual_fontGetFixedSizeScaleMode*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_fixed_size_scale_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetFixedSizeScaleMode(p_args[0].decode(RID)).encode(r_ret)

method fontSetAllowSystemFallback*(self: TextServerExtension; fontRid: RID; allowSystemFallback: bool): void {.base.} = (discard)
proc registerVirtual_fontSetAllowSystemFallback*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_allow_system_fallback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetAllowSystemFallback(p_args[0].decode(RID), p_args[1].decode(bool))

method fontIsAllowSystemFallback*(self: TextServerExtension; fontRid: RID): bool {.base.} = (discard)
proc registerVirtual_fontIsAllowSystemFallback*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_is_allow_system_fallback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontIsAllowSystemFallback(p_args[0].decode(RID)).encode(r_ret)

method fontSetForceAutohinter*(self: TextServerExtension; fontRid: RID; forceAutohinter: bool): void {.base.} = (discard)
proc registerVirtual_fontSetForceAutohinter*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_force_autohinter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetForceAutohinter(p_args[0].decode(RID), p_args[1].decode(bool))

method fontIsForceAutohinter*(self: TextServerExtension; fontRid: RID): bool {.base.} = (discard)
proc registerVirtual_fontIsForceAutohinter*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_is_force_autohinter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontIsForceAutohinter(p_args[0].decode(RID)).encode(r_ret)

method fontSetHinting*(self: TextServerExtension; fontRid: RID; hinting: TextServer_Hinting): void {.base.} = (discard)
proc registerVirtual_fontSetHinting*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_hinting"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetHinting(p_args[0].decode(RID), p_args[1].decode(TextServer_Hinting))

method fontGetHinting*(self: TextServerExtension; fontRid: RID): TextServer_Hinting {.base.} = (discard)
proc registerVirtual_fontGetHinting*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_hinting"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetHinting(p_args[0].decode(RID)).encode(r_ret)

method fontSetSubpixelPositioning*(self: TextServerExtension; fontRid: RID; subpixelPositioning: TextServer_SubpixelPositioning): void {.base.} = (discard)
proc registerVirtual_fontSetSubpixelPositioning*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_subpixel_positioning"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetSubpixelPositioning(p_args[0].decode(RID), p_args[1].decode(TextServer_SubpixelPositioning))

method fontGetSubpixelPositioning*(self: TextServerExtension; fontRid: RID): TextServer_SubpixelPositioning {.base.} = (discard)
proc registerVirtual_fontGetSubpixelPositioning*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_subpixel_positioning"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetSubpixelPositioning(p_args[0].decode(RID)).encode(r_ret)

method fontSetKeepRoundingRemainders*(self: TextServerExtension; fontRid: RID; keepRoundingRemainders: bool): void {.base.} = (discard)
proc registerVirtual_fontSetKeepRoundingRemainders*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_keep_rounding_remainders"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetKeepRoundingRemainders(p_args[0].decode(RID), p_args[1].decode(bool))

method fontGetKeepRoundingRemainders*(self: TextServerExtension; fontRid: RID): bool {.base.} = (discard)
proc registerVirtual_fontGetKeepRoundingRemainders*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_keep_rounding_remainders"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetKeepRoundingRemainders(p_args[0].decode(RID)).encode(r_ret)

method fontSetEmbolden*(self: TextServerExtension; fontRid: RID; strength: float64): void {.base.} = (discard)
proc registerVirtual_fontSetEmbolden*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_embolden"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetEmbolden(p_args[0].decode(RID), p_args[1].decode(float64))

method fontGetEmbolden*(self: TextServerExtension; fontRid: RID): float64 {.base.} = (discard)
proc registerVirtual_fontGetEmbolden*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_embolden"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetEmbolden(p_args[0].decode(RID)).encode(r_ret)

method fontSetSpacing*(self: TextServerExtension; fontRid: RID; spacing: TextServer_SpacingType; value: int64): void {.base.} = (discard)
proc registerVirtual_fontSetSpacing*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_spacing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetSpacing(p_args[0].decode(RID), p_args[1].decode(TextServer_SpacingType), p_args[2].decode(int64))

method fontGetSpacing*(self: TextServerExtension; fontRid: RID; spacing: TextServer_SpacingType): int64 {.base.} = (discard)
proc registerVirtual_fontGetSpacing*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_spacing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetSpacing(p_args[0].decode(RID), p_args[1].decode(TextServer_SpacingType)).encode(r_ret)

method fontSetBaselineOffset*(self: TextServerExtension; fontRid: RID; baselineOffset: float64): void {.base.} = (discard)
proc registerVirtual_fontSetBaselineOffset*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_baseline_offset"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetBaselineOffset(p_args[0].decode(RID), p_args[1].decode(float64))

method fontGetBaselineOffset*(self: TextServerExtension; fontRid: RID): float64 {.base.} = (discard)
proc registerVirtual_fontGetBaselineOffset*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_baseline_offset"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetBaselineOffset(p_args[0].decode(RID)).encode(r_ret)

method fontSetTransform*(self: TextServerExtension; fontRid: RID; transform: Transform2D): void {.base.} = (discard)
proc registerVirtual_fontSetTransform*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetTransform(p_args[0].decode(RID), p_args[1].decode(Transform2D))

method fontGetTransform*(self: TextServerExtension; fontRid: RID): Transform2D {.base.} = (discard)
proc registerVirtual_fontGetTransform*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetTransform(p_args[0].decode(RID)).encode(r_ret)

method fontSetVariationCoordinates*(self: TextServerExtension; fontRid: RID; variationCoordinates: Dictionary): void {.base.} = (discard)
proc registerVirtual_fontSetVariationCoordinates*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_variation_coordinates"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetVariationCoordinates(p_args[0].decode(RID), p_args[1].decode(Dictionary))

method fontGetVariationCoordinates*(self: TextServerExtension; fontRid: RID): Dictionary {.base.} = (discard)
proc registerVirtual_fontGetVariationCoordinates*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_variation_coordinates"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetVariationCoordinates(p_args[0].decode(RID)).encode(r_ret)

method fontSetOversampling*(self: TextServerExtension; fontRid: RID; oversampling: float64): void {.base.} = (discard)
proc registerVirtual_fontSetOversampling*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_oversampling"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetOversampling(p_args[0].decode(RID), p_args[1].decode(float64))

method fontGetOversampling*(self: TextServerExtension; fontRid: RID): float64 {.base.} = (discard)
proc registerVirtual_fontGetOversampling*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_oversampling"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetOversampling(p_args[0].decode(RID)).encode(r_ret)

method fontGetSizeCacheList*(self: TextServerExtension; fontRid: RID): TypedArray[Vector2i] {.base.} = (discard)
proc registerVirtual_fontGetSizeCacheList*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_size_cache_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetSizeCacheList(p_args[0].decode(RID)).encode(r_ret)

method fontClearSizeCache*(self: TextServerExtension; fontRid: RID): void {.base.} = (discard)
proc registerVirtual_fontClearSizeCache*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_clear_size_cache"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontClearSizeCache(p_args[0].decode(RID))

method fontRemoveSizeCache*(self: TextServerExtension; fontRid: RID; size: Vector2i): void {.base.} = (discard)
proc registerVirtual_fontRemoveSizeCache*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_remove_size_cache"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontRemoveSizeCache(p_args[0].decode(RID), p_args[1].decode(Vector2i))

method fontSetAscent*(self: TextServerExtension; fontRid: RID; size: int64; ascent: float64): void {.base.} = (discard)
proc registerVirtual_fontSetAscent*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_ascent"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetAscent(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(float64))

method fontGetAscent*(self: TextServerExtension; fontRid: RID; size: int64): float64 {.base.} = (discard)
proc registerVirtual_fontGetAscent*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_ascent"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetAscent(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method fontSetDescent*(self: TextServerExtension; fontRid: RID; size: int64; descent: float64): void {.base.} = (discard)
proc registerVirtual_fontSetDescent*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_descent"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetDescent(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(float64))

method fontGetDescent*(self: TextServerExtension; fontRid: RID; size: int64): float64 {.base.} = (discard)
proc registerVirtual_fontGetDescent*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_descent"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetDescent(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method fontSetUnderlinePosition*(self: TextServerExtension; fontRid: RID; size: int64; underlinePosition: float64): void {.base.} = (discard)
proc registerVirtual_fontSetUnderlinePosition*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_underline_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetUnderlinePosition(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(float64))

method fontGetUnderlinePosition*(self: TextServerExtension; fontRid: RID; size: int64): float64 {.base.} = (discard)
proc registerVirtual_fontGetUnderlinePosition*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_underline_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetUnderlinePosition(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method fontSetUnderlineThickness*(self: TextServerExtension; fontRid: RID; size: int64; underlineThickness: float64): void {.base.} = (discard)
proc registerVirtual_fontSetUnderlineThickness*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_underline_thickness"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetUnderlineThickness(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(float64))

method fontGetUnderlineThickness*(self: TextServerExtension; fontRid: RID; size: int64): float64 {.base.} = (discard)
proc registerVirtual_fontGetUnderlineThickness*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_underline_thickness"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetUnderlineThickness(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method fontSetScale*(self: TextServerExtension; fontRid: RID; size: int64; scale: float64): void {.base.} = (discard)
proc registerVirtual_fontSetScale*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_scale"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetScale(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(float64))

method fontGetScale*(self: TextServerExtension; fontRid: RID; size: int64): float64 {.base.} = (discard)
proc registerVirtual_fontGetScale*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_scale"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetScale(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method fontGetTextureCount*(self: TextServerExtension; fontRid: RID; size: Vector2i): int64 {.base.} = (discard)
proc registerVirtual_fontGetTextureCount*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_texture_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetTextureCount(p_args[0].decode(RID), p_args[1].decode(Vector2i)).encode(r_ret)

method fontClearTextures*(self: TextServerExtension; fontRid: RID; size: Vector2i): void {.base.} = (discard)
proc registerVirtual_fontClearTextures*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_clear_textures"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontClearTextures(p_args[0].decode(RID), p_args[1].decode(Vector2i))

method fontRemoveTexture*(self: TextServerExtension; fontRid: RID; size: Vector2i; textureIndex: int64): void {.base.} = (discard)
proc registerVirtual_fontRemoveTexture*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_remove_texture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontRemoveTexture(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64))

method fontSetTextureImage*(self: TextServerExtension; fontRid: RID; size: Vector2i; textureIndex: int64; image: gdref Image): void {.base.} = (discard)
proc registerVirtual_fontSetTextureImage*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_texture_image"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetTextureImage(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64), p_args[3].decode(gdref Image))

method fontGetTextureImage*(self: TextServerExtension; fontRid: RID; size: Vector2i; textureIndex: int64): gdref Image {.base.} = (discard)
proc registerVirtual_fontGetTextureImage*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_texture_image"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetTextureImage(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64)).encode(r_ret)

method fontSetTextureOffsets*(self: TextServerExtension; fontRid: RID; size: Vector2i; textureIndex: int64; offset: PackedInt32Array): void {.base.} = (discard)
proc registerVirtual_fontSetTextureOffsets*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_texture_offsets"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetTextureOffsets(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64), p_args[3].decode(PackedInt32Array))

method fontGetTextureOffsets*(self: TextServerExtension; fontRid: RID; size: Vector2i; textureIndex: int64): PackedInt32Array {.base.} = (discard)
proc registerVirtual_fontGetTextureOffsets*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_texture_offsets"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetTextureOffsets(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64)).encode(r_ret)

method fontGetGlyphList*(self: TextServerExtension; fontRid: RID; size: Vector2i): PackedInt32Array {.base.} = (discard)
proc registerVirtual_fontGetGlyphList*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphList(p_args[0].decode(RID), p_args[1].decode(Vector2i)).encode(r_ret)

method fontClearGlyphs*(self: TextServerExtension; fontRid: RID; size: Vector2i): void {.base.} = (discard)
proc registerVirtual_fontClearGlyphs*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_clear_glyphs"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontClearGlyphs(p_args[0].decode(RID), p_args[1].decode(Vector2i))

method fontRemoveGlyph*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64): void {.base.} = (discard)
proc registerVirtual_fontRemoveGlyph*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_remove_glyph"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontRemoveGlyph(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64))

method fontGetGlyphAdvance*(self: TextServerExtension; fontRid: RID; size: int64; glyph: int64): Vector2 {.base.} = (discard)
proc registerVirtual_fontGetGlyphAdvance*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_advance"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphAdvance(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(int64)).encode(r_ret)

method fontSetGlyphAdvance*(self: TextServerExtension; fontRid: RID; size: int64; glyph: int64; advance: Vector2): void {.base.} = (discard)
proc registerVirtual_fontSetGlyphAdvance*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_glyph_advance"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetGlyphAdvance(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(int64), p_args[3].decode(Vector2))

method fontGetGlyphOffset*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64): Vector2 {.base.} = (discard)
proc registerVirtual_fontGetGlyphOffset*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_offset"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphOffset(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64)).encode(r_ret)

method fontSetGlyphOffset*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64; offset: Vector2): void {.base.} = (discard)
proc registerVirtual_fontSetGlyphOffset*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_glyph_offset"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetGlyphOffset(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64), p_args[3].decode(Vector2))

method fontGetGlyphSize*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64): Vector2 {.base.} = (discard)
proc registerVirtual_fontGetGlyphSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphSize(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64)).encode(r_ret)

method fontSetGlyphSize*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64; glSize: Vector2): void {.base.} = (discard)
proc registerVirtual_fontSetGlyphSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_glyph_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetGlyphSize(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64), p_args[3].decode(Vector2))

method fontGetGlyphUvRect*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64): Rect2 {.base.} = (discard)
proc registerVirtual_fontGetGlyphUvRect*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_uv_rect"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphUvRect(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64)).encode(r_ret)

method fontSetGlyphUvRect*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64; uvRect: Rect2): void {.base.} = (discard)
proc registerVirtual_fontSetGlyphUvRect*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_glyph_uv_rect"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetGlyphUvRect(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64), p_args[3].decode(Rect2))

method fontGetGlyphTextureIdx*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64): int64 {.base.} = (discard)
proc registerVirtual_fontGetGlyphTextureIdx*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_texture_idx"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphTextureIdx(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64)).encode(r_ret)

method fontSetGlyphTextureIdx*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64; textureIdx: int64): void {.base.} = (discard)
proc registerVirtual_fontSetGlyphTextureIdx*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_glyph_texture_idx"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetGlyphTextureIdx(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64), p_args[3].decode(int64))

method fontGetGlyphTextureRid*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64): RID {.base.} = (discard)
proc registerVirtual_fontGetGlyphTextureRid*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_texture_rid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphTextureRid(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64)).encode(r_ret)

method fontGetGlyphTextureSize*(self: TextServerExtension; fontRid: RID; size: Vector2i; glyph: int64): Vector2 {.base.} = (discard)
proc registerVirtual_fontGetGlyphTextureSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_texture_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphTextureSize(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64)).encode(r_ret)

method fontGetGlyphContours*(self: TextServerExtension; fontRid: RID; size: int64; index: int64): Dictionary {.base.} = (discard)
proc registerVirtual_fontGetGlyphContours*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_contours"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphContours(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(int64)).encode(r_ret)

method fontGetKerningList*(self: TextServerExtension; fontRid: RID; size: int64): TypedArray[Vector2i] {.base.} = (discard)
proc registerVirtual_fontGetKerningList*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_kerning_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetKerningList(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method fontClearKerningMap*(self: TextServerExtension; fontRid: RID; size: int64): void {.base.} = (discard)
proc registerVirtual_fontClearKerningMap*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_clear_kerning_map"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontClearKerningMap(p_args[0].decode(RID), p_args[1].decode(int64))

method fontRemoveKerning*(self: TextServerExtension; fontRid: RID; size: int64; glyphPair: Vector2i): void {.base.} = (discard)
proc registerVirtual_fontRemoveKerning*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_remove_kerning"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontRemoveKerning(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(Vector2i))

method fontSetKerning*(self: TextServerExtension; fontRid: RID; size: int64; glyphPair: Vector2i; kerning: Vector2): void {.base.} = (discard)
proc registerVirtual_fontSetKerning*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_kerning"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetKerning(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(Vector2i), p_args[3].decode(Vector2))

method fontGetKerning*(self: TextServerExtension; fontRid: RID; size: int64; glyphPair: Vector2i): Vector2 {.base.} = (discard)
proc registerVirtual_fontGetKerning*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_kerning"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetKerning(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(Vector2i)).encode(r_ret)

method fontGetGlyphIndex*(self: TextServerExtension; fontRid: RID; size: int64; char: int64; variationSelector: int64): int64 {.base.} = (discard)
proc registerVirtual_fontGetGlyphIndex*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_glyph_index"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlyphIndex(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(int64), p_args[3].decode(int64)).encode(r_ret)

method fontGetCharFromGlyphIndex*(self: TextServerExtension; fontRid: RID; size: int64; glyphIndex: int64): int64 {.base.} = (discard)
proc registerVirtual_fontGetCharFromGlyphIndex*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_char_from_glyph_index"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetCharFromGlyphIndex(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(int64)).encode(r_ret)

method fontHasChar*(self: TextServerExtension; fontRid: RID; char: int64): bool {.base.} = (discard)
proc registerVirtual_fontHasChar*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_has_char"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontHasChar(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method fontGetSupportedChars*(self: TextServerExtension; fontRid: RID): String {.base.} = (discard)
proc registerVirtual_fontGetSupportedChars*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_supported_chars"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetSupportedChars(p_args[0].decode(RID)).encode(r_ret)

method fontGetSupportedGlyphs*(self: TextServerExtension; fontRid: RID): PackedInt32Array {.base.} = (discard)
proc registerVirtual_fontGetSupportedGlyphs*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_supported_glyphs"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetSupportedGlyphs(p_args[0].decode(RID)).encode(r_ret)

method fontRenderRange*(self: TextServerExtension; fontRid: RID; size: Vector2i; start: int64; `end`: int64): void {.base.} = (discard)
proc registerVirtual_fontRenderRange*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_render_range"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontRenderRange(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64), p_args[3].decode(int64))

method fontRenderGlyph*(self: TextServerExtension; fontRid: RID; size: Vector2i; index: int64): void {.base.} = (discard)
proc registerVirtual_fontRenderGlyph*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_render_glyph"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontRenderGlyph(p_args[0].decode(RID), p_args[1].decode(Vector2i), p_args[2].decode(int64))

method fontDrawGlyph*(self: TextServerExtension; fontRid: RID; canvas: RID; size: int64; pos: Vector2; index: int64; color: Color): void {.base.} = (discard)
proc registerVirtual_fontDrawGlyph*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_draw_glyph"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontDrawGlyph(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(int64), p_args[3].decode(Vector2), p_args[4].decode(int64), p_args[5].decode(Color))

method fontDrawGlyphOutline*(self: TextServerExtension; fontRid: RID; canvas: RID; size: int64; outlineSize: int64; pos: Vector2; index: int64; color: Color): void {.base.} = (discard)
proc registerVirtual_fontDrawGlyphOutline*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_draw_glyph_outline"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontDrawGlyphOutline(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(int64), p_args[3].decode(int64), p_args[4].decode(Vector2), p_args[5].decode(int64), p_args[6].decode(Color))

method fontIsLanguageSupported*(self: TextServerExtension; fontRid: RID; language: String): bool {.base.} = (discard)
proc registerVirtual_fontIsLanguageSupported*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_is_language_supported"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontIsLanguageSupported(p_args[0].decode(RID), p_args[1].decode(String)).encode(r_ret)

method fontSetLanguageSupportOverride*(self: TextServerExtension; fontRid: RID; language: String; supported: bool): void {.base.} = (discard)
proc registerVirtual_fontSetLanguageSupportOverride*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_language_support_override"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetLanguageSupportOverride(p_args[0].decode(RID), p_args[1].decode(String), p_args[2].decode(bool))

method fontGetLanguageSupportOverride*(self: TextServerExtension; fontRid: RID; language: String): bool {.base.} = (discard)
proc registerVirtual_fontGetLanguageSupportOverride*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_language_support_override"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetLanguageSupportOverride(p_args[0].decode(RID), p_args[1].decode(String)).encode(r_ret)

method fontRemoveLanguageSupportOverride*(self: TextServerExtension; fontRid: RID; language: String): void {.base.} = (discard)
proc registerVirtual_fontRemoveLanguageSupportOverride*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_remove_language_support_override"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontRemoveLanguageSupportOverride(p_args[0].decode(RID), p_args[1].decode(String))

method fontGetLanguageSupportOverrides*(self: TextServerExtension; fontRid: RID): PackedStringArray {.base.} = (discard)
proc registerVirtual_fontGetLanguageSupportOverrides*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_language_support_overrides"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetLanguageSupportOverrides(p_args[0].decode(RID)).encode(r_ret)

method fontIsScriptSupported*(self: TextServerExtension; fontRid: RID; script: String): bool {.base.} = (discard)
proc registerVirtual_fontIsScriptSupported*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_is_script_supported"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontIsScriptSupported(p_args[0].decode(RID), p_args[1].decode(String)).encode(r_ret)

method fontSetScriptSupportOverride*(self: TextServerExtension; fontRid: RID; script: String; supported: bool): void {.base.} = (discard)
proc registerVirtual_fontSetScriptSupportOverride*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_script_support_override"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetScriptSupportOverride(p_args[0].decode(RID), p_args[1].decode(String), p_args[2].decode(bool))

method fontGetScriptSupportOverride*(self: TextServerExtension; fontRid: RID; script: String): bool {.base.} = (discard)
proc registerVirtual_fontGetScriptSupportOverride*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_script_support_override"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetScriptSupportOverride(p_args[0].decode(RID), p_args[1].decode(String)).encode(r_ret)

method fontRemoveScriptSupportOverride*(self: TextServerExtension; fontRid: RID; script: String): void {.base.} = (discard)
proc registerVirtual_fontRemoveScriptSupportOverride*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_remove_script_support_override"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontRemoveScriptSupportOverride(p_args[0].decode(RID), p_args[1].decode(String))

method fontGetScriptSupportOverrides*(self: TextServerExtension; fontRid: RID): PackedStringArray {.base.} = (discard)
proc registerVirtual_fontGetScriptSupportOverrides*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_script_support_overrides"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetScriptSupportOverrides(p_args[0].decode(RID)).encode(r_ret)

method fontSetOpentypeFeatureOverrides*(self: TextServerExtension; fontRid: RID; overrides: Dictionary): void {.base.} = (discard)
proc registerVirtual_fontSetOpentypeFeatureOverrides*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_opentype_feature_overrides"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetOpentypeFeatureOverrides(p_args[0].decode(RID), p_args[1].decode(Dictionary))

method fontGetOpentypeFeatureOverrides*(self: TextServerExtension; fontRid: RID): Dictionary {.base.} = (discard)
proc registerVirtual_fontGetOpentypeFeatureOverrides*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_opentype_feature_overrides"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetOpentypeFeatureOverrides(p_args[0].decode(RID)).encode(r_ret)

method fontSupportedFeatureList*(self: TextServerExtension; fontRid: RID): Dictionary {.base.} = (discard)
proc registerVirtual_fontSupportedFeatureList*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_supported_feature_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSupportedFeatureList(p_args[0].decode(RID)).encode(r_ret)

method fontSupportedVariationList*(self: TextServerExtension; fontRid: RID): Dictionary {.base.} = (discard)
proc registerVirtual_fontSupportedVariationList*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_supported_variation_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSupportedVariationList(p_args[0].decode(RID)).encode(r_ret)

method fontGetGlobalOversampling*(self: TextServerExtension): float64 {.base.} = (discard)
proc registerVirtual_fontGetGlobalOversampling*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_get_global_oversampling"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontGetGlobalOversampling().encode(r_ret)

method fontSetGlobalOversampling*(self: TextServerExtension; oversampling: float64): void {.base.} = (discard)
proc registerVirtual_fontSetGlobalOversampling*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_font_set_global_oversampling"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).fontSetGlobalOversampling(p_args[0].decode(float64))

method getHexCodeBoxSize*(self: TextServerExtension; size: int64; index: int64): Vector2 {.base.} = (discard)
proc registerVirtual_getHexCodeBoxSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_hex_code_box_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).getHexCodeBoxSize(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)

method drawHexCodeBox*(self: TextServerExtension; canvas: RID; size: int64; pos: Vector2; index: int64; color: Color): void {.base.} = (discard)
proc registerVirtual_drawHexCodeBox*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw_hex_code_box"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).drawHexCodeBox(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(Vector2), p_args[3].decode(int64), p_args[4].decode(Color))

method createShapedText*(self: TextServerExtension; direction: TextServer_Direction; orientation: TextServer_Orientation): RID {.base.} = (discard)
proc registerVirtual_createShapedText*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_shaped_text"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).createShapedText(p_args[0].decode(TextServer_Direction), p_args[1].decode(TextServer_Orientation)).encode(r_ret)

method shapedTextClear*(self: TextServerExtension; shaped: RID): void {.base.} = (discard)
proc registerVirtual_shapedTextClear*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_clear"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextClear(p_args[0].decode(RID))

method shapedTextSetDirection*(self: TextServerExtension; shaped: RID; direction: TextServer_Direction): void {.base.} = (discard)
proc registerVirtual_shapedTextSetDirection*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_set_direction"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSetDirection(p_args[0].decode(RID), p_args[1].decode(TextServer_Direction))

method shapedTextGetDirection*(self: TextServerExtension; shaped: RID): TextServer_Direction {.base.} = (discard)
proc registerVirtual_shapedTextGetDirection*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_direction"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetDirection(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetInferredDirection*(self: TextServerExtension; shaped: RID): TextServer_Direction {.base.} = (discard)
proc registerVirtual_shapedTextGetInferredDirection*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_inferred_direction"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetInferredDirection(p_args[0].decode(RID)).encode(r_ret)

method shapedTextSetBidiOverride*(self: TextServerExtension; shaped: RID; override: Array): void {.base.} = (discard)
proc registerVirtual_shapedTextSetBidiOverride*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_set_bidi_override"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSetBidiOverride(p_args[0].decode(RID), p_args[1].decode(Array))

method shapedTextSetCustomPunctuation*(self: TextServerExtension; shaped: RID; punct: String): void {.base.} = (discard)
proc registerVirtual_shapedTextSetCustomPunctuation*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_set_custom_punctuation"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSetCustomPunctuation(p_args[0].decode(RID), p_args[1].decode(String))

method shapedTextGetCustomPunctuation*(self: TextServerExtension; shaped: RID): String {.base.} = (discard)
proc registerVirtual_shapedTextGetCustomPunctuation*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_custom_punctuation"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetCustomPunctuation(p_args[0].decode(RID)).encode(r_ret)

method shapedTextSetCustomEllipsis*(self: TextServerExtension; shaped: RID; char: int64): void {.base.} = (discard)
proc registerVirtual_shapedTextSetCustomEllipsis*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_set_custom_ellipsis"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSetCustomEllipsis(p_args[0].decode(RID), p_args[1].decode(int64))

method shapedTextGetCustomEllipsis*(self: TextServerExtension; shaped: RID): int64 {.base.} = (discard)
proc registerVirtual_shapedTextGetCustomEllipsis*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_custom_ellipsis"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetCustomEllipsis(p_args[0].decode(RID)).encode(r_ret)

method shapedTextSetOrientation*(self: TextServerExtension; shaped: RID; orientation: TextServer_Orientation): void {.base.} = (discard)
proc registerVirtual_shapedTextSetOrientation*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_set_orientation"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSetOrientation(p_args[0].decode(RID), p_args[1].decode(TextServer_Orientation))

method shapedTextGetOrientation*(self: TextServerExtension; shaped: RID): TextServer_Orientation {.base.} = (discard)
proc registerVirtual_shapedTextGetOrientation*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_orientation"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetOrientation(p_args[0].decode(RID)).encode(r_ret)

method shapedTextSetPreserveInvalid*(self: TextServerExtension; shaped: RID; enabled: bool): void {.base.} = (discard)
proc registerVirtual_shapedTextSetPreserveInvalid*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_set_preserve_invalid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSetPreserveInvalid(p_args[0].decode(RID), p_args[1].decode(bool))

method shapedTextGetPreserveInvalid*(self: TextServerExtension; shaped: RID): bool {.base.} = (discard)
proc registerVirtual_shapedTextGetPreserveInvalid*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_preserve_invalid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetPreserveInvalid(p_args[0].decode(RID)).encode(r_ret)

method shapedTextSetPreserveControl*(self: TextServerExtension; shaped: RID; enabled: bool): void {.base.} = (discard)
proc registerVirtual_shapedTextSetPreserveControl*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_set_preserve_control"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSetPreserveControl(p_args[0].decode(RID), p_args[1].decode(bool))

method shapedTextGetPreserveControl*(self: TextServerExtension; shaped: RID): bool {.base.} = (discard)
proc registerVirtual_shapedTextGetPreserveControl*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_preserve_control"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetPreserveControl(p_args[0].decode(RID)).encode(r_ret)

method shapedTextSetSpacing*(self: TextServerExtension; shaped: RID; spacing: TextServer_SpacingType; value: int64): void {.base.} = (discard)
proc registerVirtual_shapedTextSetSpacing*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_set_spacing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSetSpacing(p_args[0].decode(RID), p_args[1].decode(TextServer_SpacingType), p_args[2].decode(int64))

method shapedTextGetSpacing*(self: TextServerExtension; shaped: RID; spacing: TextServer_SpacingType): int64 {.base.} = (discard)
proc registerVirtual_shapedTextGetSpacing*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_spacing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetSpacing(p_args[0].decode(RID), p_args[1].decode(TextServer_SpacingType)).encode(r_ret)

method shapedTextAddString*(self: TextServerExtension; shaped: RID; text: String; fonts: TypedArray[RID]; size: int64; opentypeFeatures: Dictionary; language: String; meta: Variant): bool {.base.} = (discard)
proc registerVirtual_shapedTextAddString*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_add_string"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextAddString(p_args[0].decode(RID), p_args[1].decode(String), p_args[2].decode(TypedArray[RID]), p_args[3].decode(int64), p_args[4].decode(Dictionary), p_args[5].decode(String), p_args[6].decode(Variant)).encode(r_ret)

method shapedTextAddObject*(self: TextServerExtension; shaped: RID; key: Variant; size: Vector2; inlineAlign: InlineAlignment; length: int64; baseline: float64): bool {.base.} = (discard)
proc registerVirtual_shapedTextAddObject*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_add_object"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextAddObject(p_args[0].decode(RID), p_args[1].decode(Variant), p_args[2].decode(Vector2), p_args[3].decode(InlineAlignment), p_args[4].decode(int64), p_args[5].decode(float64)).encode(r_ret)

method shapedTextResizeObject*(self: TextServerExtension; shaped: RID; key: Variant; size: Vector2; inlineAlign: InlineAlignment; baseline: float64): bool {.base.} = (discard)
proc registerVirtual_shapedTextResizeObject*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_resize_object"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextResizeObject(p_args[0].decode(RID), p_args[1].decode(Variant), p_args[2].decode(Vector2), p_args[3].decode(InlineAlignment), p_args[4].decode(float64)).encode(r_ret)

method shapedGetSpanCount*(self: TextServerExtension; shaped: RID): int64 {.base.} = (discard)
proc registerVirtual_shapedGetSpanCount*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_get_span_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedGetSpanCount(p_args[0].decode(RID)).encode(r_ret)

method shapedGetSpanMeta*(self: TextServerExtension; shaped: RID; index: int64): Variant {.base.} = (discard)
proc registerVirtual_shapedGetSpanMeta*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_get_span_meta"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedGetSpanMeta(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method shapedGetSpanEmbeddedObject*(self: TextServerExtension; shaped: RID; index: int64): Variant {.base.} = (discard)
proc registerVirtual_shapedGetSpanEmbeddedObject*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_get_span_embedded_object"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedGetSpanEmbeddedObject(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method shapedSetSpanUpdateFont*(self: TextServerExtension; shaped: RID; index: int64; fonts: TypedArray[RID]; size: int64; opentypeFeatures: Dictionary): void {.base.} = (discard)
proc registerVirtual_shapedSetSpanUpdateFont*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_set_span_update_font"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedSetSpanUpdateFont(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(TypedArray[RID]), p_args[3].decode(int64), p_args[4].decode(Dictionary))

method shapedTextSubstr*(self: TextServerExtension; shaped: RID; start: int64; length: int64): RID {.base.} = (discard)
proc registerVirtual_shapedTextSubstr*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_substr"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSubstr(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(int64)).encode(r_ret)

method shapedTextGetParent*(self: TextServerExtension; shaped: RID): RID {.base.} = (discard)
proc registerVirtual_shapedTextGetParent*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_parent"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetParent(p_args[0].decode(RID)).encode(r_ret)

method shapedTextFitToWidth*(self: TextServerExtension; shaped: RID; width: float64; justificationFlags: set[TextServer_JustificationFlag]): float64 {.base.} = (discard)
proc registerVirtual_shapedTextFitToWidth*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_fit_to_width"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextFitToWidth(p_args[0].decode(RID), p_args[1].decode(float64), p_args[2].decode(set[TextServer_JustificationFlag])).encode(r_ret)

method shapedTextTabAlign*(self: TextServerExtension; shaped: RID; tabStops: PackedFloat32Array): float64 {.base.} = (discard)
proc registerVirtual_shapedTextTabAlign*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_tab_align"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextTabAlign(p_args[0].decode(RID), p_args[1].decode(PackedFloat32Array)).encode(r_ret)

method shapedTextShape*(self: TextServerExtension; shaped: RID): bool {.base.} = (discard)
proc registerVirtual_shapedTextShape*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextShape(p_args[0].decode(RID)).encode(r_ret)

method shapedTextUpdateBreaks*(self: TextServerExtension; shaped: RID): bool {.base.} = (discard)
proc registerVirtual_shapedTextUpdateBreaks*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_update_breaks"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextUpdateBreaks(p_args[0].decode(RID)).encode(r_ret)

method shapedTextUpdateJustificationOps*(self: TextServerExtension; shaped: RID): bool {.base.} = (discard)
proc registerVirtual_shapedTextUpdateJustificationOps*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_update_justification_ops"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextUpdateJustificationOps(p_args[0].decode(RID)).encode(r_ret)

method shapedTextIsReady*(self: TextServerExtension; shaped: RID): bool {.base.} = (discard)
proc registerVirtual_shapedTextIsReady*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_is_ready"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextIsReady(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetGlyphs*(self: TextServerExtension; shaped: RID): ptr Glyph {.base.} = (discard)
proc registerVirtual_shapedTextGetGlyphs*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_glyphs"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetGlyphs(p_args[0].decode(RID)).encode(r_ret)

method shapedTextSortLogical*(self: TextServerExtension; shaped: RID): ptr Glyph {.base.} = (discard)
proc registerVirtual_shapedTextSortLogical*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_sort_logical"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextSortLogical(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetGlyphCount*(self: TextServerExtension; shaped: RID): int64 {.base.} = (discard)
proc registerVirtual_shapedTextGetGlyphCount*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_glyph_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetGlyphCount(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetRange*(self: TextServerExtension; shaped: RID): Vector2i {.base.} = (discard)
proc registerVirtual_shapedTextGetRange*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_range"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetRange(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetLineBreaksAdv*(self: TextServerExtension; shaped: RID; width: PackedFloat32Array; start: int64; once: bool; breakFlags: set[TextServer_LineBreakFlag]): PackedInt32Array {.base.} = (discard)
proc registerVirtual_shapedTextGetLineBreaksAdv*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_line_breaks_adv"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetLineBreaksAdv(p_args[0].decode(RID), p_args[1].decode(PackedFloat32Array), p_args[2].decode(int64), p_args[3].decode(bool), p_args[4].decode(set[TextServer_LineBreakFlag])).encode(r_ret)

method shapedTextGetLineBreaks*(self: TextServerExtension; shaped: RID; width: float64; start: int64; breakFlags: set[TextServer_LineBreakFlag]): PackedInt32Array {.base.} = (discard)
proc registerVirtual_shapedTextGetLineBreaks*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_line_breaks"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetLineBreaks(p_args[0].decode(RID), p_args[1].decode(float64), p_args[2].decode(int64), p_args[3].decode(set[TextServer_LineBreakFlag])).encode(r_ret)

method shapedTextGetWordBreaks*(self: TextServerExtension; shaped: RID; graphemeFlags: set[TextServer_GraphemeFlag]; skipGraphemeFlags: set[TextServer_GraphemeFlag]): PackedInt32Array {.base.} = (discard)
proc registerVirtual_shapedTextGetWordBreaks*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_word_breaks"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetWordBreaks(p_args[0].decode(RID), p_args[1].decode(set[TextServer_GraphemeFlag]), p_args[2].decode(set[TextServer_GraphemeFlag])).encode(r_ret)

method shapedTextGetTrimPos*(self: TextServerExtension; shaped: RID): int64 {.base.} = (discard)
proc registerVirtual_shapedTextGetTrimPos*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_trim_pos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetTrimPos(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetEllipsisPos*(self: TextServerExtension; shaped: RID): int64 {.base.} = (discard)
proc registerVirtual_shapedTextGetEllipsisPos*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_ellipsis_pos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetEllipsisPos(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetEllipsisGlyphCount*(self: TextServerExtension; shaped: RID): int64 {.base.} = (discard)
proc registerVirtual_shapedTextGetEllipsisGlyphCount*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_ellipsis_glyph_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetEllipsisGlyphCount(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetEllipsisGlyphs*(self: TextServerExtension; shaped: RID): ptr Glyph {.base.} = (discard)
proc registerVirtual_shapedTextGetEllipsisGlyphs*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_ellipsis_glyphs"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetEllipsisGlyphs(p_args[0].decode(RID)).encode(r_ret)

method shapedTextOverrunTrimToWidth*(self: TextServerExtension; shaped: RID; width: float64; trimFlags: set[TextServer_TextOverrunFlag]): void {.base.} = (discard)
proc registerVirtual_shapedTextOverrunTrimToWidth*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_overrun_trim_to_width"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextOverrunTrimToWidth(p_args[0].decode(RID), p_args[1].decode(float64), p_args[2].decode(set[TextServer_TextOverrunFlag]))

method shapedTextGetObjects*(self: TextServerExtension; shaped: RID): Array {.base.} = (discard)
proc registerVirtual_shapedTextGetObjects*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_objects"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetObjects(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetObjectRect*(self: TextServerExtension; shaped: RID; key: Variant): Rect2 {.base.} = (discard)
proc registerVirtual_shapedTextGetObjectRect*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_object_rect"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetObjectRect(p_args[0].decode(RID), p_args[1].decode(Variant)).encode(r_ret)

method shapedTextGetObjectRange*(self: TextServerExtension; shaped: RID; key: Variant): Vector2i {.base.} = (discard)
proc registerVirtual_shapedTextGetObjectRange*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_object_range"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetObjectRange(p_args[0].decode(RID), p_args[1].decode(Variant)).encode(r_ret)

method shapedTextGetObjectGlyph*(self: TextServerExtension; shaped: RID; key: Variant): int64 {.base.} = (discard)
proc registerVirtual_shapedTextGetObjectGlyph*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_object_glyph"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetObjectGlyph(p_args[0].decode(RID), p_args[1].decode(Variant)).encode(r_ret)

method shapedTextGetSize*(self: TextServerExtension; shaped: RID): Vector2 {.base.} = (discard)
proc registerVirtual_shapedTextGetSize*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetSize(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetAscent*(self: TextServerExtension; shaped: RID): float64 {.base.} = (discard)
proc registerVirtual_shapedTextGetAscent*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_ascent"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetAscent(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetDescent*(self: TextServerExtension; shaped: RID): float64 {.base.} = (discard)
proc registerVirtual_shapedTextGetDescent*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_descent"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetDescent(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetWidth*(self: TextServerExtension; shaped: RID): float64 {.base.} = (discard)
proc registerVirtual_shapedTextGetWidth*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_width"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetWidth(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetUnderlinePosition*(self: TextServerExtension; shaped: RID): float64 {.base.} = (discard)
proc registerVirtual_shapedTextGetUnderlinePosition*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_underline_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetUnderlinePosition(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetUnderlineThickness*(self: TextServerExtension; shaped: RID): float64 {.base.} = (discard)
proc registerVirtual_shapedTextGetUnderlineThickness*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_underline_thickness"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetUnderlineThickness(p_args[0].decode(RID)).encode(r_ret)

method shapedTextGetDominantDirectionInRange*(self: TextServerExtension; shaped: RID; start: int64; `end`: int64): int64 {.base.} = (discard)
proc registerVirtual_shapedTextGetDominantDirectionInRange*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_dominant_direction_in_range"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetDominantDirectionInRange(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(int64)).encode(r_ret)

method shapedTextGetCarets*(self: TextServerExtension; shaped: RID; position: int64; caret: ptr CaretInfo): void {.base.} = (discard)
proc registerVirtual_shapedTextGetCarets*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_carets"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetCarets(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(ptr CaretInfo))

method shapedTextGetSelection*(self: TextServerExtension; shaped: RID; start: int64; `end`: int64): PackedVector2Array {.base.} = (discard)
proc registerVirtual_shapedTextGetSelection*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_selection"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetSelection(p_args[0].decode(RID), p_args[1].decode(int64), p_args[2].decode(int64)).encode(r_ret)

method shapedTextHitTestGrapheme*(self: TextServerExtension; shaped: RID; coord: float64): int64 {.base.} = (discard)
proc registerVirtual_shapedTextHitTestGrapheme*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_hit_test_grapheme"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextHitTestGrapheme(p_args[0].decode(RID), p_args[1].decode(float64)).encode(r_ret)

method shapedTextHitTestPosition*(self: TextServerExtension; shaped: RID; coord: float64): int64 {.base.} = (discard)
proc registerVirtual_shapedTextHitTestPosition*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_hit_test_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextHitTestPosition(p_args[0].decode(RID), p_args[1].decode(float64)).encode(r_ret)

method shapedTextDraw*(self: TextServerExtension; shaped: RID; canvas: RID; pos: Vector2; clipL: float64; clipR: float64; color: Color): void {.base.} = (discard)
proc registerVirtual_shapedTextDraw*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_draw"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextDraw(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Vector2), p_args[3].decode(float64), p_args[4].decode(float64), p_args[5].decode(Color))

method shapedTextDrawOutline*(self: TextServerExtension; shaped: RID; canvas: RID; pos: Vector2; clipL: float64; clipR: float64; outlineSize: int64; color: Color): void {.base.} = (discard)
proc registerVirtual_shapedTextDrawOutline*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_draw_outline"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextDrawOutline(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Vector2), p_args[3].decode(float64), p_args[4].decode(float64), p_args[5].decode(int64), p_args[6].decode(Color))

method shapedTextGetGraphemeBounds*(self: TextServerExtension; shaped: RID; pos: int64): Vector2 {.base.} = (discard)
proc registerVirtual_shapedTextGetGraphemeBounds*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_grapheme_bounds"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetGraphemeBounds(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method shapedTextNextGraphemePos*(self: TextServerExtension; shaped: RID; pos: int64): int64 {.base.} = (discard)
proc registerVirtual_shapedTextNextGraphemePos*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_next_grapheme_pos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextNextGraphemePos(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method shapedTextPrevGraphemePos*(self: TextServerExtension; shaped: RID; pos: int64): int64 {.base.} = (discard)
proc registerVirtual_shapedTextPrevGraphemePos*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_prev_grapheme_pos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextPrevGraphemePos(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method shapedTextGetCharacterBreaks*(self: TextServerExtension; shaped: RID): PackedInt32Array {.base.} = (discard)
proc registerVirtual_shapedTextGetCharacterBreaks*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_get_character_breaks"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextGetCharacterBreaks(p_args[0].decode(RID)).encode(r_ret)

method shapedTextNextCharacterPos*(self: TextServerExtension; shaped: RID; pos: int64): int64 {.base.} = (discard)
proc registerVirtual_shapedTextNextCharacterPos*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_next_character_pos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextNextCharacterPos(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method shapedTextPrevCharacterPos*(self: TextServerExtension; shaped: RID; pos: int64): int64 {.base.} = (discard)
proc registerVirtual_shapedTextPrevCharacterPos*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_prev_character_pos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextPrevCharacterPos(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method shapedTextClosestCharacterPos*(self: TextServerExtension; shaped: RID; pos: int64): int64 {.base.} = (discard)
proc registerVirtual_shapedTextClosestCharacterPos*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shaped_text_closest_character_pos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).shapedTextClosestCharacterPos(p_args[0].decode(RID), p_args[1].decode(int64)).encode(r_ret)

method formatNumber*(self: TextServerExtension; number: String; language: String): String {.base.} = (discard)
proc registerVirtual_formatNumber*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_format_number"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).formatNumber(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method parseNumber*(self: TextServerExtension; number: String; language: String): String {.base.} = (discard)
proc registerVirtual_parseNumber*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_number"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).parseNumber(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method percentSign*(self: TextServerExtension; language: String): String {.base.} = (discard)
proc registerVirtual_percentSign*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_percent_sign"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).percentSign(p_args[0].decode(String)).encode(r_ret)

method stripDiacritics*(self: TextServerExtension; string: String): String {.base.} = (discard)
proc registerVirtual_stripDiacritics*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_strip_diacritics"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).stripDiacritics(p_args[0].decode(String)).encode(r_ret)

method isValidIdentifier*(self: TextServerExtension; string: String): bool {.base.} = (discard)
proc registerVirtual_isValidIdentifier*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_valid_identifier"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).isValidIdentifier(p_args[0].decode(String)).encode(r_ret)

method isValidLetter*(self: TextServerExtension; unicode: uint64): bool {.base.} = (discard)
proc registerVirtual_isValidLetter*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_valid_letter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).isValidLetter(p_args[0].decode(uint64)).encode(r_ret)

method stringGetWordBreaks*(self: TextServerExtension; string: String; language: String; charsPerLine: int64): PackedInt32Array {.base.} = (discard)
proc registerVirtual_stringGetWordBreaks*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_string_get_word_breaks"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).stringGetWordBreaks(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(int64)).encode(r_ret)

method stringGetCharacterBreaks*(self: TextServerExtension; string: String; language: String): PackedInt32Array {.base.} = (discard)
proc registerVirtual_stringGetCharacterBreaks*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_string_get_character_breaks"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).stringGetCharacterBreaks(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method isConfusable*(self: TextServerExtension; string: String; dict: PackedStringArray): int64 {.base.} = (discard)
proc registerVirtual_isConfusable*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_confusable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).isConfusable(p_args[0].decode(String), p_args[1].decode(PackedStringArray)).encode(r_ret)

method spoofCheck*(self: TextServerExtension; string: String): bool {.base.} = (discard)
proc registerVirtual_spoofCheck*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_spoof_check"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).spoofCheck(p_args[0].decode(String)).encode(r_ret)

method stringToUpper*(self: TextServerExtension; string: String; language: String): String {.base.} = (discard)
proc registerVirtual_stringToUpper*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_string_to_upper"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).stringToUpper(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method stringToLower*(self: TextServerExtension; string: String; language: String): String {.base.} = (discard)
proc registerVirtual_stringToLower*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_string_to_lower"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).stringToLower(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method stringToTitle*(self: TextServerExtension; string: String; language: String): String {.base.} = (discard)
proc registerVirtual_stringToTitle*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_string_to_title"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).stringToTitle(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method parseStructuredText*(self: TextServerExtension; parserType: TextServer_StructuredTextParser; args: Array; text: String): TypedArray[Vector3i] {.base.} = (discard)
proc registerVirtual_parseStructuredText*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_structured_text"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).parseStructuredText(p_args[0].decode(TextServer_StructuredTextParser), p_args[1].decode(Array), p_args[2].decode(String)).encode(r_ret)

method cleanup*(self: TextServerExtension): void {.base.} = (discard)
proc registerVirtual_cleanup*[T: TextServerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_cleanup"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextServerExtension](p_instance).cleanup()
