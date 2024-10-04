{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdxrtracker; export gdxrtracker

proc getTrackerProfile*(self: XrPositionalTracker): String =
  expandMethodBind(className XrPositionalTracker, "get_tracker_profile", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setTrackerProfile*(self: XrPositionalTracker; profile: String): void =
  expandMethodBind(className XrPositionalTracker, "set_tracker_profile", 83702148)
  var `?param` = [getPtr profile]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackerHand*(self: XrPositionalTracker): XrPositionalTracker_TrackerHand =
  expandMethodBind(className XrPositionalTracker, "get_tracker_hand", 4181770860)
  var ret: encoded XrPositionalTracker_TrackerHand
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrPositionalTracker_TrackerHand)

proc setTrackerHand*(self: XrPositionalTracker; hand: XrPositionalTracker_TrackerHand): void =
  expandMethodBind(className XrPositionalTracker, "set_tracker_hand", 3904108980)
  var `?param` = [getPtr hand]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasPose*(self: XrPositionalTracker; name: StringName): bool =
  expandMethodBind(className XrPositionalTracker, "has_pose", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPose*(self: XrPositionalTracker; name: StringName): gdref XrPose =
  expandMethodBind(className XrPositionalTracker, "get_pose", 4099720006)
  var `?param` = [getPtr name]
  var ret: encoded gdref XrPose
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref XrPose)

proc invalidatePose*(self: XrPositionalTracker; name: StringName): void =
  expandMethodBind(className XrPositionalTracker, "invalidate_pose", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPose*(self: XrPositionalTracker; name: StringName; transform: Transform3D; linearVelocity: Vector3; angularVelocity: Vector3; trackingConfidence: XrPose_TrackingConfidence): void =
  expandMethodBind(className XrPositionalTracker, "set_pose", 3451230163)
  var `?param` = [getPtr name, getPtr transform, getPtr linearVelocity, getPtr angularVelocity, getPtr trackingConfidence]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInput*(self: XrPositionalTracker; name: StringName): Variant =
  expandMethodBind(className XrPositionalTracker, "get_input", 2760726917)
  var `?param` = [getPtr name]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setInput*(self: XrPositionalTracker; name: StringName; value: Variant): void =
  expandMethodBind(className XrPositionalTracker, "set_input", 3776071444)
  var `?param` = [getPtr name, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

template profile*(self: XrPositionalTracker): untyped = self.getTrackerProfile()
template `profile=`*(self: XrPositionalTracker; value) = self.setTrackerProfile(value)

template hand*(self: XrPositionalTracker): untyped = self.getTrackerHand()
template `hand=`*(self: XrPositionalTracker; value) = self.setTrackerHand(value)

const XrPositionalTracker_vmap =
  XrTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrPositionalTracker]): Table[string, string] = XrPositionalTracker_vmap

proc poseChanged*(self: XrPositionalTracker; pose: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pose_changed")
  let args = [pose]
  self.emitSignal(signalname, args)

proc poseLostTracking*(self: XrPositionalTracker; pose: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pose_lost_tracking")
  let args = [pose]
  self.emitSignal(signalname, args)

proc buttonPressed*(self: XrPositionalTracker; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_pressed")
  let args = [name]
  self.emitSignal(signalname, args)

proc buttonReleased*(self: XrPositionalTracker; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_released")
  let args = [name]
  self.emitSignal(signalname, args)

proc inputFloatChanged*(self: XrPositionalTracker; name: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_float_changed")
  let args = [name, value]
  self.emitSignal(signalname, args)

proc inputVector2Changed*(self: XrPositionalTracker; name: Variant; vector: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_vector2_changed")
  let args = [name, vector]
  self.emitSignal(signalname, args)

proc profileChanged*(self: XrPositionalTracker; role: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("profile_changed")
  let args = [role]
  self.emitSignal(signalname, args)