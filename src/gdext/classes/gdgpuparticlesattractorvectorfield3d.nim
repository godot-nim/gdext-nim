{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

expandOnClassImported(GPUParticlesAttractorVectorField3D, GPUParticlesAttractor3D)

proc setSize*(self: GPUParticlesAttractorVectorField3D; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractorVectorField3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: GPUParticlesAttractorVectorField3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractorVectorField3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setTexture*(self: GPUParticlesAttractorVectorField3D; texture: gdref Texture3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractorVectorField3D, "set_texture", 1188404210)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: GPUParticlesAttractorVectorField3D): gdref Texture3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractorVectorField3D, "get_texture", 373985333)
  methodbind.ptrcall(self, [], gdref Texture3D)

template size*(self: GPUParticlesAttractorVectorField3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesAttractorVectorField3D; value) = self.setSize(value)

template texture*(self: GPUParticlesAttractorVectorField3D): untyped = self.getTexture()
template `texture=`*(self: GPUParticlesAttractorVectorField3D; value) = self.setTexture(value)
