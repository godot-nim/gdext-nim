{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeFloatFunc, VisualShaderNode)

proc setFunction*(self: VisualShaderNodeFloatFunc; `func`: VisualShaderNodeFloatFunc_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatFunc, "set_function", 536026177)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeFloatFunc): VisualShaderNodeFloatFunc_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatFunc, "get_function", 2033948868)
  methodbind.ptrcall(self, [], VisualShaderNodeFloatFunc_Function)

template function*(self: VisualShaderNodeFloatFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeFloatFunc; value) = self.setFunction(value)
