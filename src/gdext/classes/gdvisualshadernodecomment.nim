{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeframe; export gdvisualshadernodeframe

expandOnClassImported(VisualShaderNodeComment, VisualShaderNodeFrame)

proc setDescription*(self: VisualShaderNodeComment; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeComment, "set_description", 83702148)
  methodbind.ptrcall(self, [getPtr description], void)

proc getDescription*(self: VisualShaderNodeComment): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeComment, "get_description", 201670096)
  methodbind.ptrcall(self, [], String)

template description*(self: VisualShaderNodeComment): untyped = self.getDescription()
template `description=`*(self: VisualShaderNodeComment; value) = self.setDescription(value)
