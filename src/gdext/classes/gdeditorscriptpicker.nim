{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorresourcepicker; export gdeditorresourcepicker

proc setScriptOwner*(self: EditorScriptPicker; ownerNode: Node): void =
  expandMethodBind(className EditorScriptPicker, "set_script_owner", 1078189570)
  var `?param` = [getPtr ownerNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScriptOwner*(self: EditorScriptPicker): Node =
  expandMethodBind(className EditorScriptPicker, "get_script_owner", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

template scriptOwner*(self: EditorScriptPicker): untyped = self.getScriptOwner()
template `scriptOwner=`*(self: EditorScriptPicker; value) = self.setScriptOwner(value)

const EditorScriptPicker_vmap =
  EditorResourcePicker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorScriptPicker]): Table[string, string] = EditorScriptPicker_vmap