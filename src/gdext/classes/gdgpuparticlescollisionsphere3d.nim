{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

expandOnClassImported(GPUParticlesCollisionSphere3D, GPUParticlesCollision3D)

proc setRadius*(self: GPUParticlesCollisionSphere3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSphere3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: GPUParticlesCollisionSphere3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSphere3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

template radius*(self: GPUParticlesCollisionSphere3D): untyped = self.getRadius()
template `radius=`*(self: GPUParticlesCollisionSphere3D; value) = self.setRadius(value)
