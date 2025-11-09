{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(GPUParticlesCollision3D, VisualInstance3D)

proc setCullMask*(self: GPUParticlesCollision3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollision3D, "set_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCullMask*(self: GPUParticlesCollision3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollision3D, "get_cull_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

template cullMask*(self: GPUParticlesCollision3D): untyped = self.getCullMask()
template `cullMask=`*(self: GPUParticlesCollision3D; value) = self.setCullMask(value)
