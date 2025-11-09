{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

expandOnClassImported(GPUParticlesCollisionSDF3D, GPUParticlesCollision3D)

proc setSize*(self: GPUParticlesCollisionSDF3D; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: GPUParticlesCollisionSDF3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setResolution*(self: GPUParticlesCollisionSDF3D; resolution: GPUParticlesCollisionSDF3D_Resolution): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "set_resolution", 1155629297)
  methodbind.ptrcall(self, [getPtr resolution], void)

proc getResolution*(self: GPUParticlesCollisionSDF3D): GPUParticlesCollisionSDF3D_Resolution =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "get_resolution", 2919555867)
  methodbind.ptrcall(self, [], GPUParticlesCollisionSDF3D_Resolution)

proc setTexture*(self: GPUParticlesCollisionSDF3D; texture: gdref Texture3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "set_texture", 1188404210)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: GPUParticlesCollisionSDF3D): gdref Texture3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "get_texture", 373985333)
  methodbind.ptrcall(self, [], gdref Texture3D)

proc setThickness*(self: GPUParticlesCollisionSDF3D; thickness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "set_thickness", 373806689)
  methodbind.ptrcall(self, [getPtr thickness], void)

proc getThickness*(self: GPUParticlesCollisionSDF3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "get_thickness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBakeMask*(self: GPUParticlesCollisionSDF3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "set_bake_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getBakeMask*(self: GPUParticlesCollisionSDF3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "get_bake_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setBakeMaskValue*(self: GPUParticlesCollisionSDF3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "set_bake_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getBakeMaskValue*(self: GPUParticlesCollisionSDF3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionSDF3D, "get_bake_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

template size*(self: GPUParticlesCollisionSDF3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesCollisionSDF3D; value) = self.setSize(value)

template resolution*(self: GPUParticlesCollisionSDF3D): untyped = self.getResolution()
template `resolution=`*(self: GPUParticlesCollisionSDF3D; value) = self.setResolution(value)

template thickness*(self: GPUParticlesCollisionSDF3D): untyped = self.getThickness()
template `thickness=`*(self: GPUParticlesCollisionSDF3D; value) = self.setThickness(value)

template bakeMask*(self: GPUParticlesCollisionSDF3D): untyped = self.getBakeMask()
template `bakeMask=`*(self: GPUParticlesCollisionSDF3D; value) = self.setBakeMask(value)

template texture*(self: GPUParticlesCollisionSDF3D): untyped = self.getTexture()
template `texture=`*(self: GPUParticlesCollisionSDF3D; value) = self.setTexture(value)
