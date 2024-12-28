{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method exportFile*(self: EditorExportPlugin; path: String; `type`: String; features: PackedStringArray): void {.base.} = (discard)
proc exportFile(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).exportFile(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(PackedStringArray))
template exportFile_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = exportFile

method exportBegin*(self: EditorExportPlugin; features: PackedStringArray; isDebug: bool; path: String; flags: uint32): void {.base.} = (discard)
proc exportBegin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).exportBegin(p_args[0].decode(PackedStringArray), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(uint32))
template exportBegin_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = exportBegin

method exportEnd*(self: EditorExportPlugin): void {.base.} = (discard)
proc exportEnd(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).exportEnd()
template exportEnd_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = exportEnd

method beginCustomizeResources*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; features: PackedStringArray): bool {.base.} = (discard)
proc beginCustomizeResources(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).beginCustomizeResources(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(PackedStringArray)).encode(r_ret)
template beginCustomizeResources_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = beginCustomizeResources

method customizeResource*(self: EditorExportPlugin; resource: gdref Resource; path: String): gdref Resource {.base.} = (discard)
proc customizeResource(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).customizeResource(p_args[0].decode(gdref Resource), p_args[1].decode(String)).encode(r_ret)
template customizeResource_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = customizeResource

method beginCustomizeScenes*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; features: PackedStringArray): bool {.base.} = (discard)
proc beginCustomizeScenes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).beginCustomizeScenes(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(PackedStringArray)).encode(r_ret)
template beginCustomizeScenes_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = beginCustomizeScenes

method customizeScene*(self: EditorExportPlugin; scene: Node; path: String): Node {.base.} = (discard)
proc customizeScene(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).customizeScene(p_args[0].decode(Node), p_args[1].decode(String)).encode(r_ret)
template customizeScene_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = customizeScene

method getCustomizationConfigurationHash*(self: EditorExportPlugin): uint64 {.base.} = (discard)
proc getCustomizationConfigurationHash(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getCustomizationConfigurationHash().encode(r_ret)
template getCustomizationConfigurationHash_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getCustomizationConfigurationHash

method endCustomizeScenes*(self: EditorExportPlugin): void {.base.} = (discard)
proc endCustomizeScenes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).endCustomizeScenes()
template endCustomizeScenes_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = endCustomizeScenes

method endCustomizeResources*(self: EditorExportPlugin): void {.base.} = (discard)
proc endCustomizeResources(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).endCustomizeResources()
template endCustomizeResources_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = endCustomizeResources

method getExportOptions*(self: EditorExportPlugin; platform: gdref EditorExportPlatform): TypedArray[Dictionary] {.base.} = (discard)
proc getExportOptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getExportOptions(p_args[0].decode(gdref EditorExportPlatform)).encode(r_ret)
template getExportOptions_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getExportOptions

method getExportOptionsOverrides*(self: EditorExportPlugin; platform: gdref EditorExportPlatform): Dictionary {.base.} = (discard)
proc getExportOptionsOverrides(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getExportOptionsOverrides(p_args[0].decode(gdref EditorExportPlatform)).encode(r_ret)
template getExportOptionsOverrides_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getExportOptionsOverrides

method shouldUpdateExportOptions*(self: EditorExportPlugin; platform: gdref EditorExportPlatform): bool {.base.} = (discard)
proc shouldUpdateExportOptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).shouldUpdateExportOptions(p_args[0].decode(gdref EditorExportPlatform)).encode(r_ret)
template shouldUpdateExportOptions_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = shouldUpdateExportOptions

method getExportOptionWarning*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; option: String): String {.base.} = (discard)
proc getExportOptionWarning(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getExportOptionWarning(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(String)).encode(r_ret)
template getExportOptionWarning_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getExportOptionWarning

method getExportFeatures*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): PackedStringArray {.base.} = (discard)
proc getExportFeatures(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getExportFeatures(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)
template getExportFeatures_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getExportFeatures

method getName*(self: EditorExportPlugin): String {.base.} = (discard)
proc getName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getName().encode(r_ret)
template getName_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getName

method supportsPlatform*(self: EditorExportPlugin; platform: gdref EditorExportPlatform): bool {.base.} = (discard)
proc supportsPlatform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).supportsPlatform(p_args[0].decode(gdref EditorExportPlatform)).encode(r_ret)
template supportsPlatform_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = supportsPlatform

