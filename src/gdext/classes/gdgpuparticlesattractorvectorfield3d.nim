{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

proc setSize*(self: GPUParticlesAttractorVectorField3D; size: Vector3): void =
  expandMethodBind(className GPUParticlesAttractorVectorField3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: GPUParticlesAttractorVectorField3D): Vector3 =
  expandMethodBind(className GPUParticlesAttractorVectorField3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setTexture*(self: GPUParticlesAttractorVectorField3D; texture: gdref Texture3D): void =
  expandMethodBind(className GPUParticlesAttractorVectorField3D, "set_texture", 1188404210)
  methodbind.ptrcall(self, [getPtr texture])

proc getTexture*(self: GPUParticlesAttractorVectorField3D): gdref Texture3D =
  expandMethodBind(className GPUParticlesAttractorVectorField3D, "get_texture", 373985333)
  var ret: encoded gdref Texture3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture3D)

template size*(self: GPUParticlesAttractorVectorField3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesAttractorVectorField3D; value) = self.setSize(value)

template texture*(self: GPUParticlesAttractorVectorField3D): untyped = self.getTexture()
template `texture=`*(self: GPUParticlesAttractorVectorField3D; value) = self.setTexture(value)

const GPUParticlesAttractorVectorField3D_vmap =
  GPUParticlesAttractor3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticlesAttractorVectorField3D]): Table[string, string] = GPUParticlesAttractorVectorField3D_vmap