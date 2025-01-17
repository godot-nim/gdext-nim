{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

proc setRadius*(self: CylinderShape3D; radius: Float): void =
  expandMethodBind(className CylinderShape3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: CylinderShape3D): Float =
  expandMethodBind(className CylinderShape3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: CylinderShape3D; height: Float): void =
  expandMethodBind(className CylinderShape3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height])

proc getHeight*(self: CylinderShape3D): Float =
  expandMethodBind(className CylinderShape3D, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template height*(self: CylinderShape3D): untyped = self.getHeight()
template `height=`*(self: CylinderShape3D; value) = self.setHeight(value)

template radius*(self: CylinderShape3D): untyped = self.getRadius()
template `radius=`*(self: CylinderShape3D; value) = self.setRadius(value)

const CylinderShape3D_vmap =
  Shape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CylinderShape3D]): Table[string, string] = CylinderShape3D_vmap