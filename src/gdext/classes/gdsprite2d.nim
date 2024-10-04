{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setTexture*(self: Sprite2D; texture: gdref Texture2D): void =
  expandMethodBind(className Sprite2D, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: Sprite2D): gdref Texture2D =
  expandMethodBind(className Sprite2D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setCentered*(self: Sprite2D; centered: bool): void =
  expandMethodBind(className Sprite2D, "set_centered", 2586408642)
  var `?param` = [getPtr centered]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCentered*(self: Sprite2D): bool =
  expandMethodBind(className Sprite2D, "is_centered", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setOffset*(self: Sprite2D; offset: Vector2): void =
  expandMethodBind(className Sprite2D, "set_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOffset*(self: Sprite2D): Vector2 =
  expandMethodBind(className Sprite2D, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setFlipH*(self: Sprite2D; flipH: bool): void =
  expandMethodBind(className Sprite2D, "set_flip_h", 2586408642)
  var `?param` = [getPtr flipH]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFlippedH*(self: Sprite2D): bool =
  expandMethodBind(className Sprite2D, "is_flipped_h", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFlipV*(self: Sprite2D; flipV: bool): void =
  expandMethodBind(className Sprite2D, "set_flip_v", 2586408642)
  var `?param` = [getPtr flipV]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFlippedV*(self: Sprite2D): bool =
  expandMethodBind(className Sprite2D, "is_flipped_v", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setRegionEnabled*(self: Sprite2D; enabled: bool): void =
  expandMethodBind(className Sprite2D, "set_region_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRegionEnabled*(self: Sprite2D): bool =
  expandMethodBind(className Sprite2D, "is_region_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isPixelOpaque*(self: Sprite2D; pos: Vector2): bool =
  expandMethodBind(className Sprite2D, "is_pixel_opaque", 556197845)
  var `?param` = [getPtr pos]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setRegionRect*(self: Sprite2D; rect: Rect2): void =
  expandMethodBind(className Sprite2D, "set_region_rect", 2046264180)
  var `?param` = [getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRegionRect*(self: Sprite2D): Rect2 =
  expandMethodBind(className Sprite2D, "get_region_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setRegionFilterClipEnabled*(self: Sprite2D; enabled: bool): void =
  expandMethodBind(className Sprite2D, "set_region_filter_clip_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRegionFilterClipEnabled*(self: Sprite2D): bool =
  expandMethodBind(className Sprite2D, "is_region_filter_clip_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFrame*(self: Sprite2D; frame: int32): void =
  expandMethodBind(className Sprite2D, "set_frame", 1286410249)
  var `?param` = [getPtr frame]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrame*(self: Sprite2D): int32 =
  expandMethodBind(className Sprite2D, "get_frame", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFrameCoords*(self: Sprite2D; coords: Vector2i): void =
  expandMethodBind(className Sprite2D, "set_frame_coords", 1130785943)
  var `?param` = [getPtr coords]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrameCoords*(self: Sprite2D): Vector2i =
  expandMethodBind(className Sprite2D, "get_frame_coords", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setVframes*(self: Sprite2D; vframes: int32): void =
  expandMethodBind(className Sprite2D, "set_vframes", 1286410249)
  var `?param` = [getPtr vframes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVframes*(self: Sprite2D): int32 =
  expandMethodBind(className Sprite2D, "get_vframes", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setHframes*(self: Sprite2D; hframes: int32): void =
  expandMethodBind(className Sprite2D, "set_hframes", 1286410249)
  var `?param` = [getPtr hframes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHframes*(self: Sprite2D): int32 =
  expandMethodBind(className Sprite2D, "get_hframes", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getRect*(self: Sprite2D): Rect2 =
  expandMethodBind(className Sprite2D, "get_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

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

const Sprite2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Sprite2D]): Table[string, string] = Sprite2D_vmap

proc frameChanged*(self: Sprite2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("frame_changed")
  self.emitSignal(signalname)

proc textureChanged*(self: Sprite2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("texture_changed")
  self.emitSignal(signalname)