{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

proc setSize*(self: GpuParticlesAttractorBox3D; size: Vector3): void =
  expandMethodBind(className GpuParticlesAttractorBox3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: GpuParticlesAttractorBox3D): Vector3 =
  expandMethodBind(className GpuParticlesAttractorBox3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

template size*(self: GpuParticlesAttractorBox3D): untyped = self.getSize()
template `size=`*(self: GpuParticlesAttractorBox3D; value) = self.setSize(value)

const GpuParticlesAttractorBox3D_vmap =
  GpuParticlesAttractor3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticlesAttractorBox3D]): Table[string, string] = GpuParticlesAttractorBox3D_vmap