{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setRect*(self: BackBufferCopy; rect: Rect2): void =
  expandMethodBind(className BackBufferCopy, "set_rect", 2046264180)
  var `?param` = [getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRect*(self: BackBufferCopy): Rect2 =
  expandMethodBind(className BackBufferCopy, "get_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setCopyMode*(self: BackBufferCopy; copyMode: BackBufferCopy_CopyMode): void =
  expandMethodBind(className BackBufferCopy, "set_copy_mode", 1713538590)
  var `?param` = [getPtr copyMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCopyMode*(self: BackBufferCopy): BackBufferCopy_CopyMode =
  expandMethodBind(className BackBufferCopy, "get_copy_mode", 3271169440)
  var ret: encoded BackBufferCopy_CopyMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(BackBufferCopy_CopyMode)

template copyMode*(self: BackBufferCopy): untyped = self.getCopyMode()
template `copyMode=`*(self: BackBufferCopy; value) = self.setCopyMode(value)

template rect*(self: BackBufferCopy): untyped = self.getRect()
template `rect=`*(self: BackBufferCopy; value) = self.setRect(value)

const BackBufferCopy_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[BackBufferCopy]): Table[string, string] = BackBufferCopy_vmap