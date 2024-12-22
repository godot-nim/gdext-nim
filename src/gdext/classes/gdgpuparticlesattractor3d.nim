{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setCullMask*(self: GPUParticlesAttractor3D; mask: uint32): void =
  expandMethodBind(className GPUParticlesAttractor3D, "set_cull_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCullMask*(self: GPUParticlesAttractor3D): uint32 =
  expandMethodBind(className GPUParticlesAttractor3D, "get_cull_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setStrength*(self: GPUParticlesAttractor3D; strength: Float): void =
  expandMethodBind(className GPUParticlesAttractor3D, "set_strength", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStrength*(self: GPUParticlesAttractor3D): Float =
  expandMethodBind(className GPUParticlesAttractor3D, "get_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAttenuation*(self: GPUParticlesAttractor3D; attenuation: Float): void =
  expandMethodBind(className GPUParticlesAttractor3D, "set_attenuation", 373806689)
  var `?param` = [getPtr attenuation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttenuation*(self: GPUParticlesAttractor3D): Float =
  expandMethodBind(className GPUParticlesAttractor3D, "get_attenuation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDirectionality*(self: GPUParticlesAttractor3D; amount: Float): void =
  expandMethodBind(className GPUParticlesAttractor3D, "set_directionality", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirectionality*(self: GPUParticlesAttractor3D): Float =
  expandMethodBind(className GPUParticlesAttractor3D, "get_directionality", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template strength*(self: GPUParticlesAttractor3D): untyped = self.getStrength()
template `strength=`*(self: GPUParticlesAttractor3D; value) = self.setStrength(value)

template attenuation*(self: GPUParticlesAttractor3D): untyped = self.getAttenuation()
template `attenuation=`*(self: GPUParticlesAttractor3D; value) = self.setAttenuation(value)

template directionality*(self: GPUParticlesAttractor3D): untyped = self.getDirectionality()
template `directionality=`*(self: GPUParticlesAttractor3D; value) = self.setDirectionality(value)

template cullMask*(self: GPUParticlesAttractor3D): untyped = self.getCullMask()
template `cullMask=`*(self: GPUParticlesAttractor3D; value) = self.setCullMask(value)

const GPUParticlesAttractor3D_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticlesAttractor3D]): Table[string, string] = GPUParticlesAttractor3D_vmap