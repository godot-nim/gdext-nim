{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeColorFunc, VisualShaderNode)

proc setFunction*(self: VisualShaderNodeColorFunc; `func`: VisualShaderNodeColorFunc_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeColorFunc, "set_function", 3973396138)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeColorFunc): VisualShaderNodeColorFunc_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeColorFunc, "get_function", 554863321)
  methodbind.ptrcall(self, [], VisualShaderNodeColorFunc_Function)

template function*(self: VisualShaderNodeColorFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeColorFunc; value) = self.setFunction(value)
