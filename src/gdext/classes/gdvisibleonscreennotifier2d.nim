{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setRect*(self: VisibleOnScreenNotifier2D; rect: Rect2): void =
  expandMethodBind(className VisibleOnScreenNotifier2D, "set_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect])

proc getRect*(self: VisibleOnScreenNotifier2D): Rect2 =
  expandMethodBind(className VisibleOnScreenNotifier2D, "get_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2)

proc isOnScreen*(self: VisibleOnScreenNotifier2D): bool =
  expandMethodBind(className VisibleOnScreenNotifier2D, "is_on_screen", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template rect*(self: VisibleOnScreenNotifier2D): untyped = self.getRect()
template `rect=`*(self: VisibleOnScreenNotifier2D; value) = self.setRect(value)

const VisibleOnScreenNotifier2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisibleOnScreenNotifier2D]): Table[string, string] = VisibleOnScreenNotifier2D_vmap

proc screenEntered*(self: VisibleOnScreenNotifier2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("screen_entered")
  self.emitSignal(signalname)

proc screenExited*(self: VisibleOnScreenNotifier2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("screen_exited")
  self.emitSignal(signalname)