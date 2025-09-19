{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(CapsuleShape2D, Shape2D)

proc setRadius*(self: CapsuleShape2D; radius: Float): void =
  expandMethodBind(className CapsuleShape2D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: CapsuleShape2D): Float =
  expandMethodBind(className CapsuleShape2D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: CapsuleShape2D; height: Float): void =
  expandMethodBind(className CapsuleShape2D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height])

proc getHeight*(self: CapsuleShape2D): Float =
  expandMethodBind(className CapsuleShape2D, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMidHeight*(self: CapsuleShape2D; midHeight: Float): void =
  expandMethodBind(className CapsuleShape2D, "set_mid_height", 373806689)
  methodbind.ptrcall(self, [getPtr midHeight])

proc getMidHeight*(self: CapsuleShape2D): Float =
  expandMethodBind(className CapsuleShape2D, "get_mid_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template radius*(self: CapsuleShape2D): untyped = self.getRadius()
template `radius=`*(self: CapsuleShape2D; value) = self.setRadius(value)

template height*(self: CapsuleShape2D): untyped = self.getHeight()
template `height=`*(self: CapsuleShape2D; value) = self.setHeight(value)

template midHeight*(self: CapsuleShape2D): untyped = self.getMidHeight()
template `midHeight=`*(self: CapsuleShape2D; value) = self.setMidHeight(value)
