{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdspringbonecollision3d; export gdspringbonecollision3d

expandOnClassImported(SpringBoneCollisionSphere3D, SpringBoneCollision3D)

proc setRadius*(self: SpringBoneCollisionSphere3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionSphere3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: SpringBoneCollisionSphere3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionSphere3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setInside*(self: SpringBoneCollisionSphere3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionSphere3D, "set_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isInside*(self: SpringBoneCollisionSphere3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionSphere3D, "is_inside", 36873697)
  methodbind.ptrcall(self, [], bool)

template radius*(self: SpringBoneCollisionSphere3D): untyped = self.getRadius()
template `radius=`*(self: SpringBoneCollisionSphere3D; value) = self.setRadius(value)

template inside*(self: SpringBoneCollisionSphere3D): untyped = self.isInside()
template `inside=`*(self: SpringBoneCollisionSphere3D; value) = self.setInside(value)
