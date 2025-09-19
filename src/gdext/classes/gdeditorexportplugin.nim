{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorExportPlugin, RefCounted)

method exportFile*(self: EditorExportPlugin; path: String; `type`: String; features: PackedStringArray): void {.base.} = (discard)
proc registerVirtual_exportFile*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_file"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).exportFile(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(PackedStringArray))

method exportBegin*(self: EditorExportPlugin; features: PackedStringArray; isDebug: bool; path: String; flags: uint32): void {.base.} = (discard)
proc registerVirtual_exportBegin*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_begin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).exportBegin(p_args[0].decode(PackedStringArray), p_args[1].decode(bool), p_args[2].decode(String), p_args[3].decode(uint32))

method exportEnd*(self: EditorExportPlugin): void {.base.} = (discard)
proc registerVirtual_exportEnd*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_end"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).exportEnd()

method beginCustomizeResources*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; features: PackedStringArray): bool {.base.} = (discard)
proc registerVirtual_beginCustomizeResources*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_begin_customize_resources"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).beginCustomizeResources(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(PackedStringArray)).encode(r_ret)

method customizeResource*(self: EditorExportPlugin; resource: gdref Resource; path: String): gdref Resource {.base.} = (discard)
proc registerVirtual_customizeResource*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_customize_resource"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).customizeResource(p_args[0].decode(gdref Resource), p_args[1].decode(String)).encode(r_ret)

method beginCustomizeScenes*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; features: PackedStringArray): bool {.base.} = (discard)
proc registerVirtual_beginCustomizeScenes*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_begin_customize_scenes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).beginCustomizeScenes(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(PackedStringArray)).encode(r_ret)

method customizeScene*(self: EditorExportPlugin; scene: Node; path: String): Node {.base.} = (discard)
proc registerVirtual_customizeScene*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_customize_scene"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).customizeScene(p_args[0].decode(Node), p_args[1].decode(String)).encode(r_ret)

method getCustomizationConfigurationHash*(self: EditorExportPlugin): uint64 {.base.} = (discard)
proc registerVirtual_getCustomizationConfigurationHash*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_customization_configuration_hash"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getCustomizationConfigurationHash().encode(r_ret)

method endCustomizeScenes*(self: EditorExportPlugin): void {.base.} = (discard)
proc registerVirtual_endCustomizeScenes*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_end_customize_scenes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).endCustomizeScenes()

method endCustomizeResources*(self: EditorExportPlugin): void {.base.} = (discard)
proc registerVirtual_endCustomizeResources*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_end_customize_resources"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).endCustomizeResources()

method getExportOptions*(self: EditorExportPlugin; platform: gdref EditorExportPlatform): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getExportOptions*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_export_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getExportOptions(p_args[0].decode(gdref EditorExportPlatform)).encode(r_ret)

method getExportOptionsOverrides*(self: EditorExportPlugin; platform: gdref EditorExportPlatform): Dictionary {.base.} = (discard)
proc registerVirtual_getExportOptionsOverrides*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_export_options_overrides"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getExportOptionsOverrides(p_args[0].decode(gdref EditorExportPlatform)).encode(r_ret)

method shouldUpdateExportOptions*(self: EditorExportPlugin; platform: gdref EditorExportPlatform): bool {.base.} = (discard)
proc registerVirtual_shouldUpdateExportOptions*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_should_update_export_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).shouldUpdateExportOptions(p_args[0].decode(gdref EditorExportPlatform)).encode(r_ret)

method getExportOptionVisibility*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; option: String): bool {.base.} = (discard)
proc registerVirtual_getExportOptionVisibility*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_export_option_visibility"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getExportOptionVisibility(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(String)).encode(r_ret)

method getExportOptionWarning*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; option: String): String {.base.} = (discard)
proc registerVirtual_getExportOptionWarning*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_export_option_warning"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getExportOptionWarning(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(String)).encode(r_ret)

method getExportFeatures*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): PackedStringArray {.base.} = (discard)
proc registerVirtual_getExportFeatures*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_export_features"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getExportFeatures(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)

method getName*(self: EditorExportPlugin): String {.base.} = (discard)
proc registerVirtual_getName*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getName().encode(r_ret)

method supportsPlatform*(self: EditorExportPlugin; platform: gdref EditorExportPlatform): bool {.base.} = (discard)
proc registerVirtual_supportsPlatform*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_supports_platform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).supportsPlatform(p_args[0].decode(gdref EditorExportPlatform)).encode(r_ret)

