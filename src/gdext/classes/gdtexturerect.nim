{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(TextureRect, Control)

proc setTexture*(self: TextureRect; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: TextureRect): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setExpandMode*(self: TextureRect; expandMode: TextureRect_ExpandMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "set_expand_mode", 1870766882)
  methodbind.ptrcall(self, [getPtr expandMode], void)

proc getExpandMode*(self: TextureRect): TextureRect_ExpandMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "get_expand_mode", 3863824733)
  methodbind.ptrcall(self, [], TextureRect_ExpandMode)

proc setFlipH*(self: TextureRect; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "set_flip_h", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isFlippedH*(self: TextureRect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "is_flipped_h", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFlipV*(self: TextureRect; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "set_flip_v", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isFlippedV*(self: TextureRect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "is_flipped_v", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setStretchMode*(self: TextureRect; stretchMode: TextureRect_StretchMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "set_stretch_mode", 58788729)
  methodbind.ptrcall(self, [getPtr stretchMode], void)

proc getStretchMode*(self: TextureRect): TextureRect_StretchMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureRect, "get_stretch_mode", 346396079)
  methodbind.ptrcall(self, [], TextureRect_StretchMode)

template texture*(self: TextureRect): untyped = self.getTexture()
template `texture=`*(self: TextureRect; value) = self.setTexture(value)

template expandMode*(self: TextureRect): untyped = self.getExpandMode()
template `expandMode=`*(self: TextureRect; value) = self.setExpandMode(value)

template stretchMode*(self: TextureRect): untyped = self.getStretchMode()
template `stretchMode=`*(self: TextureRect; value) = self.setStretchMode(value)

template flipH*(self: TextureRect): untyped = self.isFlippedH()
template `flipH=`*(self: TextureRect; value) = self.setFlipH(value)

template flipV*(self: TextureRect): untyped = self.isFlippedV()
template `flipV=`*(self: TextureRect; value) = self.setFlipV(value)
