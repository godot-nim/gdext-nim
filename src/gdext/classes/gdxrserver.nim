{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc getWorldScale*(self: XrServer): float64 =
  expandMethodBind(className XrServer, "get_world_scale", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setWorldScale*(self: XrServer; scale: float64): void =
  expandMethodBind(className XrServer, "set_world_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWorldOrigin*(self: XrServer): Transform3D =
  expandMethodBind(className XrServer, "get_world_origin", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setWorldOrigin*(self: XrServer; worldOrigin: Transform3D): void =
  expandMethodBind(className XrServer, "set_world_origin", 2952846383)
  var `?param` = [getPtr worldOrigin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getReferenceFrame*(self: XrServer): Transform3D =
  expandMethodBind(className XrServer, "get_reference_frame", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc clearReferenceFrame*(self: XrServer): void =
  expandMethodBind(className XrServer, "clear_reference_frame", 3218959716)
  methodbind.ptrcall(self, nil)

proc centerOnHmd*(self: XrServer; rotationMode: XrServer_RotationMode; keepHeight: bool): void =
  expandMethodBind(className XrServer, "center_on_hmd", 1450904707)
  var `?param` = [getPtr rotationMode, getPtr keepHeight]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHmdTransform*(self: XrServer): Transform3D =
  expandMethodBind(className XrServer, "get_hmd_transform", 4183770049)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc addInterface*(self: XrServer; `interface`: gdref XrInterface): void =
  expandMethodBind(className XrServer, "add_interface", 1898711491)
  var `?param` = [getPtr `interface`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInterfaceCount*(self: XrServer): int32 =
  expandMethodBind(className XrServer, "get_interface_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc removeInterface*(self: XrServer; `interface`: gdref XrInterface): void =
  expandMethodBind(className XrServer, "remove_interface", 1898711491)
  var `?param` = [getPtr `interface`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInterface*(self: XrServer; idx: int32): gdref XrInterface =
  expandMethodBind(className XrServer, "get_interface", 4237347919)
  var `?param` = [getPtr idx]
  var ret: encoded gdref XrInterface
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref XrInterface)

proc getInterfaces*(self: XrServer): TypedArray[Dictionary] =
  expandMethodBind(className XrServer, "get_interfaces", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc findInterface*(self: XrServer; name: String): gdref XrInterface =
  expandMethodBind(className XrServer, "find_interface", 1395192955)
  var `?param` = [getPtr name]
  var ret: encoded gdref XrInterface
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref XrInterface)

proc addTracker*(self: XrServer; tracker: gdref XrTracker): void =
  expandMethodBind(className XrServer, "add_tracker", 684804553)
  var `?param` = [getPtr tracker]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeTracker*(self: XrServer; tracker: gdref XrTracker): void =
  expandMethodBind(className XrServer, "remove_tracker", 684804553)
  var `?param` = [getPtr tracker]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackers*(self: XrServer; trackerTypes: int32): Dictionary =
  expandMethodBind(className XrServer, "get_trackers", 3554694381)
  var `?param` = [getPtr trackerTypes]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc getTracker*(self: XrServer; trackerName: StringName): gdref XrTracker =
  expandMethodBind(className XrServer, "get_tracker", 147382240)
  var `?param` = [getPtr trackerName]
  var ret: encoded gdref XrTracker
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref XrTracker)

proc getPrimaryInterface*(self: XrServer): gdref XrInterface =
  expandMethodBind(className XrServer, "get_primary_interface", 2143545064)
  var ret: encoded gdref XrInterface
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref XrInterface)

proc setPrimaryInterface*(self: XrServer; `interface`: gdref XrInterface): void =
  expandMethodBind(className XrServer, "set_primary_interface", 1898711491)
  var `?param` = [getPtr `interface`]
  methodbind.ptrcall(self, addr `?param`[0])

template worldScale*(self: XrServer): untyped = self.getWorldScale()
template `worldScale=`*(self: XrServer; value) = self.setWorldScale(value)

template worldOrigin*(self: XrServer): untyped = self.getWorldOrigin()
template `worldOrigin=`*(self: XrServer; value) = self.setWorldOrigin(value)

template primaryInterface*(self: XrServer): untyped = self.getPrimaryInterface()
template `primaryInterface=`*(self: XrServer; value) = self.setPrimaryInterface(value)

const XrServer_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrServer]): Table[string, string] = XrServer_vmap

proc referenceFrameChanged*(self: XrServer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("reference_frame_changed")
  self.emitSignal(signalname)

proc interfaceAdded*(self: XrServer; interfaceName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("interface_added")
  let args = [interfaceName]
  self.emitSignal(signalname, args)

proc interfaceRemoved*(self: XrServer; interfaceName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("interface_removed")
  let args = [interfaceName]
  self.emitSignal(signalname, args)

proc trackerAdded*(self: XrServer; trackerName: Variant; `type`: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tracker_added")
  let args = [trackerName, `type`]
  self.emitSignal(signalname, args)

proc trackerUpdated*(self: XrServer; trackerName: Variant; `type`: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tracker_updated")
  let args = [trackerName, `type`]
  self.emitSignal(signalname, args)

proc trackerRemoved*(self: XrServer; trackerName: Variant; `type`: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tracker_removed")
  let args = [trackerName, `type`]
  self.emitSignal(signalname, args)