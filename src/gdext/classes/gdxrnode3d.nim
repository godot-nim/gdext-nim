{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setTracker*(self: XRNode3D; trackerName: StringName): void =
  expandMethodBind(className XRNode3D, "set_tracker", 3304788590)
  var `?param` = [getPtr trackerName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTracker*(self: XRNode3D): StringName =
  expandMethodBind(className XRNode3D, "get_tracker", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setPoseName*(self: XRNode3D; pose: StringName): void =
  expandMethodBind(className XRNode3D, "set_pose_name", 3304788590)
  var `?param` = [getPtr pose]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPoseName*(self: XRNode3D): StringName =
  expandMethodBind(className XRNode3D, "get_pose_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setShowWhenTracked*(self: XRNode3D; show: bool): void =
  expandMethodBind(className XRNode3D, "set_show_when_tracked", 2586408642)
  var `?param` = [getPtr show]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShowWhenTracked*(self: XRNode3D): bool =
  expandMethodBind(className XRNode3D, "get_show_when_tracked", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getIsActive*(self: XRNode3D): bool =
  expandMethodBind(className XRNode3D, "get_is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getHasTrackingData*(self: XRNode3D): bool =
  expandMethodBind(className XRNode3D, "get_has_tracking_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPose*(self: XRNode3D): gdref XRPose =
  expandMethodBind(className XRNode3D, "get_pose", 2806551826)
  var ret: encoded gdref XRPose
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref XRPose)

proc triggerHapticPulse*(self: XRNode3D; actionName: String; frequency: float64; amplitude: float64; durationSec: float64; delaySec: float64): void =
  expandMethodBind(className XRNode3D, "trigger_haptic_pulse", 508576839)
  var `?param` = [getPtr actionName, getPtr frequency, getPtr amplitude, getPtr durationSec, getPtr delaySec]
  methodbind.ptrcall(self, addr `?param`[0])

template tracker*(self: XRNode3D): untyped = self.getTracker()
template `tracker=`*(self: XRNode3D; value) = self.setTracker(value)

template pose*(self: XRNode3D): untyped = self.getPoseName()
template `pose=`*(self: XRNode3D; value) = self.setPoseName(value)

template showWhenTracked*(self: XRNode3D): untyped = self.getShowWhenTracked()
template `showWhenTracked=`*(self: XRNode3D; value) = self.setShowWhenTracked(value)

const XRNode3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRNode3D]): Table[string, string] = XRNode3D_vmap

proc trackingChanged*(self: XRNode3D; tracking: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tracking_changed")
  let args = [tracking]
  self.emitSignal(signalname, args)