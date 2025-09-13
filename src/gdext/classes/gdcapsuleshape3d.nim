{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(CapsuleShape3D, Shape3D)

proc setRadius*(self: CapsuleShape3D; radius: Float): void =
  expandMethodBind(className CapsuleShape3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: CapsuleShape3D): Float =
  expandMethodBind(className CapsuleShape3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: CapsuleShape3D; height: Float): void =
  expandMethodBind(className CapsuleShape3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height])

proc getHeight*(self: CapsuleShape3D): Float =
  expandMethodBind(className CapsuleShape3D, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template radius*(self: CapsuleShape3D): untyped = self.getRadius()
template `radius=`*(self: CapsuleShape3D; value) = self.setRadius(value)

template height*(self: CapsuleShape3D): untyped = self.getHeight()
template `height=`*(self: CapsuleShape3D; value) = self.setHeight(value)
