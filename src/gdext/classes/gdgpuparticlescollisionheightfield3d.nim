{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

proc setSize*(self: GPUParticlesCollisionHeightField3D; size: Vector3): void =
  expandMethodBind(className GPUParticlesCollisionHeightField3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: GPUParticlesCollisionHeightField3D): Vector3 =
  expandMethodBind(className GPUParticlesCollisionHeightField3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setResolution*(self: GPUParticlesCollisionHeightField3D; resolution: GPUParticlesCollisionHeightField3D_Resolution): void =
  expandMethodBind(className GPUParticlesCollisionHeightField3D, "set_resolution", 1009996517)
  var `?param` = [getPtr resolution]
  methodbind.ptrcall(self, addr `?param`[0])

proc getResolution*(self: GPUParticlesCollisionHeightField3D): GPUParticlesCollisionHeightField3D_Resolution =
  expandMethodBind(className GPUParticlesCollisionHeightField3D, "get_resolution", 1156065644)
  var ret: encoded GPUParticlesCollisionHeightField3D_Resolution
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GPUParticlesCollisionHeightField3D_Resolution)

proc setUpdateMode*(self: GPUParticlesCollisionHeightField3D; updateMode: GPUParticlesCollisionHeightField3D_UpdateMode): void =
  expandMethodBind(className GPUParticlesCollisionHeightField3D, "set_update_mode", 673680859)
  var `?param` = [getPtr updateMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUpdateMode*(self: GPUParticlesCollisionHeightField3D): GPUParticlesCollisionHeightField3D_UpdateMode =
  expandMethodBind(className GPUParticlesCollisionHeightField3D, "get_update_mode", 1998141380)
  var ret: encoded GPUParticlesCollisionHeightField3D_UpdateMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GPUParticlesCollisionHeightField3D_UpdateMode)

proc setFollowCameraEnabled*(self: GPUParticlesCollisionHeightField3D; enabled: bool): void =
  expandMethodBind(className GPUParticlesCollisionHeightField3D, "set_follow_camera_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFollowCameraEnabled*(self: GPUParticlesCollisionHeightField3D): bool =
  expandMethodBind(className GPUParticlesCollisionHeightField3D, "is_follow_camera_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template size*(self: GPUParticlesCollisionHeightField3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setSize(value)

template resolution*(self: GPUParticlesCollisionHeightField3D): untyped = self.getResolution()
template `resolution=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setResolution(value)

template updateMode*(self: GPUParticlesCollisionHeightField3D): untyped = self.getUpdateMode()
template `updateMode=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setUpdateMode(value)

template followCameraEnabled*(self: GPUParticlesCollisionHeightField3D): untyped = self.isFollowCameraEnabled()
template `followCameraEnabled=`*(self: GPUParticlesCollisionHeightField3D; value) = self.setFollowCameraEnabled(value)

const GPUParticlesCollisionHeightField3D_vmap =
  GPUParticlesCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticlesCollisionHeightField3D]): Table[string, string] = GPUParticlesCollisionHeightField3D_vmap