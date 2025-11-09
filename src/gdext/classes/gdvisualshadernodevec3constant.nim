{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeVec3Constant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeVec3Constant; constant: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec3Constant, "set_constant", 3460891852)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeVec3Constant): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec3Constant, "get_constant", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

template constant*(self: VisualShaderNodeVec3Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec3Constant; value) = self.setConstant(value)
