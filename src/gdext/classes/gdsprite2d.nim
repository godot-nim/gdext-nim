{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Sprite2D, Node2D)

proc setTexture*(self: Sprite2D; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: Sprite2D): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setCentered*(self: Sprite2D; centered: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_centered", 2586408642)
  methodbind.ptrcall(self, [getPtr centered], void)

proc isCentered*(self: Sprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "is_centered", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOffset*(self: Sprite2D; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: Sprite2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setFlipH*(self: Sprite2D; flipH: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_flip_h", 2586408642)
  methodbind.ptrcall(self, [getPtr flipH], void)

proc isFlippedH*(self: Sprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "is_flipped_h", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFlipV*(self: Sprite2D; flipV: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_flip_v", 2586408642)
  methodbind.ptrcall(self, [getPtr flipV], void)

proc isFlippedV*(self: Sprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "is_flipped_v", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRegionEnabled*(self: Sprite2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_region_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isRegionEnabled*(self: Sprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "is_region_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isPixelOpaque*(self: Sprite2D; pos: Vector2): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "is_pixel_opaque", 556197845)
  methodbind.ptrcall(self, [getPtr pos], bool)

proc setRegionRect*(self: Sprite2D; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_region_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect], void)

proc getRegionRect*(self: Sprite2D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "get_region_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setRegionFilterClipEnabled*(self: Sprite2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_region_filter_clip_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isRegionFilterClipEnabled*(self: Sprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "is_region_filter_clip_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFrame*(self: Sprite2D; frame: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame], void)

proc getFrame*(self: Sprite2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "get_frame", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFrameCoords*(self: Sprite2D; coords: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_frame_coords", 1130785943)
  methodbind.ptrcall(self, [getPtr coords], void)

proc getFrameCoords*(self: Sprite2D): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "get_frame_coords", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setVframes*(self: Sprite2D; vframes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_vframes", 1286410249)
  methodbind.ptrcall(self, [getPtr vframes], void)

proc getVframes*(self: Sprite2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "get_vframes", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setHframes*(self: Sprite2D; hframes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "set_hframes", 1286410249)
  methodbind.ptrcall(self, [getPtr hframes], void)

proc getHframes*(self: Sprite2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "get_hframes", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getRect*(self: Sprite2D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite2D, "get_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

template texture*(self: Sprite2D): untyped = self.getTexture()
template `texture=`*(self: Sprite2D; value) = self.setTexture(value)

template centered*(self: Sprite2D): untyped = self.isCentered()
template `centered=`*(self: Sprite2D; value) = self.setCentered(value)

template offset*(self: Sprite2D): untyped = self.getOffset()
template `offset=`*(self: Sprite2D; value) = self.setOffset(value)

template flipH*(self: Sprite2D): untyped = self.isFlippedH()
template `flipH=`*(self: Sprite2D; value) = self.setFlipH(value)

template flipV*(self: Sprite2D): untyped = self.isFlippedV()
template `flipV=`*(self: Sprite2D; value) = self.setFlipV(value)

template hframes*(self: Sprite2D): untyped = self.getHframes()
template `hframes=`*(self: Sprite2D; value) = self.setHframes(value)

template vframes*(self: Sprite2D): untyped = self.getVframes()
template `vframes=`*(self: Sprite2D; value) = self.setVframes(value)

template frame*(self: Sprite2D): untyped = self.getFrame()
template `frame=`*(self: Sprite2D; value) = self.setFrame(value)

template frameCoords*(self: Sprite2D): untyped = self.getFrameCoords()
template `frameCoords=`*(self: Sprite2D; value) = self.setFrameCoords(value)

template regionEnabled*(self: Sprite2D): untyped = self.isRegionEnabled()
template `regionEnabled=`*(self: Sprite2D; value) = self.setRegionEnabled(value)

template regionRect*(self: Sprite2D): untyped = self.getRegionRect()
template `regionRect=`*(self: Sprite2D; value) = self.setRegionRect(value)

template regionFilterClipEnabled*(self: Sprite2D): untyped = self.isRegionFilterClipEnabled()
template `regionFilterClipEnabled=`*(self: Sprite2D; value) = self.setRegionFilterClipEnabled(value)
