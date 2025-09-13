{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

expandOnClassImported(GPUParticlesCollisionSphere3D, GPUParticlesCollision3D)

proc setRadius*(self: GPUParticlesCollisionSphere3D; radius: Float): void =
  expandMethodBind(className GPUParticlesCollisionSphere3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: GPUParticlesCollisionSphere3D): Float =
  expandMethodBind(className GPUParticlesCollisionSphere3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template radius*(self: GPUParticlesCollisionSphere3D): untyped = self.getRadius()
template `radius=`*(self: GPUParticlesCollisionSphere3D; value) = self.setRadius(value)
