{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(BackBufferCopy, Node2D)

proc setRect*(self: BackBufferCopy; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BackBufferCopy, "set_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect], void)

proc getRect*(self: BackBufferCopy): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BackBufferCopy, "get_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setCopyMode*(self: BackBufferCopy; copyMode: BackBufferCopy_CopyMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BackBufferCopy, "set_copy_mode", 1713538590)
  methodbind.ptrcall(self, [getPtr copyMode], void)

proc getCopyMode*(self: BackBufferCopy): BackBufferCopy_CopyMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BackBufferCopy, "get_copy_mode", 3271169440)
  methodbind.ptrcall(self, [], BackBufferCopy_CopyMode)

template copyMode*(self: BackBufferCopy): untyped = self.getCopyMode()
template `copyMode=`*(self: BackBufferCopy; value) = self.setCopyMode(value)

template rect*(self: BackBufferCopy): untyped = self.getRect()
template `rect=`*(self: BackBufferCopy; value) = self.setRect(value)
