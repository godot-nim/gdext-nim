{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(GPUParticlesAttractor3D, VisualInstance3D)

proc setCullMask*(self: GPUParticlesAttractor3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractor3D, "set_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCullMask*(self: GPUParticlesAttractor3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractor3D, "get_cull_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setStrength*(self: GPUParticlesAttractor3D; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractor3D, "set_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength], void)

proc getStrength*(self: GPUParticlesAttractor3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractor3D, "get_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAttenuation*(self: GPUParticlesAttractor3D; attenuation: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractor3D, "set_attenuation", 373806689)
  methodbind.ptrcall(self, [getPtr attenuation], void)

proc getAttenuation*(self: GPUParticlesAttractor3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractor3D, "get_attenuation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDirectionality*(self: GPUParticlesAttractor3D; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractor3D, "set_directionality", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getDirectionality*(self: GPUParticlesAttractor3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesAttractor3D, "get_directionality", 1740695150)
  methodbind.ptrcall(self, [], Float)

template strength*(self: GPUParticlesAttractor3D): untyped = self.getStrength()
template `strength=`*(self: GPUParticlesAttractor3D; value) = self.setStrength(value)

template attenuation*(self: GPUParticlesAttractor3D): untyped = self.getAttenuation()
template `attenuation=`*(self: GPUParticlesAttractor3D; value) = self.setAttenuation(value)

template directionality*(self: GPUParticlesAttractor3D): untyped = self.getDirectionality()
template `directionality=`*(self: GPUParticlesAttractor3D; value) = self.setDirectionality(value)

template cullMask*(self: GPUParticlesAttractor3D): untyped = self.getCullMask()
template `cullMask=`*(self: GPUParticlesAttractor3D; value) = self.setCullMask(value)
