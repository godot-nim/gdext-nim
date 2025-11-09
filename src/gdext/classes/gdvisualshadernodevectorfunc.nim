{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

expandOnClassImported(VisualShaderNodeVectorFunc, VisualShaderNodeVectorBase)

proc setFunction*(self: VisualShaderNodeVectorFunc; `func`: VisualShaderNodeVectorFunc_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVectorFunc, "set_function", 629964457)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeVectorFunc): VisualShaderNodeVectorFunc_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVectorFunc, "get_function", 4047776843)
  methodbind.ptrcall(self, [], VisualShaderNodeVectorFunc_Function)

template function*(self: VisualShaderNodeVectorFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeVectorFunc; value) = self.setFunction(value)
