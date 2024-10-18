{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeVec2Constant; constant: Vector2): void =
  expandMethodBind(className VisualShaderNodeVec2Constant, "set_constant", 743155724)
  var `?param` = [getPtr constant]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstant*(self: VisualShaderNodeVec2Constant): Vector2 =
  expandMethodBind(className VisualShaderNodeVec2Constant, "get_constant", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template constant*(self: VisualShaderNodeVec2Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec2Constant; value) = self.setConstant(value)

const VisualShaderNodeVec2Constant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVec2Constant]): Table[string, string] = VisualShaderNodeVec2Constant_vmap