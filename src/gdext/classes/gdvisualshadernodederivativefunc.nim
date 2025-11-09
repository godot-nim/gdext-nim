{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeDerivativeFunc, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeDerivativeFunc; `type`: VisualShaderNodeDerivativeFunc_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeDerivativeFunc, "set_op_type", 377800221)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getOpType*(self: VisualShaderNodeDerivativeFunc): VisualShaderNodeDerivativeFunc_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeDerivativeFunc, "get_op_type", 3997800514)
  methodbind.ptrcall(self, [], VisualShaderNodeDerivativeFunc_OpType)

proc setFunction*(self: VisualShaderNodeDerivativeFunc; `func`: VisualShaderNodeDerivativeFunc_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeDerivativeFunc, "set_function", 1944704156)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeDerivativeFunc): VisualShaderNodeDerivativeFunc_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeDerivativeFunc, "get_function", 2389093396)
  methodbind.ptrcall(self, [], VisualShaderNodeDerivativeFunc_Function)

proc setPrecision*(self: VisualShaderNodeDerivativeFunc; precision: VisualShaderNodeDerivativeFunc_Precision): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeDerivativeFunc, "set_precision", 797270566)
  methodbind.ptrcall(self, [getPtr precision], void)

proc getPrecision*(self: VisualShaderNodeDerivativeFunc): VisualShaderNodeDerivativeFunc_Precision =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeDerivativeFunc, "get_precision", 3822547323)
  methodbind.ptrcall(self, [], VisualShaderNodeDerivativeFunc_Precision)

template opType*(self: VisualShaderNodeDerivativeFunc): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeDerivativeFunc; value) = self.setOpType(value)

template function*(self: VisualShaderNodeDerivativeFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeDerivativeFunc; value) = self.setFunction(value)

template precision*(self: VisualShaderNodeDerivativeFunc): untyped = self.getPrecision()
template `precision=`*(self: VisualShaderNodeDerivativeFunc; value) = self.setPrecision(value)
