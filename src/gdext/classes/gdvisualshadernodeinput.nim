{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeInput, VisualShaderNode)

proc setInputName*(self: VisualShaderNodeInput; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeInput, "set_input_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getInputName*(self: VisualShaderNodeInput): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeInput, "get_input_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getInputRealName*(self: VisualShaderNodeInput): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeInput, "get_input_real_name", 201670096)
  methodbind.ptrcall(self, [], String)

template inputName*(self: VisualShaderNodeInput): untyped = self.getInputName()
template `inputName=`*(self: VisualShaderNodeInput; value) = self.setInputName(value)
