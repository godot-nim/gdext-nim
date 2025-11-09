{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeIs, VisualShaderNode)

proc setFunction*(self: VisualShaderNodeIs; `func`: VisualShaderNodeIs_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIs, "set_function", 1438374690)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeIs): VisualShaderNodeIs_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIs, "get_function", 580678557)
  methodbind.ptrcall(self, [], VisualShaderNodeIs_Function)

template function*(self: VisualShaderNodeIs): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeIs; value) = self.setFunction(value)
