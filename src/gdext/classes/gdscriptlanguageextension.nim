{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscriptlanguage; export gdscriptlanguage

method getName*(self: ScriptLanguageExtension): String {.base.} = (discard)
proc registerVirtual_getName*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getName().encode(r_ret)

method init*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc registerVirtual_init*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_init"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).init()

method getType*(self: ScriptLanguageExtension): String {.base.} = (discard)
proc registerVirtual_getType*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getType().encode(r_ret)

method getExtension*(self: ScriptLanguageExtension): String {.base.} = (discard)
proc registerVirtual_getExtension*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_extension"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getExtension().encode(r_ret)

method finish*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc registerVirtual_finish*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_finish"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).finish()

method getReservedWords*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getReservedWords*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_reserved_words"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getReservedWords().encode(r_ret)

method isControlFlowKeyword*(self: ScriptLanguageExtension; keyword: String): bool {.base.} = (discard)
proc registerVirtual_isControlFlowKeyword*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_control_flow_keyword"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).isControlFlowKeyword(p_args[0].decode(String)).encode(r_ret)

method getCommentDelimiters*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getCommentDelimiters*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_comment_delimiters"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getCommentDelimiters().encode(r_ret)

method getDocCommentDelimiters*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getDocCommentDelimiters*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_doc_comment_delimiters"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getDocCommentDelimiters().encode(r_ret)

method getStringDelimiters*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getStringDelimiters*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_string_delimiters"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getStringDelimiters().encode(r_ret)

method makeTemplate*(self: ScriptLanguageExtension; `template`: String; className: String; baseClassName: String): gdref Script {.base.} = (discard)
proc registerVirtual_makeTemplate*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_make_template"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).makeTemplate(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(String)).encode(r_ret)

method getBuiltInTemplates*(self: ScriptLanguageExtension; `object`: StringName): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getBuiltInTemplates*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_built_in_templates"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getBuiltInTemplates(p_args[0].decode(StringName)).encode(r_ret)

method isUsingTemplates*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc registerVirtual_isUsingTemplates*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_using_templates"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).isUsingTemplates().encode(r_ret)

method validate*(self: ScriptLanguageExtension; script: String; path: String; validateFunctions: bool; validateErrors: bool; validateWarnings: bool; validateSafeLines: bool): Dictionary {.base.} = (discard)
proc registerVirtual_validate*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_validate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).validate(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(bool), p_args[3].decode(bool), p_args[4].decode(bool), p_args[5].decode(bool)).encode(r_ret)

method validatePath*(self: ScriptLanguageExtension; path: String): String {.base.} = (discard)
proc registerVirtual_validatePath*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_validate_path"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).validatePath(p_args[0].decode(String)).encode(r_ret)

method createScript*(self: ScriptLanguageExtension): Object {.base.} = (discard)
proc registerVirtual_createScript*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_script"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).createScript().encode(r_ret)

method hasNamedClasses*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc registerVirtual_hasNamedClasses*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_named_classes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).hasNamedClasses().encode(r_ret)

method supportsBuiltinMode*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc registerVirtual_supportsBuiltinMode*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_supports_builtin_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).supportsBuiltinMode().encode(r_ret)

method supportsDocumentation*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc registerVirtual_supportsDocumentation*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_supports_documentation"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).supportsDocumentation().encode(r_ret)

method canInheritFromFile*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc registerVirtual_canInheritFromFile*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_inherit_from_file"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).canInheritFromFile().encode(r_ret)

method findFunction*(self: ScriptLanguageExtension; function: String; code: String): int32 {.base.} = (discard)
proc registerVirtual_findFunction*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_find_function"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).findFunction(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method makeFunction*(self: ScriptLanguageExtension; className: String; functionName: String; functionArgs: PackedStringArray): String {.base.} = (discard)
proc registerVirtual_makeFunction*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_make_function"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).makeFunction(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(PackedStringArray)).encode(r_ret)

method canMakeFunction*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc registerVirtual_canMakeFunction*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_make_function"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).canMakeFunction().encode(r_ret)

method openInExternalEditor*(self: ScriptLanguageExtension; script: gdref Script; line: int32; column: int32): Error {.base.} = (discard)
proc registerVirtual_openInExternalEditor*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_open_in_external_editor"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).openInExternalEditor(p_args[0].decode(gdref Script), p_args[1].decode(int32), p_args[2].decode(int32)).encode(r_ret)

