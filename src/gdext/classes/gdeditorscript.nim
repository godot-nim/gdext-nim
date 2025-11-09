{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorScript, RefCounted)

method run*(self: EditorScript): void {.base.} = (discard)
proc registerVirtual_run*[T: EditorScript](Self: typedesc[T]) =
  Self.vmethods[newStringName"_run"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScript](p_instance).run()

proc addRootNode*(self: EditorScript; node: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScript, "add_root_node", 1078189570)
  methodbind.ptrcall(self, [getPtr node], void)

proc getScene*(self: EditorScript): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScript, "get_scene", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc getEditorInterface*(self: EditorScript): EditorInterface =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScript, "get_editor_interface", 1976662476)
  methodbind.ptrcall(self, [], EditorInterface)
