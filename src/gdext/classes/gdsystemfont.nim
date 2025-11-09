{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdfont; export gdfont

expandOnClassImported(SystemFont, Font)

proc setAntialiasing*(self: SystemFont; antialiasing: TextServer_FontAntialiasing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_antialiasing", 1669900)
  methodbind.ptrcall(self, [getPtr antialiasing], void)

proc getAntialiasing*(self: SystemFont): TextServer_FontAntialiasing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_antialiasing", 4262718649)
  methodbind.ptrcall(self, [], TextServer_FontAntialiasing)

proc setDisableEmbeddedBitmaps*(self: SystemFont; disableEmbeddedBitmaps: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_disable_embedded_bitmaps", 2586408642)
  methodbind.ptrcall(self, [getPtr disableEmbeddedBitmaps], void)

proc getDisableEmbeddedBitmaps*(self: SystemFont): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_disable_embedded_bitmaps", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setGenerateMipmaps*(self: SystemFont; generateMipmaps: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_generate_mipmaps", 2586408642)
  methodbind.ptrcall(self, [getPtr generateMipmaps], void)

proc getGenerateMipmaps*(self: SystemFont): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_generate_mipmaps", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowSystemFallback*(self: SystemFont; allowSystemFallback: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_allow_system_fallback", 2586408642)
  methodbind.ptrcall(self, [getPtr allowSystemFallback], void)

proc isAllowSystemFallback*(self: SystemFont): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "is_allow_system_fallback", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setForceAutohinter*(self: SystemFont; forceAutohinter: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_force_autohinter", 2586408642)
  methodbind.ptrcall(self, [getPtr forceAutohinter], void)

proc isForceAutohinter*(self: SystemFont): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "is_force_autohinter", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setModulateColorGlyphs*(self: SystemFont; modulate: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_modulate_color_glyphs", 2586408642)
  methodbind.ptrcall(self, [getPtr modulate], void)

proc isModulateColorGlyphs*(self: SystemFont): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "is_modulate_color_glyphs", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHinting*(self: SystemFont; hinting: TextServer_Hinting): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_hinting", 1827459492)
  methodbind.ptrcall(self, [getPtr hinting], void)

proc getHinting*(self: SystemFont): TextServer_Hinting =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_hinting", 3683214614)
  methodbind.ptrcall(self, [], TextServer_Hinting)

proc setSubpixelPositioning*(self: SystemFont; subpixelPositioning: TextServer_SubpixelPositioning): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_subpixel_positioning", 4225742182)
  methodbind.ptrcall(self, [getPtr subpixelPositioning], void)

proc getSubpixelPositioning*(self: SystemFont): TextServer_SubpixelPositioning =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_subpixel_positioning", 1069238588)
  methodbind.ptrcall(self, [], TextServer_SubpixelPositioning)

proc setKeepRoundingRemainders*(self: SystemFont; keepRoundingRemainders: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_keep_rounding_remainders", 2586408642)
  methodbind.ptrcall(self, [getPtr keepRoundingRemainders], void)

proc getKeepRoundingRemainders*(self: SystemFont): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_keep_rounding_remainders", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMultichannelSignedDistanceField*(self: SystemFont; msdf: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_multichannel_signed_distance_field", 2586408642)
  methodbind.ptrcall(self, [getPtr msdf], void)

proc isMultichannelSignedDistanceField*(self: SystemFont): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "is_multichannel_signed_distance_field", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMsdfPixelRange*(self: SystemFont; msdfPixelRange: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_msdf_pixel_range", 1286410249)
  methodbind.ptrcall(self, [getPtr msdfPixelRange], void)

proc getMsdfPixelRange*(self: SystemFont): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_msdf_pixel_range", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMsdfSize*(self: SystemFont; msdfSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_msdf_size", 1286410249)
  methodbind.ptrcall(self, [getPtr msdfSize], void)

proc getMsdfSize*(self: SystemFont): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_msdf_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOversampling*(self: SystemFont; oversampling: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_oversampling", 373806689)
  methodbind.ptrcall(self, [getPtr oversampling], void)

proc getOversampling*(self: SystemFont): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_oversampling", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getFontNames*(self: SystemFont): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_font_names", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setFontNames*(self: SystemFont; names: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_font_names", 4015028928)
  methodbind.ptrcall(self, [getPtr names], void)

proc getFontItalic*(self: SystemFont): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "get_font_italic", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFontItalic*(self: SystemFont; italic: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_font_italic", 2586408642)
  methodbind.ptrcall(self, [getPtr italic], void)

proc setFontWeight*(self: SystemFont; weight: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_font_weight", 1286410249)
  methodbind.ptrcall(self, [getPtr weight], void)

proc setFontStretch*(self: SystemFont; stretch: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SystemFont, "set_font_stretch", 1286410249)
  methodbind.ptrcall(self, [getPtr stretch], void)

template fontNames*(self: SystemFont): untyped = self.getFontNames()
template `fontNames=`*(self: SystemFont; value) = self.setFontNames(value)

template fontItalic*(self: SystemFont): untyped = self.getFontItalic()
template `fontItalic=`*(self: SystemFont; value) = self.setFontItalic(value)

template fontWeight*(self: SystemFont): untyped = self.getFontWeight()
template `fontWeight=`*(self: SystemFont; value) = self.setFontWeight(value)

template fontStretch*(self: SystemFont): untyped = self.getFontStretch()
template `fontStretch=`*(self: SystemFont; value) = self.setFontStretch(value)

template antialiasing*(self: SystemFont): untyped = self.getAntialiasing()
template `antialiasing=`*(self: SystemFont; value) = self.setAntialiasing(value)

template generateMipmaps*(self: SystemFont): untyped = self.getGenerateMipmaps()
template `generateMipmaps=`*(self: SystemFont; value) = self.setGenerateMipmaps(value)

template disableEmbeddedBitmaps*(self: SystemFont): untyped = self.getDisableEmbeddedBitmaps()
template `disableEmbeddedBitmaps=`*(self: SystemFont; value) = self.setDisableEmbeddedBitmaps(value)

template allowSystemFallback*(self: SystemFont): untyped = self.isAllowSystemFallback()
template `allowSystemFallback=`*(self: SystemFont; value) = self.setAllowSystemFallback(value)

template forceAutohinter*(self: SystemFont): untyped = self.isForceAutohinter()
template `forceAutohinter=`*(self: SystemFont; value) = self.setForceAutohinter(value)

template modulateColorGlyphs*(self: SystemFont): untyped = self.isModulateColorGlyphs()
template `modulateColorGlyphs=`*(self: SystemFont; value) = self.setModulateColorGlyphs(value)

template hinting*(self: SystemFont): untyped = self.getHinting()
template `hinting=`*(self: SystemFont; value) = self.setHinting(value)

template subpixelPositioning*(self: SystemFont): untyped = self.getSubpixelPositioning()
template `subpixelPositioning=`*(self: SystemFont; value) = self.setSubpixelPositioning(value)

template keepRoundingRemainders*(self: SystemFont): untyped = self.getKeepRoundingRemainders()
template `keepRoundingRemainders=`*(self: SystemFont; value) = self.setKeepRoundingRemainders(value)

template multichannelSignedDistanceField*(self: SystemFont): untyped = self.isMultichannelSignedDistanceField()
template `multichannelSignedDistanceField=`*(self: SystemFont; value) = self.setMultichannelSignedDistanceField(value)

template msdfPixelRange*(self: SystemFont): untyped = self.getMsdfPixelRange()
template `msdfPixelRange=`*(self: SystemFont; value) = self.setMsdfPixelRange(value)

template msdfSize*(self: SystemFont): untyped = self.getMsdfSize()
template `msdfSize=`*(self: SystemFont; value) = self.setMsdfSize(value)

template oversampling*(self: SystemFont): untyped = self.getOversampling()
template `oversampling=`*(self: SystemFont; value) = self.setOversampling(value)
