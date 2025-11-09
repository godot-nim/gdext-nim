{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(VisibleOnScreenNotifier2D, Node2D)

proc setRect*(self: VisibleOnScreenNotifier2D; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenNotifier2D, "set_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect], void)

proc getRect*(self: VisibleOnScreenNotifier2D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenNotifier2D, "get_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setShowRect*(self: VisibleOnScreenNotifier2D; showRect: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenNotifier2D, "set_show_rect", 2586408642)
  methodbind.ptrcall(self, [getPtr showRect], void)

proc isShowingRect*(self: VisibleOnScreenNotifier2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenNotifier2D, "is_showing_rect", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isOnScreen*(self: VisibleOnScreenNotifier2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenNotifier2D, "is_on_screen", 36873697)
  methodbind.ptrcall(self, [], bool)

template rect*(self: VisibleOnScreenNotifier2D): untyped = self.getRect()
template `rect=`*(self: VisibleOnScreenNotifier2D; value) = self.setRect(value)

template showRect*(self: VisibleOnScreenNotifier2D): untyped = self.isShowingRect()
template `showRect=`*(self: VisibleOnScreenNotifier2D; value) = self.setShowRect(value)
