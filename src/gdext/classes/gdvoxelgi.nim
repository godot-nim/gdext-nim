{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setProbeData*(self: VoxelGi; data: gdref VoxelGiData): void =
  expandMethodBind(className VoxelGi, "set_probe_data", 1637849675)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProbeData*(self: VoxelGi): gdref VoxelGiData =
  expandMethodBind(className VoxelGi, "get_probe_data", 1730645405)
  var ret: encoded gdref VoxelGiData
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref VoxelGiData)

proc setSubdiv*(self: VoxelGi; subdiv: VoxelGi_Subdiv): void =
  expandMethodBind(className VoxelGi, "set_subdiv", 2240898472)
  var `?param` = [getPtr subdiv]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubdiv*(self: VoxelGi): VoxelGi_Subdiv =
  expandMethodBind(className VoxelGi, "get_subdiv", 4261647950)
  var ret: encoded VoxelGi_Subdiv
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VoxelGi_Subdiv)

proc setSize*(self: VoxelGi; size: Vector3): void =
  expandMethodBind(className VoxelGi, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: VoxelGi): Vector3 =
  expandMethodBind(className VoxelGi, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setCameraAttributes*(self: VoxelGi; cameraAttributes: gdref CameraAttributes): void =
  expandMethodBind(className VoxelGi, "set_camera_attributes", 2817810567)
  var `?param` = [getPtr cameraAttributes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameraAttributes*(self: VoxelGi): gdref CameraAttributes =
  expandMethodBind(className VoxelGi, "get_camera_attributes", 3921283215)
  var ret: encoded gdref CameraAttributes
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CameraAttributes)

proc bake*(self: VoxelGi; fromNode: Node = default Node; createVisualDebug: bool = false): void =
  expandMethodBind(className VoxelGi, "bake", 2781551026)
  var `?param` = [getPtr fromNode, getPtr createVisualDebug]
  methodbind.ptrcall(self, addr `?param`[0])

proc debugBake*(self: VoxelGi): void =
  expandMethodBind(className VoxelGi, "debug_bake", 3218959716)
  methodbind.ptrcall(self, nil)

template subdiv*(self: VoxelGi): untyped = self.getSubdiv()
template `subdiv=`*(self: VoxelGi; value) = self.setSubdiv(value)

template size*(self: VoxelGi): untyped = self.getSize()
template `size=`*(self: VoxelGi; value) = self.setSize(value)

template cameraAttributes*(self: VoxelGi): untyped = self.getCameraAttributes()
template `cameraAttributes=`*(self: VoxelGi; value) = self.setCameraAttributes(value)

template data*(self: VoxelGi): untyped = self.getProbeData()
template `data=`*(self: VoxelGi; value) = self.setProbeData(value)

const VoxelGi_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VoxelGi]): Table[string, string] = VoxelGi_vmap