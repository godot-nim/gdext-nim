{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

proc setRadius*(self: GpuParticlesCollisionSphere3D; radius: Float): void =
  expandMethodBind(className GpuParticlesCollisionSphere3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: GpuParticlesCollisionSphere3D): Float =
  expandMethodBind(className GpuParticlesCollisionSphere3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template radius*(self: GpuParticlesCollisionSphere3D): untyped = self.getRadius()
template `radius=`*(self: GpuParticlesCollisionSphere3D; value) = self.setRadius(value)

const GpuParticlesCollisionSphere3D_vmap =
  GpuParticlesCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticlesCollisionSphere3D]): Table[string, string] = GpuParticlesCollisionSphere3D_vmap