{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlight2d; export gdlight2d

proc setMaxDistance*(self: DirectionalLight2D; pixels: Float): void =
  expandMethodBind(className DirectionalLight2D, "set_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr pixels])

proc getMaxDistance*(self: DirectionalLight2D): Float =
  expandMethodBind(className DirectionalLight2D, "get_max_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template height*(self: DirectionalLight2D): untyped = self.getHeight()
template `height=`*(self: DirectionalLight2D; value) = self.setHeight(value)

template maxDistance*(self: DirectionalLight2D): untyped = self.getMaxDistance()
template `maxDistance=`*(self: DirectionalLight2D; value) = self.setMaxDistance(value)

const DirectionalLight2D_vmap =
  Light2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[DirectionalLight2D]): Table[string, string] = DirectionalLight2D_vmap