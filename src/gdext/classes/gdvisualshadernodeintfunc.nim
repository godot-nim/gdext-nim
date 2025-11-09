{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeIntFunc, VisualShaderNode)

proc setFunction*(self: VisualShaderNodeIntFunc; `func`: VisualShaderNodeIntFunc_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntFunc, "set_function", 424195284)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeIntFunc): VisualShaderNodeIntFunc_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntFunc, "get_function", 2753496911)
  methodbind.ptrcall(self, [], VisualShaderNodeIntFunc_Function)

template function*(self: VisualShaderNodeIntFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeIntFunc; value) = self.setFunction(value)
