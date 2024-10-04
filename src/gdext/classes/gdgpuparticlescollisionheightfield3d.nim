{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

proc setSize*(self: GpuParticlesCollisionHeightField3D; size: Vector3): void =
  expandMethodBind(className GpuParticlesCollisionHeightField3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: GpuParticlesCollisionHeightField3D): Vector3 =
  expandMethodBind(className GpuParticlesCollisionHeightField3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setResolution*(self: GpuParticlesCollisionHeightField3D; resolution: GpuParticlesCollisionHeightField3D_Resolution): void =
  expandMethodBind(className GpuParticlesCollisionHeightField3D, "set_resolution", 1009996517)
  var `?param` = [getPtr resolution]
  methodbind.ptrcall(self, addr `?param`[0])

proc getResolution*(self: GpuParticlesCollisionHeightField3D): GpuParticlesCollisionHeightField3D_Resolution =
  expandMethodBind(className GpuParticlesCollisionHeightField3D, "get_resolution", 1156065644)
  var ret: encoded GpuParticlesCollisionHeightField3D_Resolution
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GpuParticlesCollisionHeightField3D_Resolution)

proc setUpdateMode*(self: GpuParticlesCollisionHeightField3D; updateMode: GpuParticlesCollisionHeightField3D_UpdateMode): void =
  expandMethodBind(className GpuParticlesCollisionHeightField3D, "set_update_mode", 673680859)
  var `?param` = [getPtr updateMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUpdateMode*(self: GpuParticlesCollisionHeightField3D): GpuParticlesCollisionHeightField3D_UpdateMode =
  expandMethodBind(className GpuParticlesCollisionHeightField3D, "get_update_mode", 1998141380)
  var ret: encoded GpuParticlesCollisionHeightField3D_UpdateMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GpuParticlesCollisionHeightField3D_UpdateMode)

proc setFollowCameraEnabled*(self: GpuParticlesCollisionHeightField3D; enabled: bool): void =
  expandMethodBind(className GpuParticlesCollisionHeightField3D, "set_follow_camera_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFollowCameraEnabled*(self: GpuParticlesCollisionHeightField3D): bool =
  expandMethodBind(className GpuParticlesCollisionHeightField3D, "is_follow_camera_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template size*(self: GpuParticlesCollisionHeightField3D): untyped = self.getSize()
template `size=`*(self: GpuParticlesCollisionHeightField3D; value) = self.setSize(value)

template resolution*(self: GpuParticlesCollisionHeightField3D): untyped = self.getResolution()
template `resolution=`*(self: GpuParticlesCollisionHeightField3D; value) = self.setResolution(value)

template updateMode*(self: GpuParticlesCollisionHeightField3D): untyped = self.getUpdateMode()
template `updateMode=`*(self: GpuParticlesCollisionHeightField3D; value) = self.setUpdateMode(value)

template followCameraEnabled*(self: GpuParticlesCollisionHeightField3D): untyped = self.isFollowCameraEnabled()
template `followCameraEnabled=`*(self: GpuParticlesCollisionHeightField3D; value) = self.setFollowCameraEnabled(value)

const GpuParticlesCollisionHeightField3D_vmap =
  GpuParticlesCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticlesCollisionHeightField3D]): Table[string, string] = GpuParticlesCollisionHeightField3D_vmap