{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

proc setRadius*(self: CapsuleShape2D; radius: Float): void =
  expandMethodBind(className CapsuleShape2D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: CapsuleShape2D): Float =
  expandMethodBind(className CapsuleShape2D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: CapsuleShape2D; height: Float): void =
  expandMethodBind(className CapsuleShape2D, "set_height", 373806689)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: CapsuleShape2D): Float =
  expandMethodBind(className CapsuleShape2D, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template radius*(self: CapsuleShape2D): untyped = self.getRadius()
template `radius=`*(self: CapsuleShape2D; value) = self.setRadius(value)

template height*(self: CapsuleShape2D): untyped = self.getHeight()
template `height=`*(self: CapsuleShape2D; value) = self.setHeight(value)

const CapsuleShape2D_vmap =
  Shape2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CapsuleShape2D]): Table[string, string] = CapsuleShape2D_vmap