method overridesExternalEditor*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc registerVirtual_overridesExternalEditor*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_overrides_external_editor"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).overridesExternalEditor().encode(r_ret)

method preferredFileNameCasing*(self: ScriptLanguageExtension): ScriptLanguage_ScriptNameCasing {.base.} = (discard)
proc registerVirtual_preferredFileNameCasing*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_preferred_file_name_casing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).preferredFileNameCasing().encode(r_ret)

method completeCode*(self: ScriptLanguageExtension; code: String; path: String; owner: Object): Dictionary {.base.} = (discard)
proc registerVirtual_completeCode*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_complete_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).completeCode(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(Object)).encode(r_ret)

method lookupCode*(self: ScriptLanguageExtension; code: String; symbol: String; path: String; owner: Object): Dictionary {.base.} = (discard)
proc registerVirtual_lookupCode*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_lookup_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).lookupCode(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(String), p_args[3].decode(Object)).encode(r_ret)

method autoIndentCode*(self: ScriptLanguageExtension; code: String; fromLine: int32; toLine: int32): String {.base.} = (discard)
proc registerVirtual_autoIndentCode*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_auto_indent_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).autoIndentCode(p_args[0].decode(String), p_args[1].decode(int32), p_args[2].decode(int32)).encode(r_ret)

method addGlobalConstant*(self: ScriptLanguageExtension; name: StringName; value: Variant): void {.base.} = (discard)
proc registerVirtual_addGlobalConstant*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_add_global_constant"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).addGlobalConstant(p_args[0].decode(StringName), p_args[1].decode(Variant))

method addNamedGlobalConstant*(self: ScriptLanguageExtension; name: StringName; value: Variant): void {.base.} = (discard)
proc registerVirtual_addNamedGlobalConstant*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_add_named_global_constant"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).addNamedGlobalConstant(p_args[0].decode(StringName), p_args[1].decode(Variant))

method removeNamedGlobalConstant*(self: ScriptLanguageExtension; name: StringName): void {.base.} = (discard)
proc registerVirtual_removeNamedGlobalConstant*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_remove_named_global_constant"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).removeNamedGlobalConstant(p_args[0].decode(StringName))

method threadEnter*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc registerVirtual_threadEnter*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_thread_enter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).threadEnter()

method threadExit*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc registerVirtual_threadExit*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_thread_exit"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).threadExit()

method debugGetError*(self: ScriptLanguageExtension): String {.base.} = (discard)
proc registerVirtual_debugGetError*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_error"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetError().encode(r_ret)

method debugGetStackLevelCount*(self: ScriptLanguageExtension): int32 {.base.} = (discard)
proc registerVirtual_debugGetStackLevelCount*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_stack_level_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelCount().encode(r_ret)

method debugGetStackLevelLine*(self: ScriptLanguageExtension; level: int32): int32 {.base.} = (discard)
proc registerVirtual_debugGetStackLevelLine*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_stack_level_line"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelLine(p_args[0].decode(int32)).encode(r_ret)

method debugGetStackLevelFunction*(self: ScriptLanguageExtension; level: int32): String {.base.} = (discard)
proc registerVirtual_debugGetStackLevelFunction*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_stack_level_function"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelFunction(p_args[0].decode(int32)).encode(r_ret)

method debugGetStackLevelSource*(self: ScriptLanguageExtension; level: int32): String {.base.} = (discard)
proc registerVirtual_debugGetStackLevelSource*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_stack_level_source"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelSource(p_args[0].decode(int32)).encode(r_ret)

method debugGetStackLevelLocals*(self: ScriptLanguageExtension; level: int32; maxSubitems: int32; maxDepth: int32): Dictionary {.base.} = (discard)
proc registerVirtual_debugGetStackLevelLocals*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_stack_level_locals"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelLocals(p_args[0].decode(int32), p_args[1].decode(int32), p_args[2].decode(int32)).encode(r_ret)

method debugGetStackLevelMembers*(self: ScriptLanguageExtension; level: int32; maxSubitems: int32; maxDepth: int32): Dictionary {.base.} = (discard)
proc registerVirtual_debugGetStackLevelMembers*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_stack_level_members"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelMembers(p_args[0].decode(int32), p_args[1].decode(int32), p_args[2].decode(int32)).encode(r_ret)

method debugGetStackLevelInstance*(self: ScriptLanguageExtension; level: int32): pointer {.base.} = (discard)
proc registerVirtual_debugGetStackLevelInstance*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_stack_level_instance"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelInstance(p_args[0].decode(int32)).encode(r_ret)

