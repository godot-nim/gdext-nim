{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorScenePostImport, RefCounted)

method postImport*(self: EditorScenePostImport; scene: Node): Object {.base.} = (discard)
proc registerVirtual_postImport*[T: EditorScenePostImport](Self: typedesc[T]) =
  Self.vmethods[newStringName"_post_import"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorScenePostImport](p_instance).postImport(p_args[0].decode(Node)).encode(r_ret)

proc getSourceFile*(self: EditorScenePostImport): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScenePostImport, "get_source_file", 201670096)
  methodbind.ptrcall(self, [], String)
