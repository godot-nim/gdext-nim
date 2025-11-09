{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

expandOnClassImported(GPUParticlesAttractorSphere3D, GPUParticlesAttractor3D)

proc setRadius*(self: GPUParticlesAttractorSphere3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractorSphere3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: GPUParticlesAttractorSphere3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractorSphere3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

template radius*(self: GPUParticlesAttractorSphere3D): untyped = self.getRadius()
template `radius=`*(self: GPUParticlesAttractorSphere3D; value) = self.setRadius(value)
