{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeTransformConstant; constant: Transform3D): void =
  expandMethodBind(className VisualShaderNodeTransformConstant, "set_constant", 2952846383)
  methodbind.ptrcall(self, [getPtr constant])

proc getConstant*(self: VisualShaderNodeTransformConstant): Transform3D =
  expandMethodBind(className VisualShaderNodeTransformConstant, "get_constant", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform3D)

template constant*(self: VisualShaderNodeTransformConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeTransformConstant; value) = self.setConstant(value)

const VisualShaderNodeTransformConstant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTransformConstant]): Table[string, string] = VisualShaderNodeTransformConstant_vmap