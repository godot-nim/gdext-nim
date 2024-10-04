{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getSpace*(self: World3D): Rid =
  expandMethodBind(className World3D, "get_space", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getNavigationMap*(self: World3D): Rid =
  expandMethodBind(className World3D, "get_navigation_map", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getScenario*(self: World3D): Rid =
  expandMethodBind(className World3D, "get_scenario", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setEnvironment*(self: World3D; env: gdref Environment): void =
  expandMethodBind(className World3D, "set_environment", 4143518816)
  var `?param` = [getPtr env]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironment*(self: World3D): gdref Environment =
  expandMethodBind(className World3D, "get_environment", 3082064660)
  var ret: encoded gdref Environment
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Environment)

proc setFallbackEnvironment*(self: World3D; env: gdref Environment): void =
  expandMethodBind(className World3D, "set_fallback_environment", 4143518816)
  var `?param` = [getPtr env]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackEnvironment*(self: World3D): gdref Environment =
  expandMethodBind(className World3D, "get_fallback_environment", 3082064660)
  var ret: encoded gdref Environment
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Environment)

proc setCameraAttributes*(self: World3D; attributes: gdref CameraAttributes): void =
  expandMethodBind(className World3D, "set_camera_attributes", 2817810567)
  var `?param` = [getPtr attributes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameraAttributes*(self: World3D): gdref CameraAttributes =
  expandMethodBind(className World3D, "get_camera_attributes", 3921283215)
  var ret: encoded gdref CameraAttributes
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CameraAttributes)

proc getDirectSpaceState*(self: World3D): PhysicsDirectSpaceState3D =
  expandMethodBind(className World3D, "get_direct_space_state", 2069328350)
  var ret: encoded PhysicsDirectSpaceState3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PhysicsDirectSpaceState3D)

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

const World3D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[World3D]): Table[string, string] = World3D_vmap