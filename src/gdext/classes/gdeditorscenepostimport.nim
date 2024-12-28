{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method postImport*(self: EditorScenePostImport; scene: Node): Object {.base.} = (discard)
proc postImport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScenePostImport](p_instance).postImport(p_args[0].decode(Node)).encode(r_ret)
template postImport_bind*(_: typedesc[EditorScenePostImport]): ClassCallVirtual = postImport

proc getSourceFile*(self: EditorScenePostImport): String =
  expandMethodBind(className EditorScenePostImport, "get_source_file", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

const EditorScenePostImport_vmap =
  RefCounted.vmap.concat toTable {
    "postimport" : "_post_import",
    }
template vmap*(_: typedesc[EditorScenePostImport]): Table[string, string] = EditorScenePostImport_vmap