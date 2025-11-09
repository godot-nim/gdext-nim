{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

expandOnClassImported(GPUParticlesAttractorBox3D, GPUParticlesAttractor3D)

proc setSize*(self: GPUParticlesAttractorBox3D; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractorBox3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: GPUParticlesAttractorBox3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractorBox3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

template size*(self: GPUParticlesAttractorBox3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesAttractorBox3D; value) = self.setSize(value)
