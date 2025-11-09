{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(World3D, Resource)

proc getSpace*(self: World3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "get_space", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getNavigationMap*(self: World3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getScenario*(self: World3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "get_scenario", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setEnvironment*(self: World3D; env: gdref Environment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "set_environment", 4143518816)
  methodbind.ptrcall(self, [getPtr env], void)

proc getEnvironment*(self: World3D): gdref Environment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "get_environment", 3082064660)
  methodbind.ptrcall(self, [], gdref Environment)

proc setFallbackEnvironment*(self: World3D; env: gdref Environment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "set_fallback_environment", 4143518816)
  methodbind.ptrcall(self, [getPtr env], void)

proc getFallbackEnvironment*(self: World3D): gdref Environment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "get_fallback_environment", 3082064660)
  methodbind.ptrcall(self, [], gdref Environment)

proc setCameraAttributes*(self: World3D; attributes: gdref CameraAttributes): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "set_camera_attributes", 2817810567)
  methodbind.ptrcall(self, [getPtr attributes], void)

proc getCameraAttributes*(self: World3D): gdref CameraAttributes =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "get_camera_attributes", 3921283215)
  methodbind.ptrcall(self, [], gdref CameraAttributes)

proc getDirectSpaceState*(self: World3D): PhysicsDirectSpaceState3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World3D, "get_direct_space_state", 2069328350)
  methodbind.ptrcall(self, [], PhysicsDirectSpaceState3D)

template environment*(self: World3D): untyped = self.getEnvironment()
template `environment=`*(self: World3D; value) = self.setEnvironment(value)

template fallbackEnvironment*(self: World3D): untyped = self.getFallbackEnvironment()
template `fallbackEnvironment=`*(self: World3D; value) = self.setFallbackEnvironment(value)

template cameraAttributes*(self: World3D): untyped = self.getCameraAttributes()
template `cameraAttributes=`*(self: World3D; value) = self.setCameraAttributes(value)

template space*(self: World3D): untyped = self.getSpace()

template navigationMap*(self: World3D): untyped = self.getNavigationMap()

template scenario*(self: World3D): untyped = self.getScenario()

template directSpaceState*(self: World3D): untyped = self.getDirectSpaceState()
