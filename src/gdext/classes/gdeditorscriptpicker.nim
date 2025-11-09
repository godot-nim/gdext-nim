{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorresourcepicker; export gdeditorresourcepicker

expandOnClassImported(EditorScriptPicker, EditorResourcePicker)

proc setScriptOwner*(self: EditorScriptPicker; ownerNode: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScriptPicker, "set_script_owner", 1078189570)
  methodbind.ptrcall(self, [getPtr ownerNode], void)

proc getScriptOwner*(self: EditorScriptPicker): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorScriptPicker, "get_script_owner", 3160264692)
  methodbind.ptrcall(self, [], Node)

template scriptOwner*(self: EditorScriptPicker): untyped = self.getScriptOwner()
template `scriptOwner=`*(self: EditorScriptPicker; value) = self.setScriptOwner(value)