method debugGetGlobals*(self: ScriptLanguageExtension; maxSubitems: int32; maxDepth: int32): Dictionary {.base.} = (discard)
proc registerVirtual_debugGetGlobals*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_globals"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetGlobals(p_args[0].decode(int32), p_args[1].decode(int32)).encode(r_ret)

method debugParseStackLevelExpression*(self: ScriptLanguageExtension; level: int32; expression: String; maxSubitems: int32; maxDepth: int32): String {.base.} = (discard)
proc registerVirtual_debugParseStackLevelExpression*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_parse_stack_level_expression"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugParseStackLevelExpression(p_args[0].decode(int32), p_args[1].decode(String), p_args[2].decode(int32), p_args[3].decode(int32)).encode(r_ret)

method debugGetCurrentStackInfo*(self: ScriptLanguageExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_debugGetCurrentStackInfo*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_debug_get_current_stack_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).debugGetCurrentStackInfo().encode(r_ret)

method reloadAllScripts*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc registerVirtual_reloadAllScripts*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_reload_all_scripts"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).reloadAllScripts()

method reloadScripts*(self: ScriptLanguageExtension; scripts: Array; softReload: bool): void {.base.} = (discard)
proc registerVirtual_reloadScripts*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_reload_scripts"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).reloadScripts(p_args[0].decode(Array), p_args[1].decode(bool))

method reloadToolScript*(self: ScriptLanguageExtension; script: gdref Script; softReload: bool): void {.base.} = (discard)
proc registerVirtual_reloadToolScript*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_reload_tool_script"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).reloadToolScript(p_args[0].decode(gdref Script), p_args[1].decode(bool))

method getRecognizedExtensions*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getRecognizedExtensions*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_recognized_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getRecognizedExtensions().encode(r_ret)

method getPublicFunctions*(self: ScriptLanguageExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getPublicFunctions*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_public_functions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getPublicFunctions().encode(r_ret)

method getPublicConstants*(self: ScriptLanguageExtension): Dictionary {.base.} = (discard)
proc registerVirtual_getPublicConstants*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_public_constants"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getPublicConstants().encode(r_ret)

method getPublicAnnotations*(self: ScriptLanguageExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getPublicAnnotations*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_public_annotations"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getPublicAnnotations().encode(r_ret)

method profilingStart*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc registerVirtual_profilingStart*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_profiling_start"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).profilingStart()

method profilingStop*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc registerVirtual_profilingStop*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_profiling_stop"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).profilingStop()

method profilingSetSaveNativeCalls*(self: ScriptLanguageExtension; enable: bool): void {.base.} = (discard)
proc registerVirtual_profilingSetSaveNativeCalls*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_profiling_set_save_native_calls"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).profilingSetSaveNativeCalls(p_args[0].decode(bool))

method profilingGetAccumulatedData*(self: ScriptLanguageExtension; infoArray: ptr ScriptLanguageExtensionProfilingInfo; infoMax: int32): int32 {.base.} = (discard)
proc registerVirtual_profilingGetAccumulatedData*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_profiling_get_accumulated_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).profilingGetAccumulatedData(p_args[0].decode(ptr ScriptLanguageExtensionProfilingInfo), p_args[1].decode(int32)).encode(r_ret)

method profilingGetFrameData*(self: ScriptLanguageExtension; infoArray: ptr ScriptLanguageExtensionProfilingInfo; infoMax: int32): int32 {.base.} = (discard)
proc registerVirtual_profilingGetFrameData*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_profiling_get_frame_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).profilingGetFrameData(p_args[0].decode(ptr ScriptLanguageExtensionProfilingInfo), p_args[1].decode(int32)).encode(r_ret)

method frame*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc registerVirtual_frame*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_frame"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).frame()

method handlesGlobalClassType*(self: ScriptLanguageExtension; `type`: String): bool {.base.} = (discard)
proc registerVirtual_handlesGlobalClassType*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_handles_global_class_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).handlesGlobalClassType(p_args[0].decode(String)).encode(r_ret)

method getGlobalClassName*(self: ScriptLanguageExtension; path: String): Dictionary {.base.} = (discard)
proc registerVirtual_getGlobalClassName*[T: ScriptLanguageExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_global_class_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ScriptLanguageExtension](p_instance).getGlobalClassName(p_args[0].decode(String)).encode(r_ret)
