{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

proc setRadius*(self: GpuParticlesAttractorSphere3D; radius: Float): void =
  expandMethodBind(className GpuParticlesAttractorSphere3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: GpuParticlesAttractorSphere3D): Float =
  expandMethodBind(className GpuParticlesAttractorSphere3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template radius*(self: GpuParticlesAttractorSphere3D): untyped = self.getRadius()
template `radius=`*(self: GpuParticlesAttractorSphere3D; value) = self.setRadius(value)

const GpuParticlesAttractorSphere3D_vmap =
  GpuParticlesAttractor3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticlesAttractorSphere3D]): Table[string, string] = GpuParticlesAttractorSphere3D_vmap