{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeIntConstant; constant: int32): void =
  expandMethodBind(className VisualShaderNodeIntConstant, "set_constant", 1286410249)
  var `?param` = [getPtr constant]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstant*(self: VisualShaderNodeIntConstant): int32 =
  expandMethodBind(className VisualShaderNodeIntConstant, "get_constant", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template constant*(self: VisualShaderNodeIntConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeIntConstant; value) = self.setConstant(value)

const VisualShaderNodeIntConstant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeIntConstant]): Table[string, string] = VisualShaderNodeIntConstant_vmap