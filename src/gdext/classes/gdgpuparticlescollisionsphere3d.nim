{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

proc setRadius*(self: GPUParticlesCollisionSphere3D; radius: Float): void =
  expandMethodBind(className GPUParticlesCollisionSphere3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: GPUParticlesCollisionSphere3D): Float =
  expandMethodBind(className GPUParticlesCollisionSphere3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template radius*(self: GPUParticlesCollisionSphere3D): untyped = self.getRadius()
template `radius=`*(self: GPUParticlesCollisionSphere3D; value) = self.setRadius(value)

const GPUParticlesCollisionSphere3D_vmap =
  GPUParticlesCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticlesCollisionSphere3D]): Table[string, string] = GPUParticlesCollisionSphere3D_vmap