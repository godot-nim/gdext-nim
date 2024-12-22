{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc fromNode*(_: typedesc[GLTFCamera]; cameraNode: Camera3D): gdref GLTFCamera =
  expandMethodBind(className GLTFCamera, "from_node", 237784)
  var `?param` = [getPtr cameraNode]
  var ret: encoded gdref GLTFCamera
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GLTFCamera)

proc toNode*(self: GLTFCamera): Camera3D =
  expandMethodBind(className GLTFCamera, "to_node", 2285090890)
  var ret: encoded Camera3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Camera3D)

proc fromDictionary*(_: typedesc[GLTFCamera]; dictionary: Dictionary): gdref GLTFCamera =
  expandMethodBind(className GLTFCamera, "from_dictionary", 2495512509)
  var `?param` = [getPtr dictionary]
  var ret: encoded gdref GLTFCamera
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GLTFCamera)

proc toDictionary*(self: GLTFCamera): Dictionary =
  expandMethodBind(className GLTFCamera, "to_dictionary", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getPerspective*(self: GLTFCamera): bool =
  expandMethodBind(className GLTFCamera, "get_perspective", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPerspective*(self: GLTFCamera; perspective: bool): void =
  expandMethodBind(className GLTFCamera, "set_perspective", 2586408642)
  var `?param` = [getPtr perspective]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFov*(self: GLTFCamera): Float =
  expandMethodBind(className GLTFCamera, "get_fov", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFov*(self: GLTFCamera; fov: Float): void =
  expandMethodBind(className GLTFCamera, "set_fov", 373806689)
  var `?param` = [getPtr fov]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSizeMag*(self: GLTFCamera): Float =
  expandMethodBind(className GLTFCamera, "get_size_mag", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSizeMag*(self: GLTFCamera; sizeMag: Float): void =
  expandMethodBind(className GLTFCamera, "set_size_mag", 373806689)
  var `?param` = [getPtr sizeMag]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthFar*(self: GLTFCamera): Float =
  expandMethodBind(className GLTFCamera, "get_depth_far", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDepthFar*(self: GLTFCamera; zdepthFar: Float): void =
  expandMethodBind(className GLTFCamera, "set_depth_far", 373806689)
  var `?param` = [getPtr zdepthFar]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthNear*(self: GLTFCamera): Float =
  expandMethodBind(className GLTFCamera, "get_depth_near", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDepthNear*(self: GLTFCamera; zdepthNear: Float): void =
  expandMethodBind(className GLTFCamera, "set_depth_near", 373806689)
  var `?param` = [getPtr zdepthNear]
  methodbind.ptrcall(self, addr `?param`[0])

template perspective*(self: GLTFCamera): untyped = self.getPerspective()
template `perspective=`*(self: GLTFCamera; value) = self.setPerspective(value)

template fov*(self: GLTFCamera): untyped = self.getFov()
template `fov=`*(self: GLTFCamera; value) = self.setFov(value)

template sizeMag*(self: GLTFCamera): untyped = self.getSizeMag()
template `sizeMag=`*(self: GLTFCamera; value) = self.setSizeMag(value)

template depthFar*(self: GLTFCamera): untyped = self.getDepthFar()
template `depthFar=`*(self: GLTFCamera; value) = self.setDepthFar(value)

template depthNear*(self: GLTFCamera): untyped = self.getDepthNear()
template `depthNear=`*(self: GLTFCamera; value) = self.setDepthNear(value)

const GLTFCamera_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFCamera]): Table[string, string] = GLTFCamera_vmap