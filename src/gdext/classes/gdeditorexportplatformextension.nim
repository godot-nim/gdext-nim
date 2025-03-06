{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatform; export gdeditorexportplatform

method getPresetFeatures*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset): PackedStringArray {.base.} = (discard)
proc getPresetFeatures(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getPresetFeatures(p_args[0].decode(gdref EditorExportPreset)).encode(r_ret)
template getPresetFeatures_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getPresetFeatures

method isExecutable*(self: EditorExportPlatformExtension; path: String): bool {.base.} = (discard)
proc isExecutable(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).isExecutable(p_args[0].decode(String)).encode(r_ret)
template isExecutable_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = isExecutable

method getExportOptions*(self: EditorExportPlatformExtension): TypedArray[Dictionary] {.base.} = (discard)
proc getExportOptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getExportOptions().encode(r_ret)
template getExportOptions_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getExportOptions

method shouldUpdateExportOptions*(self: EditorExportPlatformExtension): bool {.base.} = (discard)
proc shouldUpdateExportOptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).shouldUpdateExportOptions().encode(r_ret)
template shouldUpdateExportOptions_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = shouldUpdateExportOptions

method getExportOptionVisibility*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; option: String): bool {.base.} = (discard)
proc getExportOptionVisibility(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getExportOptionVisibility(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(String)).encode(r_ret)
template getExportOptionVisibility_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getExportOptionVisibility

method getExportOptionWarning*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; option: StringName): String {.base.} = (discard)
proc getExportOptionWarning(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getExportOptionWarning(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(StringName)).encode(r_ret)
template getExportOptionWarning_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getExportOptionWarning

method getOsName*(self: EditorExportPlatformExtension): String {.base.} = (discard)
proc getOsName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getOsName().encode(r_ret)
template getOsName_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getOsName

method getName*(self: EditorExportPlatformExtension): String {.base.} = (discard)
proc getName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getName().encode(r_ret)
template getName_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getName

method getLogo*(self: EditorExportPlatformExtension): gdref Texture2D {.base.} = (discard)
proc getLogo(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getLogo().encode(r_ret)
template getLogo_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getLogo

method pollExport*(self: EditorExportPlatformExtension): bool {.base.} = (discard)
proc pollExport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).pollExport().encode(r_ret)
template pollExport_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = pollExport

method getOptionsCount*(self: EditorExportPlatformExtension): int32 {.base.} = (discard)
proc getOptionsCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getOptionsCount().encode(r_ret)
template getOptionsCount_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getOptionsCount

method getOptionsTooltip*(self: EditorExportPlatformExtension): String {.base.} = (discard)
proc getOptionsTooltip(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getOptionsTooltip().encode(r_ret)
template getOptionsTooltip_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getOptionsTooltip

method getOptionIcon*(self: EditorExportPlatformExtension; device: int32): gdref ImageTexture {.base.} = (discard)
proc getOptionIcon(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getOptionIcon(p_args[0].decode(int32)).encode(r_ret)
template getOptionIcon_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getOptionIcon

method getOptionLabel*(self: EditorExportPlatformExtension; device: int32): String {.base.} = (discard)
proc getOptionLabel(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getOptionLabel(p_args[0].decode(int32)).encode(r_ret)
template getOptionLabel_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getOptionLabel

method getOptionTooltip*(self: EditorExportPlatformExtension; device: int32): String {.base.} = (discard)
proc getOptionTooltip(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getOptionTooltip(p_args[0].decode(int32)).encode(r_ret)
template getOptionTooltip_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getOptionTooltip

method getDeviceArchitecture*(self: EditorExportPlatformExtension; device: int32): String {.base.} = (discard)
proc getDeviceArchitecture(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getDeviceArchitecture(p_args[0].decode(int32)).encode(r_ret)
template getDeviceArchitecture_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getDeviceArchitecture

method cleanup*(self: EditorExportPlatformExtension): void {.base.} = (discard)
proc cleanup(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).cleanup()
template cleanup_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = cleanup

method run*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; device: int32; debugFlags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc run(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).run(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(int32), p_args[2].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)
template run_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = run

method getRunIcon*(self: EditorExportPlatformExtension): gdref Texture2D {.base.} = (discard)
proc getRunIcon(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getRunIcon().encode(r_ret)
template getRunIcon_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getRunIcon

method canExport*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool): bool {.base.} = (discard)
proc canExport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).canExport(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool)).encode(r_ret)
template canExport_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = canExport

method hasValidExportConfiguration*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool): bool {.base.} = (discard)
proc hasValidExportConfiguration(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).hasValidExportConfiguration(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool)).encode(r_ret)
template hasValidExportConfiguration_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = hasValidExportConfiguration

method hasValidProjectConfiguration*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset): bool {.base.} = (discard)
proc hasValidProjectConfiguration(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).hasValidProjectConfiguration(p_args[0].decode(gdref EditorExportPreset)).encode(r_ret)
template hasValidProjectConfiguration_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = hasValidProjectConfiguration

method getBinaryExtensions*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset): PackedStringArray {.base.} = (discard)
proc getBinaryExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getBinaryExtensions(p_args[0].decode(gdref EditorExportPreset)).encode(r_ret)
template getBinaryExtensions_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getBinaryExtensions

