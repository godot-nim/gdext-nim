{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeUIntConstant; constant: int32): void =
  expandMethodBind(className VisualShaderNodeUIntConstant, "set_constant", 1286410249)
  methodbind.ptrcall(self, [getPtr constant])

proc getConstant*(self: VisualShaderNodeUIntConstant): int32 =
  expandMethodBind(className VisualShaderNodeUIntConstant, "get_constant", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

template constant*(self: VisualShaderNodeUIntConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeUIntConstant; value) = self.setConstant(value)

const VisualShaderNodeUIntConstant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeUIntConstant]): Table[string, string] = VisualShaderNodeUIntConstant_vmap