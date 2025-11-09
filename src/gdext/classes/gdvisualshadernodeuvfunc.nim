{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeUVFunc, VisualShaderNode)

proc setFunction*(self: VisualShaderNodeUVFunc; `func`: VisualShaderNodeUVFunc_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUVFunc, "set_function", 765791915)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeUVFunc): VisualShaderNodeUVFunc_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUVFunc, "get_function", 3772902164)
  methodbind.ptrcall(self, [], VisualShaderNodeUVFunc_Function)

template function*(self: VisualShaderNodeUVFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeUVFunc; value) = self.setFunction(value)
