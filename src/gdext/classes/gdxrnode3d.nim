{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setTracker*(self: XrNode3D; trackerName: StringName): void =
  expandMethodBind(className XrNode3D, "set_tracker", 3304788590)
  var `?param` = [getPtr trackerName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTracker*(self: XrNode3D): StringName =
  expandMethodBind(className XrNode3D, "get_tracker", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setPoseName*(self: XrNode3D; pose: StringName): void =
  expandMethodBind(className XrNode3D, "set_pose_name", 3304788590)
  var `?param` = [getPtr pose]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPoseName*(self: XrNode3D): StringName =
  expandMethodBind(className XrNode3D, "get_pose_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setShowWhenTracked*(self: XrNode3D; show: bool): void =
  expandMethodBind(className XrNode3D, "set_show_when_tracked", 2586408642)
  var `?param` = [getPtr show]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShowWhenTracked*(self: XrNode3D): bool =
  expandMethodBind(className XrNode3D, "get_show_when_tracked", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getIsActive*(self: XrNode3D): bool =
  expandMethodBind(className XrNode3D, "get_is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getHasTrackingData*(self: XrNode3D): bool =
  expandMethodBind(className XrNode3D, "get_has_tracking_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPose*(self: XrNode3D): gdref XrPose =
  expandMethodBind(className XrNode3D, "get_pose", 2806551826)
  var ret: encoded gdref XrPose
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref XrPose)

proc triggerHapticPulse*(self: XrNode3D; actionName: String; frequency: float64; amplitude: float64; durationSec: float64; delaySec: float64): void =
  expandMethodBind(className XrNode3D, "trigger_haptic_pulse", 508576839)
  var `?param` = [getPtr actionName, getPtr frequency, getPtr amplitude, getPtr durationSec, getPtr delaySec]
  methodbind.ptrcall(self, addr `?param`[0])

template tracker*(self: XrNode3D): untyped = self.getTracker()
template `tracker=`*(self: XrNode3D; value) = self.setTracker(value)

template pose*(self: XrNode3D): untyped = self.getPoseName()
template `pose=`*(self: XrNode3D; value) = self.setPoseName(value)

template showWhenTracked*(self: XrNode3D): untyped = self.getShowWhenTracked()
template `showWhenTracked=`*(self: XrNode3D; value) = self.setShowWhenTracked(value)

const XrNode3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrNode3D]): Table[string, string] = XrNode3D_vmap

proc trackingChanged*(self: XrNode3D; tracking: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tracking_changed")
  let args = [tracking]
  self.emitSignal(signalname, args)