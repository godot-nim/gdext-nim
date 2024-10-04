{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setCullMask*(self: GpuParticlesAttractor3D; mask: uint32): void =
  expandMethodBind(className GpuParticlesAttractor3D, "set_cull_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCullMask*(self: GpuParticlesAttractor3D): uint32 =
  expandMethodBind(className GpuParticlesAttractor3D, "get_cull_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setStrength*(self: GpuParticlesAttractor3D; strength: Float): void =
  expandMethodBind(className GpuParticlesAttractor3D, "set_strength", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStrength*(self: GpuParticlesAttractor3D): Float =
  expandMethodBind(className GpuParticlesAttractor3D, "get_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAttenuation*(self: GpuParticlesAttractor3D; attenuation: Float): void =
  expandMethodBind(className GpuParticlesAttractor3D, "set_attenuation", 373806689)
  var `?param` = [getPtr attenuation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttenuation*(self: GpuParticlesAttractor3D): Float =
  expandMethodBind(className GpuParticlesAttractor3D, "get_attenuation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDirectionality*(self: GpuParticlesAttractor3D; amount: Float): void =
  expandMethodBind(className GpuParticlesAttractor3D, "set_directionality", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirectionality*(self: GpuParticlesAttractor3D): Float =
  expandMethodBind(className GpuParticlesAttractor3D, "get_directionality", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template strength*(self: GpuParticlesAttractor3D): untyped = self.getStrength()
template `strength=`*(self: GpuParticlesAttractor3D; value) = self.setStrength(value)

template attenuation*(self: GpuParticlesAttractor3D): untyped = self.getAttenuation()
template `attenuation=`*(self: GpuParticlesAttractor3D; value) = self.setAttenuation(value)

template directionality*(self: GpuParticlesAttractor3D): untyped = self.getDirectionality()
template `directionality=`*(self: GpuParticlesAttractor3D; value) = self.setDirectionality(value)

template cullMask*(self: GpuParticlesAttractor3D): untyped = self.getCullMask()
template `cullMask=`*(self: GpuParticlesAttractor3D; value) = self.setCullMask(value)

const GpuParticlesAttractor3D_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticlesAttractor3D]): Table[string, string] = GpuParticlesAttractor3D_vmap