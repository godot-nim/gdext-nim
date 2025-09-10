{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatform; export gdeditorexportplatform
export EditorExportPlatformExtension

method getPresetFeatures*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset): PackedStringArray {.base.} = (discard)
proc registerVirtual_getPresetFeatures*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_preset_features"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getPresetFeatures(p_args[0].decode(gdref EditorExportPreset)).encode(r_ret)

method isExecutable*(self: EditorExportPlatformExtension; path: String): bool {.base.} = (discard)
proc registerVirtual_isExecutable*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_executable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).isExecutable(p_args[0].decode(String)).encode(r_ret)

method getExportOptions*(self: EditorExportPlatformExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getExportOptions*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_export_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getExportOptions().encode(r_ret)

method shouldUpdateExportOptions*(self: EditorExportPlatformExtension): bool {.base.} = (discard)
proc registerVirtual_shouldUpdateExportOptions*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_should_update_export_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).shouldUpdateExportOptions().encode(r_ret)

method getExportOptionVisibility*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; option: String): bool {.base.} = (discard)
proc registerVirtual_getExportOptionVisibility*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_export_option_visibility"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getExportOptionVisibility(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(String)).encode(r_ret)

method getExportOptionWarning*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; option: StringName): String {.base.} = (discard)
proc registerVirtual_getExportOptionWarning*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_export_option_warning"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getExportOptionWarning(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(StringName)).encode(r_ret)

method getOsName*(self: EditorExportPlatformExtension): String {.base.} = (discard)
proc registerVirtual_getOsName*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_os_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getOsName().encode(r_ret)

method getName*(self: EditorExportPlatformExtension): String {.base.} = (discard)
proc registerVirtual_getName*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getName().encode(r_ret)

method getLogo*(self: EditorExportPlatformExtension): gdref Texture2D {.base.} = (discard)
proc registerVirtual_getLogo*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_logo"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getLogo().encode(r_ret)

method pollExport*(self: EditorExportPlatformExtension): bool {.base.} = (discard)
proc registerVirtual_pollExport*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_poll_export"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).pollExport().encode(r_ret)

method getOptionsCount*(self: EditorExportPlatformExtension): int32 {.base.} = (discard)
proc registerVirtual_getOptionsCount*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_options_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getOptionsCount().encode(r_ret)

method getOptionsTooltip*(self: EditorExportPlatformExtension): String {.base.} = (discard)
proc registerVirtual_getOptionsTooltip*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_options_tooltip"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getOptionsTooltip().encode(r_ret)

method getOptionIcon*(self: EditorExportPlatformExtension; device: int32): gdref ImageTexture {.base.} = (discard)
proc registerVirtual_getOptionIcon*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_option_icon"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getOptionIcon(p_args[0].decode(int32)).encode(r_ret)

method getOptionLabel*(self: EditorExportPlatformExtension; device: int32): String {.base.} = (discard)
proc registerVirtual_getOptionLabel*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_option_label"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getOptionLabel(p_args[0].decode(int32)).encode(r_ret)

method getOptionTooltip*(self: EditorExportPlatformExtension; device: int32): String {.base.} = (discard)
proc registerVirtual_getOptionTooltip*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_option_tooltip"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getOptionTooltip(p_args[0].decode(int32)).encode(r_ret)

method getDeviceArchitecture*(self: EditorExportPlatformExtension; device: int32): String {.base.} = (discard)
proc registerVirtual_getDeviceArchitecture*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_device_architecture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getDeviceArchitecture(p_args[0].decode(int32)).encode(r_ret)

method cleanup*(self: EditorExportPlatformExtension): void {.base.} = (discard)
proc registerVirtual_cleanup*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_cleanup"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).cleanup()

method run*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; device: int32; debugFlags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc registerVirtual_run*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_run"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).run(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(int32), p_args[2].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)

method getRunIcon*(self: EditorExportPlatformExtension): gdref Texture2D {.base.} = (discard)
proc registerVirtual_getRunIcon*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_run_icon"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getRunIcon().encode(r_ret)

method canExport*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool): bool {.base.} = (discard)
proc registerVirtual_canExport*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_export"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).canExport(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool)).encode(r_ret)

method hasValidExportConfiguration*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool): bool {.base.} = (discard)
proc registerVirtual_hasValidExportConfiguration*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_valid_export_configuration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).hasValidExportConfiguration(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool)).encode(r_ret)

method hasValidProjectConfiguration*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset): bool {.base.} = (discard)
proc registerVirtual_hasValidProjectConfiguration*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_valid_project_configuration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).hasValidProjectConfiguration(p_args[0].decode(gdref EditorExportPreset)).encode(r_ret)

method getBinaryExtensions*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset): PackedStringArray {.base.} = (discard)
proc registerVirtual_getBinaryExtensions*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_binary_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getBinaryExtensions(p_args[0].decode(gdref EditorExportPreset)).encode(r_ret)

method exportProject*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc registerVirtual_exportProject*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_project"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).exportProject(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)

method exportPack*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc registerVirtual_exportPack*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_pack"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).exportPack(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)

method exportZip*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc registerVirtual_exportZip*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_zip"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).exportZip(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)

method exportPackPatch*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; patches: PackedStringArray; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc registerVirtual_exportPackPatch*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_pack_patch"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).exportPackPatch(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(PackedStringArray), p_args[4].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)

method exportZipPatch*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; patches: PackedStringArray; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc registerVirtual_exportZipPatch*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_zip_patch"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).exportZipPatch(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(PackedStringArray), p_args[4].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)

method getPlatformFeatures*(self: EditorExportPlatformExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getPlatformFeatures*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_platform_features"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getPlatformFeatures().encode(r_ret)

method getDebugProtocol*(self: EditorExportPlatformExtension): String {.base.} = (discard)
proc registerVirtual_getDebugProtocol*[T: EditorExportPlatformExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_debug_protocol"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlatformExtension](p_instance).getDebugProtocol().encode(r_ret)

proc setConfigError*(self: EditorExportPlatformExtension; errorText: String): void =
  expandMethodBind(className EditorExportPlatformExtension, "set_config_error", 3089850668)
  methodbind.ptrcall(self, [getPtr errorText])

proc getConfigError*(self: EditorExportPlatformExtension): String =
  expandMethodBind(className EditorExportPlatformExtension, "get_config_error", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setConfigMissingTemplates*(self: EditorExportPlatformExtension; missingTemplates: bool): void =
  expandMethodBind(className EditorExportPlatformExtension, "set_config_missing_templates", 1695273946)
  methodbind.ptrcall(self, [getPtr missingTemplates])

proc getConfigMissingTemplates*(self: EditorExportPlatformExtension): bool =
  expandMethodBind(className EditorExportPlatformExtension, "get_config_missing_templates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)
