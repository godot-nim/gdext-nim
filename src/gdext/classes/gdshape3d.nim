{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setCustomSolverBias*(self: Shape3D; bias: Float): void =
  expandMethodBind(className Shape3D, "set_custom_solver_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias])

proc getCustomSolverBias*(self: Shape3D): Float =
  expandMethodBind(className Shape3D, "get_custom_solver_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMargin*(self: Shape3D; margin: Float): void =
  expandMethodBind(className Shape3D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin])

proc getMargin*(self: Shape3D): Float =
  expandMethodBind(className Shape3D, "get_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getDebugMesh*(self: Shape3D): gdref ArrayMesh =
  expandMethodBind(className Shape3D, "get_debug_mesh", 1605880883)
  var ret: encoded gdref ArrayMesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref ArrayMesh)

template customSolverBias*(self: Shape3D): untyped = self.getCustomSolverBias()
template `customSolverBias=`*(self: Shape3D; value) = self.setCustomSolverBias(value)

template margin*(self: Shape3D): untyped = self.getMargin()
template `margin=`*(self: Shape3D; value) = self.setMargin(value)

const Shape3D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Shape3D]): Table[string, string] = Shape3D_vmap