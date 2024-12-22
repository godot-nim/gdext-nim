{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrtracker; export gdxrtracker

proc getTrackerProfile*(self: XRPositionalTracker): String =
  expandMethodBind(className XRPositionalTracker, "get_tracker_profile", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setTrackerProfile*(self: XRPositionalTracker; profile: String): void =
  expandMethodBind(className XRPositionalTracker, "set_tracker_profile", 83702148)
  var `?param` = [getPtr profile]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackerHand*(self: XRPositionalTracker): XRPositionalTracker_TrackerHand =
  expandMethodBind(className XRPositionalTracker, "get_tracker_hand", 4181770860)
  var ret: encoded XRPositionalTracker_TrackerHand
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XRPositionalTracker_TrackerHand)

proc setTrackerHand*(self: XRPositionalTracker; hand: XRPositionalTracker_TrackerHand): void =
  expandMethodBind(className XRPositionalTracker, "set_tracker_hand", 3904108980)
  var `?param` = [getPtr hand]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasPose*(self: XRPositionalTracker; name: StringName): bool =
  expandMethodBind(className XRPositionalTracker, "has_pose", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPose*(self: XRPositionalTracker; name: StringName): gdref XRPose =
  expandMethodBind(className XRPositionalTracker, "get_pose", 4099720006)
  var `?param` = [getPtr name]
  var ret: encoded gdref XRPose
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref XRPose)

proc invalidatePose*(self: XRPositionalTracker; name: StringName): void =
  expandMethodBind(className XRPositionalTracker, "invalidate_pose", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPose*(self: XRPositionalTracker; name: StringName; transform: Transform3D; linearVelocity: Vector3; angularVelocity: Vector3; trackingConfidence: XRPose_TrackingConfidence): void =
  expandMethodBind(className XRPositionalTracker, "set_pose", 3451230163)
  var `?param` = [getPtr name, getPtr transform, getPtr linearVelocity, getPtr angularVelocity, getPtr trackingConfidence]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInput*(self: XRPositionalTracker; name: StringName): Variant =
  expandMethodBind(className XRPositionalTracker, "get_input", 2760726917)
  var `?param` = [getPtr name]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setInput*(self: XRPositionalTracker; name: StringName; value: Variant): void =
  expandMethodBind(className XRPositionalTracker, "set_input", 3776071444)
  var `?param` = [getPtr name, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

template profile*(self: XRPositionalTracker): untyped = self.getTrackerProfile()
template `profile=`*(self: XRPositionalTracker; value) = self.setTrackerProfile(value)

template hand*(self: XRPositionalTracker): untyped = self.getTrackerHand()
template `hand=`*(self: XRPositionalTracker; value) = self.setTrackerHand(value)

const XRPositionalTracker_vmap =
  XRTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRPositionalTracker]): Table[string, string] = XRPositionalTracker_vmap

proc poseChanged*(self: XRPositionalTracker; pose: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pose_changed")
  let args = [pose]
  self.emitSignal(signalname, args)

proc poseLostTracking*(self: XRPositionalTracker; pose: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pose_lost_tracking")
  let args = [pose]
  self.emitSignal(signalname, args)

proc buttonPressed*(self: XRPositionalTracker; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_pressed")
  let args = [name]
  self.emitSignal(signalname, args)

proc buttonReleased*(self: XRPositionalTracker; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_released")
  let args = [name]
  self.emitSignal(signalname, args)

proc inputFloatChanged*(self: XRPositionalTracker; name: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_float_changed")
  let args = [name, value]
  self.emitSignal(signalname, args)

proc inputVector2Changed*(self: XRPositionalTracker; name: Variant; vector: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_vector2_changed")
  let args = [name, vector]
  self.emitSignal(signalname, args)

proc profileChanged*(self: XRPositionalTracker; role: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("profile_changed")
  let args = [role]
  self.emitSignal(signalname, args)