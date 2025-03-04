{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

proc setNormal*(self: WorldBoundaryShape2D; normal: Vector2): void =
  expandMethodBind(className WorldBoundaryShape2D, "set_normal", 743155724)
  methodbind.ptrcall(self, [getPtr normal])

proc getNormal*(self: WorldBoundaryShape2D): Vector2 =
  expandMethodBind(className WorldBoundaryShape2D, "get_normal", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setDistance*(self: WorldBoundaryShape2D; distance: Float): void =
  expandMethodBind(className WorldBoundaryShape2D, "set_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getDistance*(self: WorldBoundaryShape2D): Float =
  expandMethodBind(className WorldBoundaryShape2D, "get_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template normal*(self: WorldBoundaryShape2D): untyped = self.getNormal()
template `normal=`*(self: WorldBoundaryShape2D; value) = self.setNormal(value)

template distance*(self: WorldBoundaryShape2D): untyped = self.getDistance()
template `distance=`*(self: WorldBoundaryShape2D; value) = self.setDistance(value)

const WorldBoundaryShape2D_vmap =
  Shape2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WorldBoundaryShape2D]): Table[string, string] = WorldBoundaryShape2D_vmap