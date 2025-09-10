{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant
export VisualShaderNodeVec2Constant

proc setConstant*(self: VisualShaderNodeVec2Constant; constant: Vector2): void =
  expandMethodBind(className VisualShaderNodeVec2Constant, "set_constant", 743155724)
  methodbind.ptrcall(self, [getPtr constant])

proc getConstant*(self: VisualShaderNodeVec2Constant): Vector2 =
  expandMethodBind(className VisualShaderNodeVec2Constant, "get_constant", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template constant*(self: VisualShaderNodeVec2Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec2Constant; value) = self.setConstant(value)
