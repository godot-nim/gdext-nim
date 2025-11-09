{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(XRTracker, RefCounted)

proc getTrackerType*(self: XRTracker): XRServer_TrackerType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRTracker, "get_tracker_type", 2784508102)
  methodbind.ptrcall(self, [], XRServer_TrackerType)

proc setTrackerType*(self: XRTracker; `type`: XRServer_TrackerType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRTracker, "set_tracker_type", 3055763575)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getTrackerName*(self: XRTracker): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRTracker, "get_tracker_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setTrackerName*(self: XRTracker; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRTracker, "set_tracker_name", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getTrackerDesc*(self: XRTracker): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRTracker, "get_tracker_desc", 201670096)
  methodbind.ptrcall(self, [], String)

proc setTrackerDesc*(self: XRTracker; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRTracker, "set_tracker_desc", 83702148)
  methodbind.ptrcall(self, [getPtr description], void)

template `type`*(self: XRTracker): untyped = self.getTrackerType()
template `type=`*(self: XRTracker; value) = self.setTrackerType(value)

template name*(self: XRTracker): untyped = self.getTrackerName()
template `name=`*(self: XRTracker; value) = self.setTrackerName(value)

template description*(self: XRTracker): untyped = self.getTrackerDesc()
template `description=`*(self: XRTracker; value) = self.setTrackerDesc(value)
