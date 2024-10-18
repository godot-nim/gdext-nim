{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getTrackerType*(self: XrTracker): XrServer_TrackerType =
  expandMethodBind(className XrTracker, "get_tracker_type", 2784508102)
  var ret: encoded XrServer_TrackerType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrServer_TrackerType)

proc setTrackerType*(self: XrTracker; `type`: XrServer_TrackerType): void =
  expandMethodBind(className XrTracker, "set_tracker_type", 3055763575)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackerName*(self: XrTracker): StringName =
  expandMethodBind(className XrTracker, "get_tracker_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setTrackerName*(self: XrTracker; name: StringName): void =
  expandMethodBind(className XrTracker, "set_tracker_name", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackerDesc*(self: XrTracker): String =
  expandMethodBind(className XrTracker, "get_tracker_desc", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setTrackerDesc*(self: XrTracker; description: String): void =
  expandMethodBind(className XrTracker, "set_tracker_desc", 83702148)
  var `?param` = [getPtr description]
  methodbind.ptrcall(self, addr `?param`[0])

template `type`*(self: XrTracker): untyped = self.getTrackerType()
template `type=`*(self: XrTracker; value) = self.setTrackerType(value)

template name*(self: XrTracker): untyped = self.getTrackerName()
template `name=`*(self: XrTracker; value) = self.setTrackerName(value)

template description*(self: XrTracker): untyped = self.getTrackerDesc()
template `description=`*(self: XrTracker; value) = self.setTrackerDesc(value)

const XrTracker_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrTracker]): Table[string, string] = XrTracker_vmap