method getAndroidDependencies*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): PackedStringArray {.base.} = (discard)
proc registerVirtual_getAndroidDependencies*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_android_dependencies"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getAndroidDependencies(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)

method getAndroidDependenciesMavenRepos*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): PackedStringArray {.base.} = (discard)
proc registerVirtual_getAndroidDependenciesMavenRepos*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_android_dependencies_maven_repos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getAndroidDependenciesMavenRepos(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)

method getAndroidLibraries*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): PackedStringArray {.base.} = (discard)
proc registerVirtual_getAndroidLibraries*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_android_libraries"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getAndroidLibraries(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)

method getAndroidManifestActivityElementContents*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): String {.base.} = (discard)
proc registerVirtual_getAndroidManifestActivityElementContents*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_android_manifest_activity_element_contents"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getAndroidManifestActivityElementContents(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)

method getAndroidManifestApplicationElementContents*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): String {.base.} = (discard)
proc registerVirtual_getAndroidManifestApplicationElementContents*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_android_manifest_application_element_contents"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getAndroidManifestApplicationElementContents(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)

method getAndroidManifestElementContents*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; debug: bool): String {.base.} = (discard)
proc registerVirtual_getAndroidManifestElementContents*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_android_manifest_element_contents"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).getAndroidManifestElementContents(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(bool)).encode(r_ret)

method updateAndroidPrebuiltManifest*(self: EditorExportPlugin; platform: gdref EditorExportPlatform; manifestData: PackedByteArray): PackedByteArray {.base.} = (discard)
proc registerVirtual_updateAndroidPrebuiltManifest*[T: EditorExportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_update_android_prebuilt_manifest"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorExportPlugin](p_instance).updateAndroidPrebuiltManifest(p_args[0].decode(gdref EditorExportPlatform), p_args[1].decode(PackedByteArray)).encode(r_ret)

proc addSharedObject*(self: EditorExportPlugin; path: String; tags: PackedStringArray; target: String): void =
  expandMethodBind(className EditorExportPlugin, "add_shared_object", 3098291045)
  methodbind.ptrcall(self, [getPtr path, getPtr tags, getPtr target])

proc addFile*(self: EditorExportPlugin; path: String; file: PackedByteArray; remap: bool): void =
  expandMethodBind(className EditorExportPlugin, "add_file", 527928637)
  methodbind.ptrcall(self, [getPtr path, getPtr file, getPtr remap])

proc addAppleEmbeddedPlatformProjectStaticLib*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_apple_embedded_platform_project_static_lib", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addAppleEmbeddedPlatformFramework*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_apple_embedded_platform_framework", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addAppleEmbeddedPlatformEmbeddedFramework*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_apple_embedded_platform_embedded_framework", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addAppleEmbeddedPlatformPlistContent*(self: EditorExportPlugin; plistContent: String): void =
  expandMethodBind(className EditorExportPlugin, "add_apple_embedded_platform_plist_content", 83702148)
  methodbind.ptrcall(self, [getPtr plistContent])

proc addAppleEmbeddedPlatformLinkerFlags*(self: EditorExportPlugin; flags: String): void =
  expandMethodBind(className EditorExportPlugin, "add_apple_embedded_platform_linker_flags", 83702148)
  methodbind.ptrcall(self, [getPtr flags])

proc addAppleEmbeddedPlatformBundleFile*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_apple_embedded_platform_bundle_file", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addAppleEmbeddedPlatformCppCode*(self: EditorExportPlugin; code: String): void =
  expandMethodBind(className EditorExportPlugin, "add_apple_embedded_platform_cpp_code", 83702148)
  methodbind.ptrcall(self, [getPtr code])

proc addIosProjectStaticLib*(self: EditorExportPlugin; path: String): void =
  expandMethodBind(className EditorExportPlugin, "add_ios_project_static_lib", 83702148)
  methodbind.ptrcall(self, [getPtr path])

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

proc getExportPreset*(self: EditorExportPlugin): gdref EditorExportPreset =
  expandMethodBind(className EditorExportPlugin, "get_export_preset", 1610607222)
  var ret: encoded gdref EditorExportPreset
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref EditorExportPreset)

proc getExportPlatform*(self: EditorExportPlugin): gdref EditorExportPlatform =
  expandMethodBind(className EditorExportPlugin, "get_export_platform", 282254641)
  var ret: encoded gdref EditorExportPlatform
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref EditorExportPlatform)
