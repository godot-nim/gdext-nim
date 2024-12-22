{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setProbeData*(self: VoxelGI; data: gdref VoxelGIData): void =
  expandMethodBind(className VoxelGI, "set_probe_data", 1637849675)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProbeData*(self: VoxelGI): gdref VoxelGIData =
  expandMethodBind(className VoxelGI, "get_probe_data", 1730645405)
  var ret: encoded gdref VoxelGIData
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref VoxelGIData)

proc setSubdiv*(self: VoxelGI; subdiv: VoxelGI_Subdiv): void =
  expandMethodBind(className VoxelGI, "set_subdiv", 2240898472)
  var `?param` = [getPtr subdiv]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubdiv*(self: VoxelGI): VoxelGI_Subdiv =
  expandMethodBind(className VoxelGI, "get_subdiv", 4261647950)
  var ret: encoded VoxelGI_Subdiv
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VoxelGI_Subdiv)

proc setSize*(self: VoxelGI; size: Vector3): void =
  expandMethodBind(className VoxelGI, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: VoxelGI): Vector3 =
  expandMethodBind(className VoxelGI, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setCameraAttributes*(self: VoxelGI; cameraAttributes: gdref CameraAttributes): void =
  expandMethodBind(className VoxelGI, "set_camera_attributes", 2817810567)
  var `?param` = [getPtr cameraAttributes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameraAttributes*(self: VoxelGI): gdref CameraAttributes =
  expandMethodBind(className VoxelGI, "get_camera_attributes", 3921283215)
  var ret: encoded gdref CameraAttributes
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CameraAttributes)

proc bake*(self: VoxelGI; fromNode: Node = default Node; createVisualDebug: bool = false): void =
  expandMethodBind(className VoxelGI, "bake", 2781551026)
  var `?param` = [getPtr fromNode, getPtr createVisualDebug]
  methodbind.ptrcall(self, addr `?param`[0])

proc debugBake*(self: VoxelGI): void =
  expandMethodBind(className VoxelGI, "debug_bake", 3218959716)
  methodbind.ptrcall(self, nil)

template subdiv*(self: VoxelGI): untyped = self.getSubdiv()
template `subdiv=`*(self: VoxelGI; value) = self.setSubdiv(value)

template size*(self: VoxelGI): untyped = self.getSize()
template `size=`*(self: VoxelGI; value) = self.setSize(value)

template cameraAttributes*(self: VoxelGI): untyped = self.getCameraAttributes()
template `cameraAttributes=`*(self: VoxelGI; value) = self.setCameraAttributes(value)

template data*(self: VoxelGI): untyped = self.getProbeData()
template `data=`*(self: VoxelGI; value) = self.setProbeData(value)

const VoxelGI_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VoxelGI]): Table[string, string] = VoxelGI_vmap