{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeDerivativeFunc; `type`: VisualShaderNodeDerivativeFunc_OpType): void =
  expandMethodBind(className VisualShaderNodeDerivativeFunc, "set_op_type", 377800221)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpType*(self: VisualShaderNodeDerivativeFunc): VisualShaderNodeDerivativeFunc_OpType =
  expandMethodBind(className VisualShaderNodeDerivativeFunc, "get_op_type", 3997800514)
  var ret: encoded VisualShaderNodeDerivativeFunc_OpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeDerivativeFunc_OpType)

proc setFunction*(self: VisualShaderNodeDerivativeFunc; `func`: VisualShaderNodeDerivativeFunc_Function): void =
  expandMethodBind(className VisualShaderNodeDerivativeFunc, "set_function", 1944704156)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFunction*(self: VisualShaderNodeDerivativeFunc): VisualShaderNodeDerivativeFunc_Function =
  expandMethodBind(className VisualShaderNodeDerivativeFunc, "get_function", 2389093396)
  var ret: encoded VisualShaderNodeDerivativeFunc_Function
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeDerivativeFunc_Function)

proc setPrecision*(self: VisualShaderNodeDerivativeFunc; precision: VisualShaderNodeDerivativeFunc_Precision): void =
  expandMethodBind(className VisualShaderNodeDerivativeFunc, "set_precision", 797270566)
  var `?param` = [getPtr precision]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPrecision*(self: VisualShaderNodeDerivativeFunc): VisualShaderNodeDerivativeFunc_Precision =
  expandMethodBind(className VisualShaderNodeDerivativeFunc, "get_precision", 3822547323)
  var ret: encoded VisualShaderNodeDerivativeFunc_Precision
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeDerivativeFunc_Precision)

template opType*(self: VisualShaderNodeDerivativeFunc): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeDerivativeFunc; value) = self.setOpType(value)

template function*(self: VisualShaderNodeDerivativeFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeDerivativeFunc; value) = self.setFunction(value)

template precision*(self: VisualShaderNodeDerivativeFunc): untyped = self.getPrecision()
template `precision=`*(self: VisualShaderNodeDerivativeFunc; value) = self.setPrecision(value)

const VisualShaderNodeDerivativeFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeDerivativeFunc]): Table[string, string] = VisualShaderNodeDerivativeFunc_vmap