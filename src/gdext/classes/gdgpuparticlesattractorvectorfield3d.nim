{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

proc setSize*(self: GpuParticlesAttractorVectorField3D; size: Vector3): void =
  expandMethodBind(className GpuParticlesAttractorVectorField3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: GpuParticlesAttractorVectorField3D): Vector3 =
  expandMethodBind(className GpuParticlesAttractorVectorField3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setTexture*(self: GpuParticlesAttractorVectorField3D; texture: gdref Texture3D): void =
  expandMethodBind(className GpuParticlesAttractorVectorField3D, "set_texture", 1188404210)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: GpuParticlesAttractorVectorField3D): gdref Texture3D =
  expandMethodBind(className GpuParticlesAttractorVectorField3D, "get_texture", 373985333)
  var ret: encoded gdref Texture3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture3D)

template size*(self: GpuParticlesAttractorVectorField3D): untyped = self.getSize()
template `size=`*(self: GpuParticlesAttractorVectorField3D; value) = self.setSize(value)

template texture*(self: GpuParticlesAttractorVectorField3D): untyped = self.getTexture()
template `texture=`*(self: GpuParticlesAttractorVectorField3D; value) = self.setTexture(value)

const GpuParticlesAttractorVectorField3D_vmap =
  GpuParticlesAttractor3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticlesAttractorVectorField3D]): Table[string, string] = GpuParticlesAttractorVectorField3D_vmap