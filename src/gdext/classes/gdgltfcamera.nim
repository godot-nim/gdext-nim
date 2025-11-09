{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFCamera, Resource)

proc fromNode*(_: typedesc[GLTFCamera]; cameraNode: Camera3D): gdref GLTFCamera =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "from_node", 237784)
  methodbind.ptrcall([getPtr cameraNode], gdref GLTFCamera)

proc toNode*(self: GLTFCamera): Camera3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "to_node", 2285090890)
  methodbind.ptrcall(self, [], Camera3D)

proc fromDictionary*(_: typedesc[GLTFCamera]; dictionary: Dictionary): gdref GLTFCamera =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "from_dictionary", 2495512509)
  methodbind.ptrcall([getPtr dictionary], gdref GLTFCamera)

proc toDictionary*(self: GLTFCamera): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "to_dictionary", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getPerspective*(self: GLTFCamera): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "get_perspective", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPerspective*(self: GLTFCamera; perspective: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "set_perspective", 2586408642)
  methodbind.ptrcall(self, [getPtr perspective], void)

proc getFov*(self: GLTFCamera): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "get_fov", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFov*(self: GLTFCamera; fov: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "set_fov", 373806689)
  methodbind.ptrcall(self, [getPtr fov], void)

proc getSizeMag*(self: GLTFCamera): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "get_size_mag", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSizeMag*(self: GLTFCamera; sizeMag: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "set_size_mag", 373806689)
  methodbind.ptrcall(self, [getPtr sizeMag], void)

proc getDepthFar*(self: GLTFCamera): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "get_depth_far", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDepthFar*(self: GLTFCamera; zdepthFar: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "set_depth_far", 373806689)
  methodbind.ptrcall(self, [getPtr zdepthFar], void)

proc getDepthNear*(self: GLTFCamera): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "get_depth_near", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDepthNear*(self: GLTFCamera; zdepthNear: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFCamera, "set_depth_near", 373806689)
  methodbind.ptrcall(self, [getPtr zdepthNear], void)

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
