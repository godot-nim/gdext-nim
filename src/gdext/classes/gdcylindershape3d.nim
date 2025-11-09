{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(CylinderShape3D, Shape3D)

proc setRadius*(self: CylinderShape3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderShape3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: CylinderShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderShape3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: CylinderShape3D; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderShape3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: CylinderShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderShape3D, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

template height*(self: CylinderShape3D): untyped = self.getHeight()
template `height=`*(self: CylinderShape3D; value) = self.setHeight(value)

template radius*(self: CylinderShape3D): untyped = self.getRadius()
template `radius=`*(self: CylinderShape3D; value) = self.setRadius(value)
