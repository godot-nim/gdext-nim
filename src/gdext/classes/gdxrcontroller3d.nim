{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdxrnode3d; export gdxrnode3d

proc isButtonPressed*(self: XrController3D; name: StringName): bool =
  expandMethodBind(className XrController3D, "is_button_pressed", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getInput*(self: XrController3D; name: StringName): Variant =
  expandMethodBind(className XrController3D, "get_input", 2760726917)
  var `?param` = [getPtr name]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc getFloat*(self: XrController3D; name: StringName): Float =
  expandMethodBind(className XrController3D, "get_float", 2349060816)
  var `?param` = [getPtr name]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getVector2*(self: XrController3D; name: StringName): Vector2 =
  expandMethodBind(className XrController3D, "get_vector2", 3100822709)
  var `?param` = [getPtr name]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getTrackerHand*(self: XrController3D): XrPositionalTracker_TrackerHand =
  expandMethodBind(className XrController3D, "get_tracker_hand", 4181770860)
  var ret: encoded XrPositionalTracker_TrackerHand
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrPositionalTracker_TrackerHand)

const XrController3D_vmap =
  XrNode3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrController3D]): Table[string, string] = XrController3D_vmap

proc buttonPressed*(self: XrController3D; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_pressed")
  let args = [name]
  self.emitSignal(signalname, args)

proc buttonReleased*(self: XrController3D; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_released")
  let args = [name]
  self.emitSignal(signalname, args)

proc inputFloatChanged*(self: XrController3D; name: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_float_changed")
  let args = [name, value]
  self.emitSignal(signalname, args)

proc inputVector2Changed*(self: XrController3D; name: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_vector2_changed")
  let args = [name, value]
  self.emitSignal(signalname, args)

proc profileChanged*(self: XrController3D; role: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("profile_changed")
  let args = [role]
  self.emitSignal(signalname, args)