{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeTransformFunc, VisualShaderNode)

proc setFunction*(self: VisualShaderNodeTransformFunc; `func`: VisualShaderNodeTransformFunc_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformFunc, "set_function", 2900990409)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeTransformFunc): VisualShaderNodeTransformFunc_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformFunc, "get_function", 2839926569)
  methodbind.ptrcall(self, [], VisualShaderNodeTransformFunc_Function)

template function*(self: VisualShaderNodeTransformFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeTransformFunc; value) = self.setFunction(value)
