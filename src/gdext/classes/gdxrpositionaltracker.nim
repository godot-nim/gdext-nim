{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrtracker; export gdxrtracker

expandOnClassImported(XRPositionalTracker, XRTracker)

proc getTrackerProfile*(self: XRPositionalTracker): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "get_tracker_profile", 201670096)
  methodbind.ptrcall(self, [], String)

proc setTrackerProfile*(self: XRPositionalTracker; profile: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "set_tracker_profile", 83702148)
  methodbind.ptrcall(self, [getPtr profile], void)

proc getTrackerHand*(self: XRPositionalTracker): XRPositionalTracker_TrackerHand =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "get_tracker_hand", 4181770860)
  methodbind.ptrcall(self, [], XRPositionalTracker_TrackerHand)

proc setTrackerHand*(self: XRPositionalTracker; hand: XRPositionalTracker_TrackerHand): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "set_tracker_hand", 3904108980)
  methodbind.ptrcall(self, [getPtr hand], void)

proc hasPose*(self: XRPositionalTracker; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "has_pose", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getPose*(self: XRPositionalTracker; name: StringName): gdref XRPose =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "get_pose", 4099720006)
  methodbind.ptrcall(self, [getPtr name], gdref XRPose)

proc invalidatePose*(self: XRPositionalTracker; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "invalidate_pose", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc setPose*(self: XRPositionalTracker; name: StringName; transform: Transform3D; linearVelocity: Vector3; angularVelocity: Vector3; trackingConfidence: XRPose_TrackingConfidence): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "set_pose", 3451230163)
  methodbind.ptrcall(self, [getPtr name, getPtr transform, getPtr linearVelocity, getPtr angularVelocity, getPtr trackingConfidence], void)

proc getInput*(self: XRPositionalTracker; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "get_input", 2760726917)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc setInput*(self: XRPositionalTracker; name: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPositionalTracker, "set_input", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

template profile*(self: XRPositionalTracker): untyped = self.getTrackerProfile()
template `profile=`*(self: XRPositionalTracker; value) = self.setTrackerProfile(value)

template hand*(self: XRPositionalTracker): untyped = self.getTrackerHand()
template `hand=`*(self: XRPositionalTracker; value) = self.setTrackerHand(value)