method getAndroidDependencies*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): PackedStringArray {.base.} = (discard)
proc getAndroidDependencies(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getAndroidDependencies(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)
template getAndroidDependencies_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getAndroidDependencies

method getAndroidDependenciesMavenRepos*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): PackedStringArray {.base.} = (discard)
proc getAndroidDependenciesMavenRepos(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getAndroidDependenciesMavenRepos(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)
template getAndroidDependenciesMavenRepos_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getAndroidDependenciesMavenRepos

method getAndroidLibraries*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): PackedStringArray {.base.} = (discard)
proc getAndroidLibraries(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getAndroidLibraries(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)
template getAndroidLibraries_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getAndroidLibraries

method getAndroidManifestActivityElementContents*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): String {.base.} = (discard)
proc getAndroidManifestActivityElementContents(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getAndroidManifestActivityElementContents(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)
template getAndroidManifestActivityElementContents_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getAndroidManifestActivityElementContents

method getAndroidManifestApplicationElementContents*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): String {.base.} = (discard)
proc getAndroidManifestApplicationElementContents(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getAndroidManifestApplicationElementContents(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)
template getAndroidManifestApplicationElementContents_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getAndroidManifestApplicationElementContents

method getAndroidManifestElementContents*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): String {.base.} = (discard)
proc getAndroidManifestElementContents(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorExportPlugin](p_instance).getAndroidManifestElementContents(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)
template getAndroidManifestElementContents_bind*(_: typedesc[EditorExportPlugin]): ClassCallVirtual = getAndroidManifestElementContents

proc addSharedObject*(self: EditorExportPlugin; path: String; tags: PackedStringArray; target: String): void =
  expandMethodBind(className EditorExportPlugin, "add_shared_object", 3098291045)
  methodbind.ptrcall(self, [getPtr path, getPtr tags, getPtr target])

proc addIosProjectStaticLib*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_ios_project_static_lib", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addFile*(self: EditorExportPlugin; path: String; file: PackedByteArray; remap: bool): void =
  expandMethodBind(className EditorExportPlugin, "add_file", 527928637)
  methodbind.ptrcall(self, [getPtr path, getPtr file, getPtr remap])

proc addIosFramework*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_ios_framework", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addIosEmbeddedFramework*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_ios_embedded_framework", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addIosPlistContent*(self: EditorExportPlugin; plistContent: String): void =
  expandMethodBind(className EditorExportPlugin, "add_ios_plist_content", 83702148)
  methodbind.ptrcall(self, [getPtr plistContent])

proc addIosLinkerFlags*(self: EditorExportPlugin; flags: String): void =
  expandMethodBind(className EditorExportPlugin, "add_ios_linker_flags", 83702148)
  methodbind.ptrcall(self, [getPtr flags])

proc addIosBundleFile*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_ios_bundle_file", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addIosCppCode*(self: EditorExportPlugin; code: String): void =
  expandMethodBind(className EditorExportPlugin, "add_ios_cpp_code", 83702148)
  methodbind.ptrcall(self, [getPtr code])

proc addMacosPluginFile*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_macos_plugin_file", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc skip*(self: EditorExportPlugin): void =
  expandMethodBind(className EditorExportPlugin, "skip", 3218959716)
  methodbind.ptrcall(self, [])

proc getOption*(self: EditorExportPlugin; name: StringName): Variant =
  expandMethodBind(className EditorExportPlugin, "get_option", 2760726917)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Variant)

const EditorExportPlugin_vmap =
  RefCounted.vmap.concat toTable {
    "exportfile" : "_export_file",
    "exportbegin" : "_export_begin",
    "exportend" : "_export_end",
    "begincustomizeresources" : "_begin_customize_resources",
    "customizeresource" : "_customize_resource",
    "begincustomizescenes" : "_begin_customize_scenes",
    "customizescene" : "_customize_scene",
    "getcustomizationconfigurationhash" : "_get_customization_configuration_hash",
    "endcustomizescenes" : "_end_customize_scenes",
    "endcustomizeresources" : "_end_customize_resources",
    "getexportoptions" : "_get_export_options",
    "getexportoptionsoverrides" : "_get_export_options_overrides",
    "shouldupdateexportoptions" : "_should_update_export_options",
    "getexportoptionwarning" : "_get_export_option_warning",
    "getexportfeatures" : "_get_export_features",
    "getname" : "_get_name",
    "supportsplatform" : "_supports_platform",
    "getandroiddependencies" : "_get_android_dependencies",
    "getandroiddependenciesmavenrepos" : "_get_android_dependencies_maven_repos",
    "getandroidlibraries" : "_get_android_libraries",
    "getandroidmanifestactivityelementcontents" : "_get_android_manifest_activity_element_contents",
    "getandroidmanifestapplicationelementcontents" : "_get_android_manifest_application_element_contents",
    "getandroidmanifestelementcontents" : "_get_android_manifest_element_contents",
    }
template vmap*(_: typedesc[EditorExportPlugin]): Table[string, string] = EditorExportPlugin_vmap