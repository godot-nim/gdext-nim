{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeVec3Constant; constant: Vector3): void =
  expandMethodBind(className VisualShaderNodeVec3Constant, "set_constant", 3460891852)
  var `?param` = [getPtr constant]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstant*(self: VisualShaderNodeVec3Constant): Vector3 =
  expandMethodBind(className VisualShaderNodeVec3Constant, "get_constant", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

template constant*(self: VisualShaderNodeVec3Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec3Constant; value) = self.setConstant(value)

const VisualShaderNodeVec3Constant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVec3Constant]): Table[string, string] = VisualShaderNodeVec3Constant_vmap