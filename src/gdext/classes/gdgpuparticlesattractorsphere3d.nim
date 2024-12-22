{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

proc setRadius*(self: GPUParticlesAttractorSphere3D; radius: Float): void =
  expandMethodBind(className GPUParticlesAttractorSphere3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: GPUParticlesAttractorSphere3D): Float =
  expandMethodBind(className GPUParticlesAttractorSphere3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template radius*(self: GPUParticlesAttractorSphere3D): untyped = self.getRadius()
template `radius=`*(self: GPUParticlesAttractorSphere3D; value) = self.setRadius(value)

const GPUParticlesAttractorSphere3D_vmap =
  GPUParticlesAttractor3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticlesAttractorSphere3D]): Table[string, string] = GPUParticlesAttractorSphere3D_vmap