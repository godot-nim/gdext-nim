{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Shape3D, Resource)

proc setCustomSolverBias*(self: Shape3D; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape3D, "set_custom_solver_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias], void)

proc getCustomSolverBias*(self: Shape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape3D, "get_custom_solver_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMargin*(self: Shape3D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape3D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getMargin*(self: Shape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape3D, "get_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getDebugMesh*(self: Shape3D): gdref ArrayMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape3D, "get_debug_mesh", 1605880883)
  methodbind.ptrcall(self, [], gdref ArrayMesh)

template customSolverBias*(self: Shape3D): untyped = self.getCustomSolverBias()
template `customSolverBias=`*(self: Shape3D; value) = self.setCustomSolverBias(value)

template margin*(self: Shape3D): untyped = self.getMargin()
template `margin=`*(self: Shape3D; value) = self.setMargin(value)
