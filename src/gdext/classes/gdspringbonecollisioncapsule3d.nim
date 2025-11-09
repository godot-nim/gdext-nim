{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdspringbonecollision3d; export gdspringbonecollision3d

expandOnClassImported(SpringBoneCollisionCapsule3D, SpringBoneCollision3D)

proc setRadius*(self: SpringBoneCollisionCapsule3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionCapsule3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: SpringBoneCollisionCapsule3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionCapsule3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: SpringBoneCollisionCapsule3D; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionCapsule3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: SpringBoneCollisionCapsule3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionCapsule3D, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMidHeight*(self: SpringBoneCollisionCapsule3D; midHeight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionCapsule3D, "set_mid_height", 373806689)
  methodbind.ptrcall(self, [getPtr midHeight], void)

proc getMidHeight*(self: SpringBoneCollisionCapsule3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionCapsule3D, "get_mid_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setInside*(self: SpringBoneCollisionCapsule3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionCapsule3D, "set_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isInside*(self: SpringBoneCollisionCapsule3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollisionCapsule3D, "is_inside", 36873697)
  methodbind.ptrcall(self, [], bool)

template radius*(self: SpringBoneCollisionCapsule3D): untyped = self.getRadius()
template `radius=`*(self: SpringBoneCollisionCapsule3D; value) = self.setRadius(value)

template height*(self: SpringBoneCollisionCapsule3D): untyped = self.getHeight()
template `height=`*(self: SpringBoneCollisionCapsule3D; value) = self.setHeight(value)

template midHeight*(self: SpringBoneCollisionCapsule3D): untyped = self.getMidHeight()
template `midHeight=`*(self: SpringBoneCollisionCapsule3D; value) = self.setMidHeight(value)

template inside*(self: SpringBoneCollisionCapsule3D): untyped = self.isInside()
template `inside=`*(self: SpringBoneCollisionCapsule3D; value) = self.setInside(value)
