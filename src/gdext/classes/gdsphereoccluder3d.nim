{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

expandOnClassImported(SphereOccluder3D, Occluder3D)

proc setRadius*(self: SphereOccluder3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereOccluder3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: SphereOccluder3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereOccluder3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

template radius*(self: SphereOccluder3D): untyped = self.getRadius()
template `radius=`*(self: SphereOccluder3D; value) = self.setRadius(value)
