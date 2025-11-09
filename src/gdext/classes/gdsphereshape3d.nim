{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(SphereShape3D, Shape3D)

proc setRadius*(self: SphereShape3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereShape3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: SphereShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereShape3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

template radius*(self: SphereShape3D): untyped = self.getRadius()
template `radius=`*(self: SphereShape3D; value) = self.setRadius(value)
