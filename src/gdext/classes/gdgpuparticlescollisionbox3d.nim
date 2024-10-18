{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

proc setSize*(self: GpuParticlesCollisionBox3D; size: Vector3): void =
  expandMethodBind(className GpuParticlesCollisionBox3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: GpuParticlesCollisionBox3D): Vector3 =
  expandMethodBind(className GpuParticlesCollisionBox3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

template size*(self: GpuParticlesCollisionBox3D): untyped = self.getSize()
template `size=`*(self: GpuParticlesCollisionBox3D; value) = self.setSize(value)

const GpuParticlesCollisionBox3D_vmap =
  GpuParticlesCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticlesCollisionBox3D]): Table[string, string] = GpuParticlesCollisionBox3D_vmap