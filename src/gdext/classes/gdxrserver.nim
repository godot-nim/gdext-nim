{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(XRServer, Object)

proc getWorldScale*(self: XRServer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_world_scale", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setWorldScale*(self: XRServer; scale: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "set_world_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getWorldOrigin*(self: XRServer): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_world_origin", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc setWorldOrigin*(self: XRServer; worldOrigin: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "set_world_origin", 2952846383)
  methodbind.ptrcall(self, [getPtr worldOrigin], void)

proc getReferenceFrame*(self: XRServer): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_reference_frame", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc clearReferenceFrame*(self: XRServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "clear_reference_frame", 3218959716)
  methodbind.ptrcall(self, [], void)

proc centerOnHmd*(self: XRServer; rotationMode: XRServer_RotationMode; keepHeight: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "center_on_hmd", 1450904707)
  methodbind.ptrcall(self, [getPtr rotationMode, getPtr keepHeight], void)

proc getHmdTransform*(self: XRServer): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_hmd_transform", 4183770049)
  methodbind.ptrcall(self, [], Transform3D)

proc setCameraLockedToOrigin*(self: XRServer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "set_camera_locked_to_origin", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCameraLockedToOrigin*(self: XRServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "is_camera_locked_to_origin", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addInterface*(self: XRServer; `interface`: gdref XRInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "add_interface", 1898711491)
  methodbind.ptrcall(self, [getPtr `interface`], void)

proc getInterfaceCount*(self: XRServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_interface_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc removeInterface*(self: XRServer; `interface`: gdref XRInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "remove_interface", 1898711491)
  methodbind.ptrcall(self, [getPtr `interface`], void)

proc getInterface*(self: XRServer; idx: int32): gdref XRInterface =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_interface", 4237347919)
  methodbind.ptrcall(self, [getPtr idx], gdref XRInterface)

proc getInterfaces*(self: XRServer): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_interfaces", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc findInterface*(self: XRServer; name: String): gdref XRInterface =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "find_interface", 1395192955)
  methodbind.ptrcall(self, [getPtr name], gdref XRInterface)

proc addTracker*(self: XRServer; tracker: gdref XRTracker): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "add_tracker", 684804553)
  methodbind.ptrcall(self, [getPtr tracker], void)

proc removeTracker*(self: XRServer; tracker: gdref XRTracker): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "remove_tracker", 684804553)
  methodbind.ptrcall(self, [getPtr tracker], void)

proc getTrackers*(self: XRServer; trackerTypes: int32): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_trackers", 3554694381)
  methodbind.ptrcall(self, [getPtr trackerTypes], Dictionary)

proc getTracker*(self: XRServer; trackerName: StringName): gdref XRTracker =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_tracker", 147382240)
  methodbind.ptrcall(self, [getPtr trackerName], gdref XRTracker)

proc getPrimaryInterface*(self: XRServer): gdref XRInterface =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "get_primary_interface", 2143545064)
  methodbind.ptrcall(self, [], gdref XRInterface)

proc setPrimaryInterface*(self: XRServer; `interface`: gdref XRInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRServer, "set_primary_interface", 1898711491)
  methodbind.ptrcall(self, [getPtr `interface`], void)

template worldScale*(self: XRServer): untyped = self.getWorldScale()
template `worldScale=`*(self: XRServer; value) = self.setWorldScale(value)

template worldOrigin*(self: XRServer): untyped = self.getWorldOrigin()
template `worldOrigin=`*(self: XRServer; value) = self.setWorldOrigin(value)

template cameraLockedToOrigin*(self: XRServer): untyped = self.isCameraLockedToOrigin()
template `cameraLockedToOrigin=`*(self: XRServer; value) = self.setCameraLockedToOrigin(value)

template primaryInterface*(self: XRServer): untyped = self.getPrimaryInterface()
template `primaryInterface=`*(self: XRServer; value) = self.setPrimaryInterface(value)
