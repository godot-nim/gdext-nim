{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(VoxelGI, VisualInstance3D)

proc setProbeData*(self: VoxelGI; data: gdref VoxelGIData): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "set_probe_data", 1637849675)
  methodbind.ptrcall(self, [getPtr data], void)

proc getProbeData*(self: VoxelGI): gdref VoxelGIData =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "get_probe_data", 1730645405)
  methodbind.ptrcall(self, [], gdref VoxelGIData)

proc setSubdiv*(self: VoxelGI; subdiv: VoxelGI_Subdiv): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "set_subdiv", 2240898472)
  methodbind.ptrcall(self, [getPtr subdiv], void)

proc getSubdiv*(self: VoxelGI): VoxelGI_Subdiv =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "get_subdiv", 4261647950)
  methodbind.ptrcall(self, [], VoxelGI_Subdiv)

proc setSize*(self: VoxelGI; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: VoxelGI): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setCameraAttributes*(self: VoxelGI; cameraAttributes: gdref CameraAttributes): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "set_camera_attributes", 2817810567)
  methodbind.ptrcall(self, [getPtr cameraAttributes], void)

proc getCameraAttributes*(self: VoxelGI): gdref CameraAttributes =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "get_camera_attributes", 3921283215)
  methodbind.ptrcall(self, [], gdref CameraAttributes)

proc bake*(self: VoxelGI; fromNode: Node = default Node; createVisualDebug: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "bake", 2781551026)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr createVisualDebug], void)

proc debugBake*(self: VoxelGI): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGI, "debug_bake", 3218959716)
  methodbind.ptrcall(self, [], void)

template subdiv*(self: VoxelGI): untyped = self.getSubdiv()
template `subdiv=`*(self: VoxelGI; value) = self.setSubdiv(value)

template size*(self: VoxelGI): untyped = self.getSize()
template `size=`*(self: VoxelGI; value) = self.setSize(value)

template cameraAttributes*(self: VoxelGI): untyped = self.getCameraAttributes()
template `cameraAttributes=`*(self: VoxelGI; value) = self.setCameraAttributes(value)

template data*(self: VoxelGI): untyped = self.getProbeData()
template `data=`*(self: VoxelGI; value) = self.setProbeData(value)
