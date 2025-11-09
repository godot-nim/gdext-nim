{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorScenePostImportPlugin, RefCounted)

method getInternalImportOptions*(self: EditorScenePostImportPlugin; category: int32): void {.base.} = (discard)
proc registerVirtual_getInternalImportOptions*[T: EditorScenePostImportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_internal_import_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImportPlugin](p_instance).getInternalImportOptions(p_args[0].decode(int32))

method getInternalOptionVisibility*(self: EditorScenePostImportPlugin; category: int32; forAnimation: bool; option: String): Variant {.base.} = (discard)
proc registerVirtual_getInternalOptionVisibility*[T: EditorScenePostImportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_internal_option_visibility"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImportPlugin](p_instance).getInternalOptionVisibility(p_args[0].decode(int32), p_args[1].decode(bool), p_args[2].decode(String)).encode(r_ret)

method getInternalOptionUpdateViewRequired*(self: EditorScenePostImportPlugin; category: int32; option: String): Variant {.base.} = (discard)
proc registerVirtual_getInternalOptionUpdateViewRequired*[T: EditorScenePostImportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_internal_option_update_view_required"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImportPlugin](p_instance).getInternalOptionUpdateViewRequired(p_args[0].decode(int32), p_args[1].decode(String)).encode(r_ret)

method internalProcess*(self: EditorScenePostImportPlugin; category: int32; baseNode: Node; node: Node; resource: gdref Resource): void {.base.} = (discard)
proc registerVirtual_internalProcess*[T: EditorScenePostImportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_internal_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImportPlugin](p_instance).internalProcess(p_args[0].decode(int32), p_args[1].decode(Node), p_args[2].decode(Node), p_args[3].decode(gdref Resource))

method getImportOptions*(self: EditorScenePostImportPlugin; path: String): void {.base.} = (discard)
proc registerVirtual_getImportOptions*[T: EditorScenePostImportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_import_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImportPlugin](p_instance).getImportOptions(p_args[0].decode(String))

method getOptionVisibility*(self: EditorScenePostImportPlugin; path: String; forAnimation: bool; option: String): Variant {.base.} = (discard)
proc registerVirtual_getOptionVisibility*[T: EditorScenePostImportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_option_visibility"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImportPlugin](p_instance).getOptionVisibility(p_args[0].decode(String), p_args[1].decode(bool), p_args[2].decode(String)).encode(r_ret)

method preProcess*(self: EditorScenePostImportPlugin; scene: Node): void {.base.} = (discard)
proc registerVirtual_preProcess*[T: EditorScenePostImportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pre_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImportPlugin](p_instance).preProcess(p_args[0].decode(Node))

method postProcess*(self: EditorScenePostImportPlugin; scene: Node): void {.base.} = (discard)
proc registerVirtual_postProcess*[T: EditorScenePostImportPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_post_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImportPlugin](p_instance).postProcess(p_args[0].decode(Node))

proc getOptionValue*(self: EditorScenePostImportPlugin; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScenePostImportPlugin, "get_option_value", 2760726917)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc addImportOption*(self: EditorScenePostImportPlugin; name: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScenePostImportPlugin, "add_import_option", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc addImportOptionAdvanced*(self: EditorScenePostImportPlugin; `type`: Variant_Type; name: String; defaultValue: Variant; hint: PropertyHint = propertyHintNone; hintString: String = newGdString(); usageFlags: int32 = 6): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScenePostImportPlugin, "add_import_option_advanced", 3674075649)
  methodbind.ptrcall(self, [getPtr `type`, getPtr name, getPtr defaultValue, getPtr hint, getPtr hintString, getPtr usageFlags], void)