method exportProject*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc exportProject(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).exportProject(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)
template exportProject_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = exportProject

method exportPack*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc exportPack(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).exportPack(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)
template exportPack_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = exportPack

method exportZip*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc exportZip(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).exportZip(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)
template exportZip_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = exportZip

method exportPackPatch*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; patches: PackedStringArray; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc exportPackPatch(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).exportPackPatch(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(PackedStringArray), p_args[4].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)
template exportPackPatch_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = exportPackPatch

method exportZipPatch*(self: EditorExportPlatformExtension; preset: gdref EditorExportPreset; debug: bool; path: String; patches: PackedStringArray; flags: set[EditorExportPlatform_DebugFlags]): Error {.base.} = (discard)
proc exportZipPatch(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).exportZipPatch(p_args[0].decode(gdref EditorExportPreset), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(PackedStringArray), p_args[4].decode(set[EditorExportPlatform_DebugFlags])).encode(r_ret)
template exportZipPatch_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = exportZipPatch

method getPlatformFeatures*(self: EditorExportPlatformExtension): PackedStringArray {.base.} = (discard)
proc getPlatformFeatures(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getPlatformFeatures().encode(r_ret)
template getPlatformFeatures_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getPlatformFeatures

method getDebugProtocol*(self: EditorExportPlatformExtension): String {.base.} = (discard)
proc getDebugProtocol(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlatformExtension](p_instance).getDebugProtocol().encode(r_ret)
template getDebugProtocol_bind*(_: typedesc[EditorExportPlatformExtension]): ClassCallVirtual = getDebugProtocol

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

const EditorExportPlatformExtension_vmap =
  EditorExportPlatform.vmap.concat toTable {
    "getpresetfeatures" : "_get_preset_features",
    "isexecutable" : "_is_executable",
    "getexportoptions" : "_get_export_options",
    "shouldupdateexportoptions" : "_should_update_export_options",
    "getexportoptionvisibility" : "_get_export_option_visibility",
    "getexportoptionwarning" : "_get_export_option_warning",
    "getosname" : "_get_os_name",
    "getname" : "_get_name",
    "getlogo" : "_get_logo",
    "pollexport" : "_poll_export",
    "getoptionscount" : "_get_options_count",
    "getoptionstooltip" : "_get_options_tooltip",
    "getoptionicon" : "_get_option_icon",
    "getoptionlabel" : "_get_option_label",
    "getoptiontooltip" : "_get_option_tooltip",
    "getdevicearchitecture" : "_get_device_architecture",
    "cleanup" : "_cleanup",
    "run" : "_run",
    "getrunicon" : "_get_run_icon",
    "canexport" : "_can_export",
    "hasvalidexportconfiguration" : "_has_valid_export_configuration",
    "hasvalidprojectconfiguration" : "_has_valid_project_configuration",
    "getbinaryextensions" : "_get_binary_extensions",
    "exportproject" : "_export_project",
    "exportpack" : "_export_pack",
    "exportzip" : "_export_zip",
    "exportpackpatch" : "_export_pack_patch",
    "exportzippatch" : "_export_zip_patch",
    "getplatformfeatures" : "_get_platform_features",
    "getdebugprotocol" : "_get_debug_protocol",
    }
template vmap*(_: typedesc[EditorExportPlatformExtension]): Table[string, string] = EditorExportPlatformExtension_vmap