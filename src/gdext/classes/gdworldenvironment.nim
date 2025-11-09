{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(WorldEnvironment, Node)

proc setEnvironment*(self: WorldEnvironment; env: gdref Environment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldEnvironment, "set_environment", 4143518816)
  methodbind.ptrcall(self, [getPtr env], void)

proc getEnvironment*(self: WorldEnvironment): gdref Environment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldEnvironment, "get_environment", 3082064660)
  methodbind.ptrcall(self, [], gdref Environment)

proc setCameraAttributes*(self: WorldEnvironment; cameraAttributes: gdref CameraAttributes): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldEnvironment, "set_camera_attributes", 2817810567)
  methodbind.ptrcall(self, [getPtr cameraAttributes], void)

proc getCameraAttributes*(self: WorldEnvironment): gdref CameraAttributes =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldEnvironment, "get_camera_attributes", 3921283215)
  methodbind.ptrcall(self, [], gdref CameraAttributes)

proc setCompositor*(self: WorldEnvironment; compositor: gdref Compositor): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldEnvironment, "set_compositor", 1586754307)
  methodbind.ptrcall(self, [getPtr compositor], void)

proc getCompositor*(self: WorldEnvironment): gdref Compositor =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldEnvironment, "get_compositor", 3647707413)
  methodbind.ptrcall(self, [], gdref Compositor)

template environment*(self: WorldEnvironment): untyped = self.getEnvironment()
template `environment=`*(self: WorldEnvironment; value) = self.setEnvironment(value)

template cameraAttributes*(self: WorldEnvironment): untyped = self.getCameraAttributes()
template `cameraAttributes=`*(self: WorldEnvironment; value) = self.setCameraAttributes(value)

template compositor*(self: WorldEnvironment): untyped = self.getCompositor()
template `compositor=`*(self: WorldEnvironment; value) = self.setCompositor(value)
