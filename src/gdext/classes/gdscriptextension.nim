{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscript; export gdscript

method editorCanReloadFromFile*(self: ScriptExtension): bool {.base.} = (discard)
proc registerVirtual_editorCanReloadFromFile*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_editor_can_reload_from_file"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).editorCanReloadFromFile().encode(r_ret)

method placeholderErased*(self: ScriptExtension; placeholder: pointer): void {.base.} = (discard)
proc registerVirtual_placeholderErased*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_placeholder_erased"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).placeholderErased(p_args[0].decode(pointer))

method canInstantiate*(self: ScriptExtension): bool {.base.} = (discard)
proc registerVirtual_canInstantiate*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_can_instantiate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).canInstantiate().encode(r_ret)

method getBaseScript*(self: ScriptExtension): gdref Script {.base.} = (discard)
proc registerVirtual_getBaseScript*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_base_script"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getBaseScript().encode(r_ret)

method getGlobalName*(self: ScriptExtension): StringName {.base.} = (discard)
proc registerVirtual_getGlobalName*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_global_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getGlobalName().encode(r_ret)

method inheritsScript*(self: ScriptExtension; script: gdref Script): bool {.base.} = (discard)
proc registerVirtual_inheritsScript*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_inherits_script"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).inheritsScript(p_args[0].decode(gdref Script)).encode(r_ret)

method getInstanceBaseType*(self: ScriptExtension): StringName {.base.} = (discard)
proc registerVirtual_getInstanceBaseType*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_instance_base_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getInstanceBaseType().encode(r_ret)

method instanceCreate*(self: ScriptExtension; forObject: Object): pointer {.base.} = (discard)
proc registerVirtual_instanceCreate*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_instance_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).instanceCreate(p_args[0].decode(Object)).encode(r_ret)

method placeholderInstanceCreate*(self: ScriptExtension; forObject: Object): pointer {.base.} = (discard)
proc registerVirtual_placeholderInstanceCreate*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_placeholder_instance_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).placeholderInstanceCreate(p_args[0].decode(Object)).encode(r_ret)

method instanceHas*(self: ScriptExtension; `object`: Object): bool {.base.} = (discard)
proc registerVirtual_instanceHas*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_instance_has"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).instanceHas(p_args[0].decode(Object)).encode(r_ret)

method hasSourceCode*(self: ScriptExtension): bool {.base.} = (discard)
proc registerVirtual_hasSourceCode*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_has_source_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).hasSourceCode().encode(r_ret)

method getSourceCode*(self: ScriptExtension): String {.base.} = (discard)
proc registerVirtual_getSourceCode*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_source_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getSourceCode().encode(r_ret)

method setSourceCode*(self: ScriptExtension; code: String): void {.base.} = (discard)
proc registerVirtual_setSourceCode*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_source_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).setSourceCode(p_args[0].decode(String))

method reload*(self: ScriptExtension; keepState: bool): Error {.base.} = (discard)
proc registerVirtual_reload*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_reload"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).reload(p_args[0].decode(bool)).encode(r_ret)

method getDocClassName*(self: ScriptExtension): StringName {.base.} = (discard)
proc registerVirtual_getDocClassName*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_doc_class_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getDocClassName().encode(r_ret)

method getDocumentation*(self: ScriptExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getDocumentation*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_documentation"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getDocumentation().encode(r_ret)

method getClassIconPath*(self: ScriptExtension): String {.base.} = (discard)
proc registerVirtual_getClassIconPath*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_class_icon_path"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getClassIconPath().encode(r_ret)

method hasMethod*(self: ScriptExtension; `method`: StringName): bool {.base.} = (discard)
proc registerVirtual_hasMethod*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_has_method"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).hasMethod(p_args[0].decode(StringName)).encode(r_ret)

method hasStaticMethod*(self: ScriptExtension; `method`: StringName): bool {.base.} = (discard)
proc registerVirtual_hasStaticMethod*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_has_static_method"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).hasStaticMethod(p_args[0].decode(StringName)).encode(r_ret)

method getScriptMethodArgumentCount*(self: ScriptExtension; `method`: StringName): Variant {.base.} = (discard)
proc registerVirtual_getScriptMethodArgumentCount*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_script_method_argument_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getScriptMethodArgumentCount(p_args[0].decode(StringName)).encode(r_ret)

method getMethodInfo*(self: ScriptExtension; `method`: StringName): Dictionary {.base.} = (discard)
proc registerVirtual_getMethodInfo*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_method_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getMethodInfo(p_args[0].decode(StringName)).encode(r_ret)

method isTool*(self: ScriptExtension): bool {.base.} = (discard)
proc registerVirtual_isTool*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_tool"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).isTool().encode(r_ret)

method isValid*(self: ScriptExtension): bool {.base.} = (discard)
proc registerVirtual_isValid*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_valid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).isValid().encode(r_ret)

method isAbstract*(self: ScriptExtension): bool {.base.} = (discard)
proc registerVirtual_isAbstract*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_abstract"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).isAbstract().encode(r_ret)

method getLanguage*(self: ScriptExtension): ScriptLanguage {.base.} = (discard)
proc registerVirtual_getLanguage*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_language"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getLanguage().encode(r_ret)

method hasScriptSignal*(self: ScriptExtension; signal: StringName): bool {.base.} = (discard)
proc registerVirtual_hasScriptSignal*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_has_script_signal"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).hasScriptSignal(p_args[0].decode(StringName)).encode(r_ret)

method getScriptSignalList*(self: ScriptExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getScriptSignalList*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_script_signal_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getScriptSignalList().encode(r_ret)

method hasPropertyDefaultValue*(self: ScriptExtension; property: StringName): bool {.base.} = (discard)
proc registerVirtual_hasPropertyDefaultValue*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_has_property_default_value"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).hasPropertyDefaultValue(p_args[0].decode(StringName)).encode(r_ret)

method getPropertyDefaultValue*(self: ScriptExtension; property: StringName): Variant {.base.} = (discard)
proc registerVirtual_getPropertyDefaultValue*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_property_default_value"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getPropertyDefaultValue(p_args[0].decode(StringName)).encode(r_ret)

method updateExports*(self: ScriptExtension): void {.base.} = (discard)
proc registerVirtual_updateExports*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_update_exports"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).updateExports()

method getScriptMethodList*(self: ScriptExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getScriptMethodList*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_script_method_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getScriptMethodList().encode(r_ret)

method getScriptPropertyList*(self: ScriptExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getScriptPropertyList*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_script_property_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getScriptPropertyList().encode(r_ret)

method getMemberLine*(self: ScriptExtension; member: StringName): int32 {.base.} = (discard)
proc registerVirtual_getMemberLine*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_member_line"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getMemberLine(p_args[0].decode(StringName)).encode(r_ret)

method getConstants*(self: ScriptExtension): Dictionary {.base.} = (discard)
proc registerVirtual_getConstants*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_constants"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getConstants().encode(r_ret)

method getMembers*(self: ScriptExtension): TypedArray[StringName] {.base.} = (discard)
proc registerVirtual_getMembers*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_members"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getMembers().encode(r_ret)

method isPlaceholderFallbackEnabled*(self: ScriptExtension): bool {.base.} = (discard)
proc registerVirtual_isPlaceholderFallbackEnabled*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_placeholder_fallback_enabled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).isPlaceholderFallbackEnabled().encode(r_ret)

method getRpcConfig*(self: ScriptExtension): Variant {.base.} = (discard)
proc registerVirtual_getRpcConfig*[T: ScriptExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_rpc_config"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptExtension](p_instance).getRpcConfig().encode(r_ret)