{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getWorldScale*(self: XRServer): float64 =
  expandMethodBind(className XRServer, "get_world_scale", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setWorldScale*(self: XRServer; scale: float64): void =
  expandMethodBind(className XRServer, "set_world_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale])

proc getWorldOrigin*(self: XRServer): Transform3D =
  expandMethodBind(className XRServer, "get_world_origin", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform3D)

proc setWorldOrigin*(self: XRServer; worldOrigin: Transform3D): void =
  expandMethodBind(className XRServer, "set_world_origin", 2952846383)
  methodbind.ptrcall(self, [getPtr worldOrigin])

proc getReferenceFrame*(self: XRServer): Transform3D =
  expandMethodBind(className XRServer, "get_reference_frame", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform3D)

proc clearReferenceFrame*(self: XRServer): void =
  expandMethodBind(className XRServer, "clear_reference_frame", 3218959716)
  methodbind.ptrcall(self, [])

proc centerOnHmd*(self: XRServer; rotationMode: XRServer_RotationMode; keepHeight: bool): void =
  expandMethodBind(className XRServer, "center_on_hmd", 1450904707)
  methodbind.ptrcall(self, [getPtr rotationMode, getPtr keepHeight])

proc getHmdTransform*(self: XRServer): Transform3D =
  expandMethodBind(className XRServer, "get_hmd_transform", 4183770049)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform3D)

proc addInterface*(self: XRServer; `interface`: gdref XRInterface): void =
  expandMethodBind(className XRServer, "add_interface", 1898711491)
  methodbind.ptrcall(self, [getPtr `interface`])

proc getInterfaceCount*(self: XRServer): int32 =
  expandMethodBind(className XRServer, "get_interface_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc removeInterface*(self: XRServer; `interface`: gdref XRInterface): void =
  expandMethodBind(className XRServer, "remove_interface", 1898711491)
  methodbind.ptrcall(self, [getPtr `interface`])

proc getInterface*(self: XRServer; idx: int32): gdref XRInterface =
  expandMethodBind(className XRServer, "get_interface", 4237347919)
  var ret: encoded gdref XRInterface
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(gdref XRInterface)

proc getInterfaces*(self: XRServer): TypedArray[Dictionary] =
  expandMethodBind(className XRServer, "get_interfaces", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc findInterface*(self: XRServer; name: String): gdref XRInterface =
  expandMethodBind(className XRServer, "find_interface", 1395192955)
  var ret: encoded gdref XRInterface
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(gdref XRInterface)

proc addTracker*(self: XRServer; tracker: gdref XRTracker): void =
  expandMethodBind(className XRServer, "add_tracker", 684804553)
  methodbind.ptrcall(self, [getPtr tracker])

proc removeTracker*(self: XRServer; tracker: gdref XRTracker): void =
  expandMethodBind(className XRServer, "remove_tracker", 684804553)
  methodbind.ptrcall(self, [getPtr tracker])

proc getTrackers*(self: XRServer; trackerTypes: int32): Dictionary =
  expandMethodBind(className XRServer, "get_trackers", 3554694381)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr trackerTypes], addr ret)
  (addr ret).decode_result(Dictionary)

proc getTracker*(self: XRServer; trackerName: StringName): gdref XRTracker =
  expandMethodBind(className XRServer, "get_tracker", 147382240)
  var ret: encoded gdref XRTracker
  methodbind.ptrcall(self, [getPtr trackerName], addr ret)
  (addr ret).decode_result(gdref XRTracker)

proc getPrimaryInterface*(self: XRServer): gdref XRInterface =
  expandMethodBind(className XRServer, "get_primary_interface", 2143545064)
  var ret: encoded gdref XRInterface
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref XRInterface)

proc setPrimaryInterface*(self: XRServer; `interface`: gdref XRInterface): void =
  expandMethodBind(className XRServer, "set_primary_interface", 1898711491)
  methodbind.ptrcall(self, [getPtr `interface`])

template worldScale*(self: XRServer): untyped = self.getWorldScale()
template `worldScale=`*(self: XRServer; value) = self.setWorldScale(value)

template worldOrigin*(self: XRServer): untyped = self.getWorldOrigin()
template `worldOrigin=`*(self: XRServer; value) = self.setWorldOrigin(value)

template primaryInterface*(self: XRServer): untyped = self.getPrimaryInterface()
template `primaryInterface=`*(self: XRServer; value) = self.setPrimaryInterface(value)

const XRServer_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRServer]): Table[string, string] = XRServer_vmap

proc referenceFrameChanged*(self: XRServer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("reference_frame_changed")
  self.emitSignal(signalname)

proc interfaceAdded*(self: XRServer; interfaceName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("interface_added")
  let args = [interfaceName]
  self.emitSignal(signalname, args)

proc interfaceRemoved*(self: XRServer; interfaceName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("interface_removed")
  let args = [interfaceName]
  self.emitSignal(signalname, args)

proc trackerAdded*(self: XRServer; trackerName: Variant; `type`: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tracker_added")
  let args = [trackerName, `type`]
  self.emitSignal(signalname, args)

proc trackerUpdated*(self: XRServer; trackerName: Variant; `type`: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tracker_updated")
  let args = [trackerName, `type`]
  self.emitSignal(signalname, args)

proc trackerRemoved*(self: XRServer; trackerName: Variant; `type`: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tracker_removed")
  let args = [trackerName, `type`]
  self.emitSignal(signalname, args)