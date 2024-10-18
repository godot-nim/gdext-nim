{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscriptlanguage; export gdscriptlanguage

method getName*(self: ScriptLanguageExtension): String {.base.} = (discard)
proc getName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getName().encode(r_ret)
template getName_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getName

method init*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc init(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).init()
template init_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = init

method getType*(self: ScriptLanguageExtension): String {.base.} = (discard)
proc getType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getType().encode(r_ret)
template getType_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getType

method getExtension*(self: ScriptLanguageExtension): String {.base.} = (discard)
proc getExtension(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getExtension().encode(r_ret)
template getExtension_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getExtension

method finish*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc finish(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).finish()
template finish_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = finish

method getReservedWords*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc getReservedWords(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getReservedWords().encode(r_ret)
template getReservedWords_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getReservedWords

method isControlFlowKeyword*(self: ScriptLanguageExtension; keyword: String): bool {.base.} = (discard)
proc isControlFlowKeyword(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).isControlFlowKeyword(p_args[0].decode(String)).encode(r_ret)
template isControlFlowKeyword_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = isControlFlowKeyword

method getCommentDelimiters*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc getCommentDelimiters(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getCommentDelimiters().encode(r_ret)
template getCommentDelimiters_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getCommentDelimiters

method getDocCommentDelimiters*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc getDocCommentDelimiters(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getDocCommentDelimiters().encode(r_ret)
template getDocCommentDelimiters_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getDocCommentDelimiters

method getStringDelimiters*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc getStringDelimiters(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getStringDelimiters().encode(r_ret)
template getStringDelimiters_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getStringDelimiters

method makeTemplate*(self: ScriptLanguageExtension; `template`: String; className: String; baseClassName: String): gdref Script {.base.} = (discard)
proc makeTemplate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).makeTemplate(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(String)).encode(r_ret)
template makeTemplate_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = makeTemplate

method getBuiltInTemplates*(self: ScriptLanguageExtension; `object`: StringName): TypedArray[Dictionary] {.base.} = (discard)
proc getBuiltInTemplates(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getBuiltInTemplates(p_args[0].decode(StringName)).encode(r_ret)
template getBuiltInTemplates_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getBuiltInTemplates

method isUsingTemplates*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc isUsingTemplates(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).isUsingTemplates().encode(r_ret)
template isUsingTemplates_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = isUsingTemplates

method validate*(self: ScriptLanguageExtension; script: String; path: String; validateFunctions: bool; validateErrors: bool; validateWarnings: bool; validateSafeLines: bool): Dictionary {.base.} = (discard)
proc validate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).validate(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(bool), p_args[3].decode(bool), p_args[4].decode(bool), p_args[5].decode(bool)).encode(r_ret)
template validate_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = validate

method validatePath*(self: ScriptLanguageExtension; path: String): String {.base.} = (discard)
proc validatePath(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).validatePath(p_args[0].decode(String)).encode(r_ret)
template validatePath_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = validatePath

method createScript*(self: ScriptLanguageExtension): Object {.base.} = (discard)
proc createScript(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).createScript().encode(r_ret)
template createScript_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = createScript

method hasNamedClasses*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc hasNamedClasses(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).hasNamedClasses().encode(r_ret)
template hasNamedClasses_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = hasNamedClasses

method supportsBuiltinMode*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc supportsBuiltinMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).supportsBuiltinMode().encode(r_ret)
template supportsBuiltinMode_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = supportsBuiltinMode

method supportsDocumentation*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc supportsDocumentation(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).supportsDocumentation().encode(r_ret)
template supportsDocumentation_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = supportsDocumentation

method canInheritFromFile*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc canInheritFromFile(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).canInheritFromFile().encode(r_ret)
template canInheritFromFile_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = canInheritFromFile

method findFunction*(self: ScriptLanguageExtension; function: String; code: String): int32 {.base.} = (discard)
proc findFunction(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).findFunction(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)
template findFunction_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = findFunction

method makeFunction*(self: ScriptLanguageExtension; className: String; functionName: String; functionArgs: PackedStringArray): String {.base.} = (discard)
proc makeFunction(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).makeFunction(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(PackedStringArray)).encode(r_ret)
template makeFunction_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = makeFunction

method canMakeFunction*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc canMakeFunction(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).canMakeFunction().encode(r_ret)
template canMakeFunction_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = canMakeFunction

method openInExternalEditor*(self: ScriptLanguageExtension; script: gdref Script; line: int32; column: int32): Error {.base.} = (discard)
proc openInExternalEditor(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).openInExternalEditor(p_args[0].decode(gdref Script), p_args[1].decode(int32), p_args[2].decode(int32)).encode(r_ret)
template openInExternalEditor_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = openInExternalEditor

method overridesExternalEditor*(self: ScriptLanguageExtension): bool {.base.} = (discard)
proc overridesExternalEditor(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).overridesExternalEditor().encode(r_ret)
template overridesExternalEditor_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = overridesExternalEditor

method preferredFileNameCasing*(self: ScriptLanguageExtension): ScriptLanguage_ScriptNameCasing {.base.} = (discard)
proc preferredFileNameCasing(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).preferredFileNameCasing().encode(r_ret)
template preferredFileNameCasing_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = preferredFileNameCasing

method completeCode*(self: ScriptLanguageExtension; code: String; path: String; owner: Object): Dictionary {.base.} = (discard)
proc completeCode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).completeCode(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(Object)).encode(r_ret)
template completeCode_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = completeCode

method lookupCode*(self: ScriptLanguageExtension; code: String; symbol: String; path: String; owner: Object): Dictionary {.base.} = (discard)
proc lookupCode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).lookupCode(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(String), p_args[3].decode(Object)).encode(r_ret)
template lookupCode_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = lookupCode

method autoIndentCode*(self: ScriptLanguageExtension; code: String; fromLine: int32; toLine: int32): String {.base.} = (discard)
proc autoIndentCode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).autoIndentCode(p_args[0].decode(String), p_args[1].decode(int32), p_args[2].decode(int32)).encode(r_ret)
template autoIndentCode_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = autoIndentCode

method addGlobalConstant*(self: ScriptLanguageExtension; name: StringName; value: Variant): void {.base.} = (discard)
proc addGlobalConstant(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).addGlobalConstant(p_args[0].decode(StringName), p_args[1].decode(Variant))
template addGlobalConstant_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = addGlobalConstant

method addNamedGlobalConstant*(self: ScriptLanguageExtension; name: StringName; value: Variant): void {.base.} = (discard)
proc addNamedGlobalConstant(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).addNamedGlobalConstant(p_args[0].decode(StringName), p_args[1].decode(Variant))
template addNamedGlobalConstant_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = addNamedGlobalConstant

method removeNamedGlobalConstant*(self: ScriptLanguageExtension; name: StringName): void {.base.} = (discard)
proc removeNamedGlobalConstant(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).removeNamedGlobalConstant(p_args[0].decode(StringName))
template removeNamedGlobalConstant_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = removeNamedGlobalConstant

method threadEnter*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc threadEnter(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).threadEnter()
template threadEnter_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = threadEnter

method threadExit*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc threadExit(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).threadExit()
template threadExit_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = threadExit

method debugGetError*(self: ScriptLanguageExtension): String {.base.} = (discard)
proc debugGetError(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetError().encode(r_ret)
template debugGetError_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetError

method debugGetStackLevelCount*(self: ScriptLanguageExtension): int32 {.base.} = (discard)
proc debugGetStackLevelCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelCount().encode(r_ret)
template debugGetStackLevelCount_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetStackLevelCount

method debugGetStackLevelLine*(self: ScriptLanguageExtension; level: int32): int32 {.base.} = (discard)
proc debugGetStackLevelLine(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelLine(p_args[0].decode(int32)).encode(r_ret)
template debugGetStackLevelLine_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetStackLevelLine

method debugGetStackLevelFunction*(self: ScriptLanguageExtension; level: int32): String {.base.} = (discard)
proc debugGetStackLevelFunction(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelFunction(p_args[0].decode(int32)).encode(r_ret)
template debugGetStackLevelFunction_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetStackLevelFunction

method debugGetStackLevelSource*(self: ScriptLanguageExtension; level: int32): String {.base.} = (discard)
proc debugGetStackLevelSource(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelSource(p_args[0].decode(int32)).encode(r_ret)
template debugGetStackLevelSource_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetStackLevelSource

method debugGetStackLevelLocals*(self: ScriptLanguageExtension; level: int32; maxSubitems: int32; maxDepth: int32): Dictionary {.base.} = (discard)
proc debugGetStackLevelLocals(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelLocals(p_args[0].decode(int32), p_args[1].decode(int32), p_args[2].decode(int32)).encode(r_ret)
template debugGetStackLevelLocals_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetStackLevelLocals

method debugGetStackLevelMembers*(self: ScriptLanguageExtension; level: int32; maxSubitems: int32; maxDepth: int32): Dictionary {.base.} = (discard)
proc debugGetStackLevelMembers(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelMembers(p_args[0].decode(int32), p_args[1].decode(int32), p_args[2].decode(int32)).encode(r_ret)
template debugGetStackLevelMembers_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetStackLevelMembers

method debugGetStackLevelInstance*(self: ScriptLanguageExtension; level: int32): pointer {.base.} = (discard)
proc debugGetStackLevelInstance(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetStackLevelInstance(p_args[0].decode(int32)).encode(r_ret)
template debugGetStackLevelInstance_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetStackLevelInstance

method debugGetGlobals*(self: ScriptLanguageExtension; maxSubitems: int32; maxDepth: int32): Dictionary {.base.} = (discard)
proc debugGetGlobals(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetGlobals(p_args[0].decode(int32), p_args[1].decode(int32)).encode(r_ret)
template debugGetGlobals_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetGlobals

method debugParseStackLevelExpression*(self: ScriptLanguageExtension; level: int32; expression: String; maxSubitems: int32; maxDepth: int32): String {.base.} = (discard)
proc debugParseStackLevelExpression(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugParseStackLevelExpression(p_args[0].decode(int32), p_args[1].decode(String), p_args[2].decode(int32), p_args[3].decode(int32)).encode(r_ret)
template debugParseStackLevelExpression_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugParseStackLevelExpression

method debugGetCurrentStackInfo*(self: ScriptLanguageExtension): TypedArray[Dictionary] {.base.} = (discard)
proc debugGetCurrentStackInfo(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).debugGetCurrentStackInfo().encode(r_ret)
template debugGetCurrentStackInfo_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = debugGetCurrentStackInfo

method reloadAllScripts*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc reloadAllScripts(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).reloadAllScripts()
template reloadAllScripts_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = reloadAllScripts

method reloadToolScript*(self: ScriptLanguageExtension; script: gdref Script; softReload: bool): void {.base.} = (discard)
proc reloadToolScript(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).reloadToolScript(p_args[0].decode(gdref Script), p_args[1].decode(bool))
template reloadToolScript_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = reloadToolScript

method getRecognizedExtensions*(self: ScriptLanguageExtension): PackedStringArray {.base.} = (discard)
proc getRecognizedExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getRecognizedExtensions().encode(r_ret)
template getRecognizedExtensions_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getRecognizedExtensions

method getPublicFunctions*(self: ScriptLanguageExtension): TypedArray[Dictionary] {.base.} = (discard)
proc getPublicFunctions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getPublicFunctions().encode(r_ret)
template getPublicFunctions_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getPublicFunctions

method getPublicConstants*(self: ScriptLanguageExtension): Dictionary {.base.} = (discard)
proc getPublicConstants(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getPublicConstants().encode(r_ret)
template getPublicConstants_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getPublicConstants

method getPublicAnnotations*(self: ScriptLanguageExtension): TypedArray[Dictionary] {.base.} = (discard)
proc getPublicAnnotations(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getPublicAnnotations().encode(r_ret)
template getPublicAnnotations_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getPublicAnnotations

method profilingStart*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc profilingStart(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).profilingStart()
template profilingStart_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = profilingStart

method profilingStop*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc profilingStop(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).profilingStop()
template profilingStop_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = profilingStop

method profilingSetSaveNativeCalls*(self: ScriptLanguageExtension; enable: bool): void {.base.} = (discard)
proc profilingSetSaveNativeCalls(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).profilingSetSaveNativeCalls(p_args[0].decode(bool))
template profilingSetSaveNativeCalls_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = profilingSetSaveNativeCalls

method profilingGetAccumulatedData*(self: ScriptLanguageExtension; infoArray: ptr ScriptLanguageExtensionProfilingInfo; infoMax: int32): int32 {.base.} = (discard)
proc profilingGetAccumulatedData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).profilingGetAccumulatedData(p_args[0].decode(ptr ScriptLanguageExtensionProfilingInfo), p_args[1].decode(int32)).encode(r_ret)
template profilingGetAccumulatedData_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = profilingGetAccumulatedData

method profilingGetFrameData*(self: ScriptLanguageExtension; infoArray: ptr ScriptLanguageExtensionProfilingInfo; infoMax: int32): int32 {.base.} = (discard)
proc profilingGetFrameData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).profilingGetFrameData(p_args[0].decode(ptr ScriptLanguageExtensionProfilingInfo), p_args[1].decode(int32)).encode(r_ret)
template profilingGetFrameData_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = profilingGetFrameData

method frame*(self: ScriptLanguageExtension): void {.base.} = (discard)
proc frame(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).frame()
template frame_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = frame

method handlesGlobalClassType*(self: ScriptLanguageExtension; `type`: String): bool {.base.} = (discard)
proc handlesGlobalClassType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).handlesGlobalClassType(p_args[0].decode(String)).encode(r_ret)
template handlesGlobalClassType_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = handlesGlobalClassType

method getGlobalClassName*(self: ScriptLanguageExtension; path: String): Dictionary {.base.} = (discard)
proc getGlobalClassName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ScriptLanguageExtension](p_instance).getGlobalClassName(p_args[0].decode(String)).encode(r_ret)
template getGlobalClassName_bind*(_: typedesc[ScriptLanguageExtension]): ClassCallVirtual = getGlobalClassName

const ScriptLanguageExtension_vmap =
  ScriptLanguage.vmap.concat toTable {
    "getname" : "_get_name",
    "init" : "_init",
    "gettype" : "_get_type",
    "getextension" : "_get_extension",
    "finish" : "_finish",
    "getreservedwords" : "_get_reserved_words",
    "iscontrolflowkeyword" : "_is_control_flow_keyword",
    "getcommentdelimiters" : "_get_comment_delimiters",
    "getdoccommentdelimiters" : "_get_doc_comment_delimiters",
    "getstringdelimiters" : "_get_string_delimiters",
    "maketemplate" : "_make_template",
    "getbuiltintemplates" : "_get_built_in_templates",
    "isusingtemplates" : "_is_using_templates",
    "validate" : "_validate",
    "validatepath" : "_validate_path",
    "createscript" : "_create_script",
    "hasnamedclasses" : "_has_named_classes",
    "supportsbuiltinmode" : "_supports_builtin_mode",
    "supportsdocumentation" : "_supports_documentation",
    "caninheritfromfile" : "_can_inherit_from_file",
    "findfunction" : "_find_function",
    "makefunction" : "_make_function",
    "canmakefunction" : "_can_make_function",
    "openinexternaleditor" : "_open_in_external_editor",
    "overridesexternaleditor" : "_overrides_external_editor",
    "preferredfilenamecasing" : "_preferred_file_name_casing",
    "completecode" : "_complete_code",
    "lookupcode" : "_lookup_code",
    "autoindentcode" : "_auto_indent_code",
    "addglobalconstant" : "_add_global_constant",
    "addnamedglobalconstant" : "_add_named_global_constant",
    "removenamedglobalconstant" : "_remove_named_global_constant",
    "threadenter" : "_thread_enter",
    "threadexit" : "_thread_exit",
    "debuggeterror" : "_debug_get_error",
    "debuggetstacklevelcount" : "_debug_get_stack_level_count",
    "debuggetstacklevelline" : "_debug_get_stack_level_line",
    "debuggetstacklevelfunction" : "_debug_get_stack_level_function",
    "debuggetstacklevelsource" : "_debug_get_stack_level_source",
    "debuggetstacklevellocals" : "_debug_get_stack_level_locals",
    "debuggetstacklevelmembers" : "_debug_get_stack_level_members",
    "debuggetstacklevelinstance" : "_debug_get_stack_level_instance",
    "debuggetglobals" : "_debug_get_globals",
    "debugparsestacklevelexpression" : "_debug_parse_stack_level_expression",
    "debuggetcurrentstackinfo" : "_debug_get_current_stack_info",
    "reloadallscripts" : "_reload_all_scripts",
    "reloadtoolscript" : "_reload_tool_script",
    "getrecognizedextensions" : "_get_recognized_extensions",
    "getpublicfunctions" : "_get_public_functions",
    "getpublicconstants" : "_get_public_constants",
    "getpublicannotations" : "_get_public_annotations",
    "profilingstart" : "_profiling_start",
    "profilingstop" : "_profiling_stop",
    "profilingsetsavenativecalls" : "_profiling_set_save_native_calls",
    "profilinggetaccumulateddata" : "_profiling_get_accumulated_data",
    "profilinggetframedata" : "_profiling_get_frame_data",
    "frame" : "_frame",
    "handlesglobalclasstype" : "_handles_global_class_type",
    "getglobalclassname" : "_get_global_class_name",
    }
template vmap*(_: typedesc[ScriptLanguageExtension]): Table[string, string] = ScriptLanguageExtension_vmap