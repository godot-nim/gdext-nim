{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasebutton; export gdbasebutton

proc setTextureNormal*(self: TextureButton; texture: gdref Texture2D): void =
  expandMethodBind(className TextureButton, "set_texture_normal", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc setTexturePressed*(self: TextureButton; texture: gdref Texture2D): void =
  expandMethodBind(className TextureButton, "set_texture_pressed", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc setTextureHover*(self: TextureButton; texture: gdref Texture2D): void =
  expandMethodBind(className TextureButton, "set_texture_hover", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc setTextureDisabled*(self: TextureButton; texture: gdref Texture2D): void =
  expandMethodBind(className TextureButton, "set_texture_disabled", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc setTextureFocused*(self: TextureButton; texture: gdref Texture2D): void =
  expandMethodBind(className TextureButton, "set_texture_focused", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc setClickMask*(self: TextureButton; mask: gdref BitMap): void =
  expandMethodBind(className TextureButton, "set_click_mask", 698588216)
  methodbind.ptrcall(self, [getPtr mask])

proc setIgnoreTextureSize*(self: TextureButton; ignore: bool): void =
  expandMethodBind(className TextureButton, "set_ignore_texture_size", 2586408642)
  methodbind.ptrcall(self, [getPtr ignore])

proc setStretchMode*(self: TextureButton; mode: TextureButton_StretchMode): void =
  expandMethodBind(className TextureButton, "set_stretch_mode", 252530840)
  methodbind.ptrcall(self, [getPtr mode])

proc setFlipH*(self: TextureButton; enable: bool): void =
  expandMethodBind(className TextureButton, "set_flip_h", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isFlippedH*(self: TextureButton): bool =
  expandMethodBind(className TextureButton, "is_flipped_h", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFlipV*(self: TextureButton; enable: bool): void =
  expandMethodBind(className TextureButton, "set_flip_v", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isFlippedV*(self: TextureButton): bool =
  expandMethodBind(className TextureButton, "is_flipped_v", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getTextureNormal*(self: TextureButton): gdref Texture2D =
  expandMethodBind(className TextureButton, "get_texture_normal", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getTexturePressed*(self: TextureButton): gdref Texture2D =
  expandMethodBind(className TextureButton, "get_texture_pressed", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getTextureHover*(self: TextureButton): gdref Texture2D =
  expandMethodBind(className TextureButton, "get_texture_hover", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getTextureDisabled*(self: TextureButton): gdref Texture2D =
  expandMethodBind(className TextureButton, "get_texture_disabled", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getTextureFocused*(self: TextureButton): gdref Texture2D =
  expandMethodBind(className TextureButton, "get_texture_focused", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getClickMask*(self: TextureButton): gdref BitMap =
  expandMethodBind(className TextureButton, "get_click_mask", 2459671998)
  var ret: encoded gdref BitMap
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref BitMap)

proc getIgnoreTextureSize*(self: TextureButton): bool =
  expandMethodBind(className TextureButton, "get_ignore_texture_size", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getStretchMode*(self: TextureButton): TextureButton_StretchMode =
  expandMethodBind(className TextureButton, "get_stretch_mode", 33815122)
  var ret: encoded TextureButton_StretchMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextureButton_StretchMode)

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

const TextureButton_vmap =
  BaseButton.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextureButton]): Table[string, string] = TextureButton_vmap