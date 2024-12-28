{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

proc setSize*(self: GPUParticlesCollisionBox3D; size: Vector3): void =
  expandMethodBind(className GPUParticlesCollisionBox3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: GPUParticlesCollisionBox3D): Vector3 =
  expandMethodBind(className GPUParticlesCollisionBox3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

template size*(self: GPUParticlesCollisionBox3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesCollisionBox3D; value) = self.setSize(value)

const GPUParticlesCollisionBox3D_vmap =
  GPUParticlesCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticlesCollisionBox3D]): Table[string, string] = GPUParticlesCollisionBox3D_vmap