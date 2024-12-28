{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdspritebase3d; export gdspritebase3d

proc setTexture*(self: Sprite3D; texture: gdref Texture2D): void =
  expandMethodBind(className Sprite3D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc getTexture*(self: Sprite3D): gdref Texture2D =
  expandMethodBind(className Sprite3D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setRegionEnabled*(self: Sprite3D; enabled: bool): void =
  expandMethodBind(className Sprite3D, "set_region_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isRegionEnabled*(self: Sprite3D): bool =
  expandMethodBind(className Sprite3D, "is_region_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRegionRect*(self: Sprite3D; rect: Rect2): void =
  expandMethodBind(className Sprite3D, "set_region_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect])

proc getRegionRect*(self: Sprite3D): Rect2 =
  expandMethodBind(className Sprite3D, "get_region_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2)

proc setFrame*(self: Sprite3D; frame: int32): void =
  expandMethodBind(className Sprite3D, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame])

proc getFrame*(self: Sprite3D): int32 =
  expandMethodBind(className Sprite3D, "get_frame", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setFrameCoords*(self: Sprite3D; coords: Vector2i): void =
  expandMethodBind(className Sprite3D, "set_frame_coords", 1130785943)
  methodbind.ptrcall(self, [getPtr coords])

proc getFrameCoords*(self: Sprite3D): Vector2i =
  expandMethodBind(className Sprite3D, "get_frame_coords", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setVframes*(self: Sprite3D; vframes: int32): void =
  expandMethodBind(className Sprite3D, "set_vframes", 1286410249)
  methodbind.ptrcall(self, [getPtr vframes])

proc getVframes*(self: Sprite3D): int32 =
  expandMethodBind(className Sprite3D, "get_vframes", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setHframes*(self: Sprite3D; hframes: int32): void =
  expandMethodBind(className Sprite3D, "set_hframes", 1286410249)
  methodbind.ptrcall(self, [getPtr hframes])

proc getHframes*(self: Sprite3D): int32 =
  expandMethodBind(className Sprite3D, "get_hframes", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

template texture*(self: Sprite3D): untyped = self.getTexture()
template `texture=`*(self: Sprite3D; value) = self.setTexture(value)

template hframes*(self: Sprite3D): untyped = self.getHframes()
template `hframes=`*(self: Sprite3D; value) = self.setHframes(value)

template vframes*(self: Sprite3D): untyped = self.getVframes()
template `vframes=`*(self: Sprite3D; value) = self.setVframes(value)

template frame*(self: Sprite3D): untyped = self.getFrame()
template `frame=`*(self: Sprite3D; value) = self.setFrame(value)

template frameCoords*(self: Sprite3D): untyped = self.getFrameCoords()
template `frameCoords=`*(self: Sprite3D; value) = self.setFrameCoords(value)

template regionEnabled*(self: Sprite3D): untyped = self.isRegionEnabled()
template `regionEnabled=`*(self: Sprite3D; value) = self.setRegionEnabled(value)

template regionRect*(self: Sprite3D): untyped = self.getRegionRect()
template `regionRect=`*(self: Sprite3D; value) = self.setRegionRect(value)

const Sprite3D_vmap =
  SpriteBase3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Sprite3D]): Table[string, string] = Sprite3D_vmap

proc frameChanged*(self: Sprite3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("frame_changed")
  self.emitSignal(signalname)

proc textureChanged*(self: Sprite3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("texture_changed")
  self.emitSignal(signalname)