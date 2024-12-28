{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrnode3d; export gdxrnode3d

proc isButtonPressed*(self: XRController3D; name: StringName): bool =
  expandMethodBind(className XRController3D, "is_button_pressed", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc getInput*(self: XRController3D; name: StringName): Variant =
  expandMethodBind(className XRController3D, "get_input", 2760726917)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Variant)

proc getFloat*(self: XRController3D; name: StringName): Float =
  expandMethodBind(className XRController3D, "get_float", 2349060816)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Float)

proc getVector2*(self: XRController3D; name: StringName): Vector2 =
  expandMethodBind(className XRController3D, "get_vector2", 3100822709)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Vector2)

proc getTrackerHand*(self: XRController3D): XRPositionalTracker_TrackerHand =
  expandMethodBind(className XRController3D, "get_tracker_hand", 4181770860)
  var ret: encoded XRPositionalTracker_TrackerHand
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(XRPositionalTracker_TrackerHand)

const XRController3D_vmap =
  XRNode3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRController3D]): Table[string, string] = XRController3D_vmap

proc buttonPressed*(self: XRController3D; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_pressed")
  let args = [name]
  self.emitSignal(signalname, args)

proc buttonReleased*(self: XRController3D; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_released")
  let args = [name]
  self.emitSignal(signalname, args)

proc inputFloatChanged*(self: XRController3D; name: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_float_changed")
  let args = [name, value]
  self.emitSignal(signalname, args)

proc inputVector2Changed*(self: XRController3D; name: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_vector2_changed")
  let args = [name, value]
  self.emitSignal(signalname, args)

proc profileChanged*(self: XRController3D; role: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("profile_changed")
  let args = [role]
  self.emitSignal(signalname, args)