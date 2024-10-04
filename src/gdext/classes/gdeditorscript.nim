{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method run*(self: EditorScript): void {.base.} = (discard)
proc run(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorScript](p_instance).run()
template run_bind*(_: typedesc[EditorScript]): ClassCallVirtual = run

proc addRootNode*(self: EditorScript; node: Node): void =
  expandMethodBind(className EditorScript, "add_root_node", 1078189570)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScene*(self: EditorScript): Node =
  expandMethodBind(className EditorScript, "get_scene", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

proc getEditorInterface*(self: EditorScript): EditorInterface =
  expandMethodBind(className EditorScript, "get_editor_interface", 1976662476)
  var ret: encoded EditorInterface
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorInterface)

const EditorScript_vmap =
  RefCounted.vmap.concat toTable {
    "run" : "_run",
    }
template vmap*(_: typedesc[EditorScript]): Table[string, string] = EditorScript_vmap