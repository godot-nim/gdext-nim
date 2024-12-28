{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setAabb*(self: VisibleOnScreenNotifier3D; rect: AABB): void =
  expandMethodBind(className VisibleOnScreenNotifier3D, "set_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr rect])

proc isOnScreen*(self: VisibleOnScreenNotifier3D): bool =
  expandMethodBind(className VisibleOnScreenNotifier3D, "is_on_screen", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template aabb*(self: VisibleOnScreenNotifier3D): untyped = self.getAabb()
template `aabb=`*(self: VisibleOnScreenNotifier3D; value) = self.setAabb(value)

const VisibleOnScreenNotifier3D_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisibleOnScreenNotifier3D]): Table[string, string] = VisibleOnScreenNotifier3D_vmap

proc screenEntered*(self: VisibleOnScreenNotifier3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("screen_entered")
  self.emitSignal(signalname)

proc screenExited*(self: VisibleOnScreenNotifier3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("screen_exited")
  self.emitSignal(signalname)