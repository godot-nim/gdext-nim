{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeInput, VisualShaderNode)

proc setInputName*(self: VisualShaderNodeInput; name: String): void =
  expandMethodBind(className VisualShaderNodeInput, "set_input_name", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getInputName*(self: VisualShaderNodeInput): String =
  expandMethodBind(className VisualShaderNodeInput, "get_input_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getInputRealName*(self: VisualShaderNodeInput): String =
  expandMethodBind(className VisualShaderNodeInput, "get_input_real_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template inputName*(self: VisualShaderNodeInput): untyped = self.getInputName()
template `inputName=`*(self: VisualShaderNodeInput; value) = self.setInputName(value)
