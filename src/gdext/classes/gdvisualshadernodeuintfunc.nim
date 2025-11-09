{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeUIntFunc, VisualShaderNode)

proc setFunction*(self: VisualShaderNodeUIntFunc; `func`: VisualShaderNodeUIntFunc_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntFunc, "set_function", 2273148961)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeUIntFunc): VisualShaderNodeUIntFunc_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntFunc, "get_function", 4187123296)
  methodbind.ptrcall(self, [], VisualShaderNodeUIntFunc_Function)

template function*(self: VisualShaderNodeUIntFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeUIntFunc; value) = self.setFunction(value)
