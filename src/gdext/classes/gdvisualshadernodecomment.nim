{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeframe; export gdvisualshadernodeframe

expandOnClassImported(VisualShaderNodeComment, VisualShaderNodeFrame)

proc setDescription*(self: VisualShaderNodeComment; description: String): void =
  expandMethodBind(className VisualShaderNodeComment, "set_description", 83702148)
  methodbind.ptrcall(self, [getPtr description])

proc getDescription*(self: VisualShaderNodeComment): String =
  expandMethodBind(className VisualShaderNodeComment, "get_description", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template description*(self: VisualShaderNodeComment): untyped = self.getDescription()
template `description=`*(self: VisualShaderNodeComment; value) = self.setDescription(value)
