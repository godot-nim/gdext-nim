{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(VisibleOnScreenNotifier2D, Node2D)

proc setRect*(self: VisibleOnScreenNotifier2D; rect: Rect2): void =
  expandMethodBind(className VisibleOnScreenNotifier2D, "set_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect])

proc getRect*(self: VisibleOnScreenNotifier2D): Rect2 =
  expandMethodBind(className VisibleOnScreenNotifier2D, "get_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2)

proc setShowRect*(self: VisibleOnScreenNotifier2D; showRect: bool): void =
  expandMethodBind(className VisibleOnScreenNotifier2D, "set_show_rect", 2586408642)
  methodbind.ptrcall(self, [getPtr showRect])

proc isShowingRect*(self: VisibleOnScreenNotifier2D): bool =
  expandMethodBind(className VisibleOnScreenNotifier2D, "is_showing_rect", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isOnScreen*(self: VisibleOnScreenNotifier2D): bool =
  expandMethodBind(className VisibleOnScreenNotifier2D, "is_on_screen", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template rect*(self: VisibleOnScreenNotifier2D): untyped = self.getRect()
template `rect=`*(self: VisibleOnScreenNotifier2D; value) = self.setRect(value)

template showRect*(self: VisibleOnScreenNotifier2D): untyped = self.isShowingRect()
template `showRect=`*(self: VisibleOnScreenNotifier2D; value) = self.setShowRect(value)
