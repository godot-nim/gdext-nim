{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdspringbonecollision3d; export gdspringbonecollision3d
export SpringBoneCollisionSphere3D

proc setRadius*(self: SpringBoneCollisionSphere3D; radius: Float): void =
  expandMethodBind(className SpringBoneCollisionSphere3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: SpringBoneCollisionSphere3D): Float =
  expandMethodBind(className SpringBoneCollisionSphere3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setInside*(self: SpringBoneCollisionSphere3D; enabled: bool): void =
  expandMethodBind(className SpringBoneCollisionSphere3D, "set_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isInside*(self: SpringBoneCollisionSphere3D): bool =
  expandMethodBind(className SpringBoneCollisionSphere3D, "is_inside", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template radius*(self: SpringBoneCollisionSphere3D): untyped = self.getRadius()
template `radius=`*(self: SpringBoneCollisionSphere3D; value) = self.setRadius(value)

template inside*(self: SpringBoneCollisionSphere3D): untyped = self.isInside()
template `inside=`*(self: SpringBoneCollisionSphere3D; value) = self.setInside(value)
