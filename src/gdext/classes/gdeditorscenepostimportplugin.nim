{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method getInternalImportOptions*(self: EditorScenePostImportPlugin; category: int32): void {.base.} = (discard)
proc getInternalImportOptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImportPlugin](p_instance).getInternalImportOptions(p_args[0].decode(int32))
template getInternalImportOptions_bind*(_: typedesc[EditorScenePostImportPlugin]): ClassCallVirtual = getInternalImportOptions

method getInternalOptionVisibility*(self: EditorScenePostImportPlugin; category: int32; forAnimation: bool; option: String): Variant {.base.} = (discard)
proc getInternalOptionVisibility(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImportPlugin](p_instance).getInternalOptionVisibility(p_args[0].decode(int32), p_args[1].decode(bool), p_args[2].decode(String)).encode(r_ret)
template getInternalOptionVisibility_bind*(_: typedesc[EditorScenePostImportPlugin]): ClassCallVirtual = getInternalOptionVisibility

method getInternalOptionUpdateViewRequired*(self: EditorScenePostImportPlugin; category: int32; option: String): Variant {.base.} = (discard)
proc getInternalOptionUpdateViewRequired(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImportPlugin](p_instance).getInternalOptionUpdateViewRequired(p_args[0].decode(int32), p_args[1].decode(String)).encode(r_ret)
template getInternalOptionUpdateViewRequired_bind*(_: typedesc[EditorScenePostImportPlugin]): ClassCallVirtual = getInternalOptionUpdateViewRequired

method internalProcess*(self: EditorScenePostImportPlugin; category: int32; baseNode: Node; node: Node; resource: gdref Resource): void {.base.} = (discard)
proc internalProcess(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImportPlugin](p_instance).internalProcess(p_args[0].decode(int32), p_args[1].decode(Node), p_args[2].decode(Node), p_args[3].decode(gdref Resource))
template internalProcess_bind*(_: typedesc[EditorScenePostImportPlugin]): ClassCallVirtual = internalProcess

method getImportOptions*(self: EditorScenePostImportPlugin; path: String): void {.base.} = (discard)
proc getImportOptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImportPlugin](p_instance).getImportOptions(p_args[0].decode(String))
template getImportOptions_bind*(_: typedesc[EditorScenePostImportPlugin]): ClassCallVirtual = getImportOptions

method getOptionVisibility*(self: EditorScenePostImportPlugin; path: String; forAnimation: bool; option: String): Variant {.base.} = (discard)
proc getOptionVisibility(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImportPlugin](p_instance).getOptionVisibility(p_args[0].decode(String), p_args[1].decode(bool), p_args[2].decode(String)).encode(r_ret)
template getOptionVisibility_bind*(_: typedesc[EditorScenePostImportPlugin]): ClassCallVirtual = getOptionVisibility

method preProcess*(self: EditorScenePostImportPlugin; scene: Node): void {.base.} = (discard)
proc preProcess(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImportPlugin](p_instance).preProcess(p_args[0].decode(Node))
template preProcess_bind*(_: typedesc[EditorScenePostImportPlugin]): ClassCallVirtual = preProcess

method postProcess*(self: EditorScenePostImportPlugin; scene: Node): void {.base.} = (discard)
proc postProcess(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImportPlugin](p_instance).postProcess(p_args[0].decode(Node))
template postProcess_bind*(_: typedesc[EditorScenePostImportPlugin]): ClassCallVirtual = postProcess

proc getOptionValue*(self: EditorScenePostImportPlugin; name: StringName): Variant =
  expandMethodBind(className EditorScenePostImportPlugin, "get_option_value", 2760726917)
  var `?param` = [getPtr name]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc addImportOption*(self: EditorScenePostImportPlugin; name: String; value: Variant): void =
  expandMethodBind(className EditorScenePostImportPlugin, "add_import_option", 402577236)
  var `?param` = [getPtr name, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc addImportOptionAdvanced*(self: EditorScenePostImportPlugin; `type`: Variant_Type; name: String; defaultValue: Variant; hint: PropertyHint = propertyHintNone; hintString: String = gdstring""; usageFlags: int32 = 6): void =
  expandMethodBind(className EditorScenePostImportPlugin, "add_import_option_advanced", 3674075649)
  var `?param` = [getPtr `type`, getPtr name, getPtr defaultValue, getPtr hint, getPtr hintString, getPtr usageFlags]
  methodbind.ptrcall(self, addr `?param`[0])

const EditorScenePostImportPlugin_vmap =
  RefCounted.vmap.concat toTable {
    "getinternalimportoptions" : "_get_internal_import_options",
    "getinternaloptionvisibility" : "_get_internal_option_visibility",
    "getinternaloptionupdateviewrequired" : "_get_internal_option_update_view_required",
    "internalprocess" : "_internal_process",
    "getimportoptions" : "_get_import_options",
    "getoptionvisibility" : "_get_option_visibility",
    "preprocess" : "_pre_process",
    "postprocess" : "_post_process",
    }
template vmap*(_: typedesc[EditorScenePostImportPlugin]): Table[string, string] = EditorScenePostImportPlugin_vmap