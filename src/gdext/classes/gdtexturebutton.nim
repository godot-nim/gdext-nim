{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasebutton; export gdbasebutton

expandOnClassImported(TextureButton, BaseButton)

proc setTextureNormal*(self: TextureButton; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_texture_normal", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc setTexturePressed*(self: TextureButton; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_texture_pressed", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc setTextureHover*(self: TextureButton; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_texture_hover", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc setTextureDisabled*(self: TextureButton; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_texture_disabled", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc setTextureFocused*(self: TextureButton; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_texture_focused", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc setClickMask*(self: TextureButton; mask: gdref BitMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_click_mask", 698588216)
  methodbind.ptrcall(self, [getPtr mask], void)

proc setIgnoreTextureSize*(self: TextureButton; ignore: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_ignore_texture_size", 2586408642)
  methodbind.ptrcall(self, [getPtr ignore], void)

proc setStretchMode*(self: TextureButton; mode: TextureButton_StretchMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_stretch_mode", 252530840)
  methodbind.ptrcall(self, [getPtr mode], void)

proc setFlipH*(self: TextureButton; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_flip_h", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isFlippedH*(self: TextureButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "is_flipped_h", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFlipV*(self: TextureButton; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "set_flip_v", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isFlippedV*(self: TextureButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "is_flipped_v", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getTextureNormal*(self: TextureButton): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "get_texture_normal", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc getTexturePressed*(self: TextureButton): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "get_texture_pressed", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc getTextureHover*(self: TextureButton): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "get_texture_hover", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc getTextureDisabled*(self: TextureButton): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "get_texture_disabled", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc getTextureFocused*(self: TextureButton): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "get_texture_focused", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc getClickMask*(self: TextureButton): gdref BitMap =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "get_click_mask", 2459671998)
  methodbind.ptrcall(self, [], gdref BitMap)

proc getIgnoreTextureSize*(self: TextureButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "get_ignore_texture_size", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getStretchMode*(self: TextureButton): TextureButton_StretchMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureButton, "get_stretch_mode", 33815122)
  methodbind.ptrcall(self, [], TextureButton_StretchMode)

template textureNormal*(self: TextureButton): untyped = self.getTextureNormal()
template `textureNormal=`*(self: TextureButton; value) = self.setTextureNormal(value)

template texturePressed*(self: TextureButton): untyped = self.getTexturePressed()
template `texturePressed=`*(self: TextureButton; value) = self.setTexturePressed(value)

template textureHover*(self: TextureButton): untyped = self.getTextureHover()
template `textureHover=`*(self: TextureButton; value) = self.setTextureHover(value)

template textureDisabled*(self: TextureButton): untyped = self.getTextureDisabled()
template `textureDisabled=`*(self: TextureButton; value) = self.setTextureDisabled(value)

template textureFocused*(self: TextureButton): untyped = self.getTextureFocused()
template `textureFocused=`*(self: TextureButton; value) = self.setTextureFocused(value)

template textureClickMask*(self: TextureButton): untyped = self.getClickMask()
template `textureClickMask=`*(self: TextureButton; value) = self.setClickMask(value)

template ignoreTextureSize*(self: TextureButton): untyped = self.getIgnoreTextureSize()
template `ignoreTextureSize=`*(self: TextureButton; value) = self.setIgnoreTextureSize(value)

template stretchMode*(self: TextureButton): untyped = self.getStretchMode()
template `stretchMode=`*(self: TextureButton; value) = self.setStretchMode(value)

template flipH*(self: TextureButton): untyped = self.isFlippedH()
template `flipH=`*(self: TextureButton; value) = self.setFlipH(value)

template flipV*(self: TextureButton): untyped = self.isFlippedV()
template `flipV=`*(self: TextureButton; value) = self.setFlipV(value)
