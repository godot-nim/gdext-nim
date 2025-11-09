{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

expandOnClassImported(GPUParticlesCollisionBox3D, GPUParticlesCollision3D)

proc setSize*(self: GPUParticlesCollisionBox3D; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionBox3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: GPUParticlesCollisionBox3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionBox3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

template size*(self: GPUParticlesCollisionBox3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesCollisionBox3D; value) = self.setSize(value)
