{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

expandOnClassImported(GPUParticlesCollisionHeightField3D, GPUParticlesCollision3D)

proc setSize*(self: GPUParticlesCollisionHeightField3D; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: GPUParticlesCollisionHeightField3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setResolution*(self: GPUParticlesCollisionHeightField3D; resolution: GPUParticlesCollisionHeightField3D_Resolution): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "set_resolution", 1009996517)
  methodbind.ptrcall(self, [getPtr resolution], void)

proc getResolution*(self: GPUParticlesCollisionHeightField3D): GPUParticlesCollisionHeightField3D_Resolution =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "get_resolution", 1156065644)
  methodbind.ptrcall(self, [], GPUParticlesCollisionHeightField3D_Resolution)

proc setUpdateMode*(self: GPUParticlesCollisionHeightField3D; updateMode: GPUParticlesCollisionHeightField3D_UpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "set_update_mode", 673680859)
  methodbind.ptrcall(self, [getPtr updateMode], void)

proc getUpdateMode*(self: GPUParticlesCollisionHeightField3D): GPUParticlesCollisionHeightField3D_UpdateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "get_update_mode", 1998141380)
  methodbind.ptrcall(self, [], GPUParticlesCollisionHeightField3D_UpdateMode)

proc setHeightfieldMask*(self: GPUParticlesCollisionHeightField3D; heightfieldMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "set_heightfield_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr heightfieldMask], void)

proc getHeightfieldMask*(self: GPUParticlesCollisionHeightField3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "get_heightfield_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setHeightfieldMaskValue*(self: GPUParticlesCollisionHeightField3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "set_heightfield_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getHeightfieldMaskValue*(self: GPUParticlesCollisionHeightField3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "get_heightfield_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setFollowCameraEnabled*(self: GPUParticlesCollisionHeightField3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "set_follow_camera_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFollowCameraEnabled*(self: GPUParticlesCollisionHeightField3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticlesCollisionHeightField3D, "is_follow_camera_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template size*(self: GPUParticlesCollisionHeightField3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setSize(value)

template resolution*(self: GPUParticlesCollisionHeightField3D): untyped = self.getResolution()
template `resolution=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setResolution(value)

template updateMode*(self: GPUParticlesCollisionHeightField3D): untyped = self.getUpdateMode()
template `updateMode=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setUpdateMode(value)

template followCameraEnabled*(self: GPUParticlesCollisionHeightField3D): untyped = self.isFollowCameraEnabled()
template `followCameraEnabled=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setFollowCameraEnabled(value)

template heightfieldMask*(self: GPUParticlesCollisionHeightField3D): untyped = self.getHeightfieldMask()
template `heightfieldMask=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setHeightfieldMask(value)
