{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdspritebase3d; export gdspritebase3d

expandOnClassImported(Sprite3D, SpriteBase3D)

proc setTexture*(self: Sprite3D; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: Sprite3D): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setRegionEnabled*(self: Sprite3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "set_region_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isRegionEnabled*(self: Sprite3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "is_region_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRegionRect*(self: Sprite3D; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "set_region_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect], void)

proc getRegionRect*(self: Sprite3D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "get_region_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setFrame*(self: Sprite3D; frame: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame], void)

proc getFrame*(self: Sprite3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "get_frame", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFrameCoords*(self: Sprite3D; coords: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "set_frame_coords", 1130785943)
  methodbind.ptrcall(self, [getPtr coords], void)

proc getFrameCoords*(self: Sprite3D): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "get_frame_coords", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setVframes*(self: Sprite3D; vframes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "set_vframes", 1286410249)
  methodbind.ptrcall(self, [getPtr vframes], void)

proc getVframes*(self: Sprite3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "get_vframes", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setHframes*(self: Sprite3D; hframes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "set_hframes", 1286410249)
  methodbind.ptrcall(self, [getPtr hframes], void)

proc getHframes*(self: Sprite3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sprite3D, "get_hframes", 3905245786)
  methodbind.ptrcall(self, [], int32)

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
