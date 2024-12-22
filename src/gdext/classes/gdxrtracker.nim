{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getTrackerType*(self: XRTracker): XRServer_TrackerType =
  expandMethodBind(className XRTracker, "get_tracker_type", 2784508102)
  var ret: encoded XRServer_TrackerType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XRServer_TrackerType)

proc setTrackerType*(self: XRTracker; `type`: XRServer_TrackerType): void =
  expandMethodBind(className XRTracker, "set_tracker_type", 3055763575)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackerName*(self: XRTracker): StringName =
  expandMethodBind(className XRTracker, "get_tracker_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setTrackerName*(self: XRTracker; name: StringName): void =
  expandMethodBind(className XRTracker, "set_tracker_name", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackerDesc*(self: XRTracker): String =
  expandMethodBind(className XRTracker, "get_tracker_desc", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setTrackerDesc*(self: XRTracker; description: String): void =
  expandMethodBind(className XRTracker, "set_tracker_desc", 83702148)
  var `?param` = [getPtr description]
  methodbind.ptrcall(self, addr `?param`[0])

template `type`*(self: XRTracker): untyped = self.getTrackerType()
template `type=`*(self: XRTracker; value) = self.setTrackerType(value)

template name*(self: XRTracker): untyped = self.getTrackerName()
template `name=`*(self: XRTracker; value) = self.setTrackerName(value)

template description*(self: XRTracker): untyped = self.getTrackerDesc()
template `description=`*(self: XRTracker; value) = self.setTrackerDesc(value)

const XRTracker_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRTracker]): Table[string, string] = XRTracker_vmap