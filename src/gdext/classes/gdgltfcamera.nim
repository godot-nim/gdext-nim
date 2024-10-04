{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc fromNode*(_: GltfCamera; cameraNode: Camera3D): gdref GltfCamera =
  expandMethodBind(className GltfCamera, "from_node", 237784)
  var `?param` = [getPtr cameraNode]
  var ret: encoded gdref GltfCamera
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfCamera)

proc toNode*(self: GltfCamera): Camera3D =
  expandMethodBind(className GltfCamera, "to_node", 2285090890)
  var ret: encoded Camera3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Camera3D)

proc fromDictionary*(_: GltfCamera; dictionary: Dictionary): gdref GltfCamera =
  expandMethodBind(className GltfCamera, "from_dictionary", 2495512509)
  var `?param` = [getPtr dictionary]
  var ret: encoded gdref GltfCamera
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfCamera)

proc toDictionary*(self: GltfCamera): Dictionary =
  expandMethodBind(className GltfCamera, "to_dictionary", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getPerspective*(self: GltfCamera): bool =
  expandMethodBind(className GltfCamera, "get_perspective", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPerspective*(self: GltfCamera; perspective: bool): void =
  expandMethodBind(className GltfCamera, "set_perspective", 2586408642)
  var `?param` = [getPtr perspective]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFov*(self: GltfCamera): Float =
  expandMethodBind(className GltfCamera, "get_fov", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFov*(self: GltfCamera; fov: Float): void =
  expandMethodBind(className GltfCamera, "set_fov", 373806689)
  var `?param` = [getPtr fov]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSizeMag*(self: GltfCamera): Float =
  expandMethodBind(className GltfCamera, "get_size_mag", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSizeMag*(self: GltfCamera; sizeMag: Float): void =
  expandMethodBind(className GltfCamera, "set_size_mag", 373806689)
  var `?param` = [getPtr sizeMag]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthFar*(self: GltfCamera): Float =
  expandMethodBind(className GltfCamera, "get_depth_far", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDepthFar*(self: GltfCamera; zdepthFar: Float): void =
  expandMethodBind(className GltfCamera, "set_depth_far", 373806689)
  var `?param` = [getPtr zdepthFar]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthNear*(self: GltfCamera): Float =
  expandMethodBind(className GltfCamera, "get_depth_near", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDepthNear*(self: GltfCamera; zdepthNear: Float): void =
  expandMethodBind(className GltfCamera, "set_depth_near", 373806689)
  var `?param` = [getPtr zdepthNear]
  methodbind.ptrcall(self, addr `?param`[0])

template perspective*(self: GltfCamera): untyped = self.getPerspective()
template `perspective=`*(self: GltfCamera; value) = self.setPerspective(value)

template fov*(self: GltfCamera): untyped = self.getFov()
template `fov=`*(self: GltfCamera; value) = self.setFov(value)

template sizeMag*(self: GltfCamera): untyped = self.getSizeMag()
template `sizeMag=`*(self: GltfCamera; value) = self.setSizeMag(value)

template depthFar*(self: GltfCamera): untyped = self.getDepthFar()
template `depthFar=`*(self: GltfCamera; value) = self.setDepthFar(value)

template depthNear*(self: GltfCamera): untyped = self.getDepthNear()
template `depthNear=`*(self: GltfCamera; value) = self.setDepthNear(value)

const GltfCamera_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfCamera]): Table[string, string] = GltfCamera_vmap