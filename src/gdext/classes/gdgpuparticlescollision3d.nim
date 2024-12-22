{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setCullMask*(self: GPUParticlesCollision3D; mask: uint32): void =
  expandMethodBind(className GPUParticlesCollision3D, "set_cull_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCullMask*(self: GPUParticlesCollision3D): uint32 =
  expandMethodBind(className GPUParticlesCollision3D, "get_cull_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template cullMask*(self: GPUParticlesCollision3D): untyped = self.getCullMask()
template `cullMask=`*(self: GPUParticlesCollision3D; value) = self.setCullMask(value)

const GPUParticlesCollision3D_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticlesCollision3D]): Table[string, string] = GPUParticlesCollision3D_vmap