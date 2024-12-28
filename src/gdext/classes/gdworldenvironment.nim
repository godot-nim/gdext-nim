{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc setEnvironment*(self: WorldEnvironment; env: gdref Environment): void =
  expandMethodBind(className WorldEnvironment, "set_environment", 4143518816)
  methodbind.ptrcall(self, [getPtr env])

proc getEnvironment*(self: WorldEnvironment): gdref Environment =
  expandMethodBind(className WorldEnvironment, "get_environment", 3082064660)
  var ret: encoded gdref Environment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Environment)

proc setCameraAttributes*(self: WorldEnvironment; cameraAttributes: gdref CameraAttributes): void =
  expandMethodBind(className WorldEnvironment, "set_camera_attributes", 2817810567)
  methodbind.ptrcall(self, [getPtr cameraAttributes])

proc getCameraAttributes*(self: WorldEnvironment): gdref CameraAttributes =
  expandMethodBind(className WorldEnvironment, "get_camera_attributes", 3921283215)
  var ret: encoded gdref CameraAttributes
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref CameraAttributes)

proc setCompositor*(self: WorldEnvironment; compositor: gdref Compositor): void =
  expandMethodBind(className WorldEnvironment, "set_compositor", 1586754307)
  methodbind.ptrcall(self, [getPtr compositor])

proc getCompositor*(self: WorldEnvironment): gdref Compositor =
  expandMethodBind(className WorldEnvironment, "get_compositor", 3647707413)
  var ret: encoded gdref Compositor
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Compositor)

template environment*(self: WorldEnvironment): untyped = self.getEnvironment()
template `environment=`*(self: WorldEnvironment; value) = self.setEnvironment(value)

template cameraAttributes*(self: WorldEnvironment): untyped = self.getCameraAttributes()
template `cameraAttributes=`*(self: WorldEnvironment; value) = self.setCameraAttributes(value)

template compositor*(self: WorldEnvironment): untyped = self.getCompositor()
template `compositor=`*(self: WorldEnvironment; value) = self.setCompositor(value)

const WorldEnvironment_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WorldEnvironment]): Table[string, string] = WorldEnvironment_vmap