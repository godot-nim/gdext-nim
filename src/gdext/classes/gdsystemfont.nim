{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdfont; export gdfont

expandOnClassImported(SystemFont, Font)

proc setAntialiasing*(self: SystemFont; antialiasing: TextServer_FontAntialiasing): void =
  expandMethodBind(className SystemFont, "set_antialiasing", 1669900)
  methodbind.ptrcall(self, [getPtr antialiasing])

proc getAntialiasing*(self: SystemFont): TextServer_FontAntialiasing =
  expandMethodBind(className SystemFont, "get_antialiasing", 4262718649)
  var ret: encoded TextServer_FontAntialiasing
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_FontAntialiasing)

proc setDisableEmbeddedBitmaps*(self: SystemFont; disableEmbeddedBitmaps: bool): void =
  expandMethodBind(className SystemFont, "set_disable_embedded_bitmaps", 2586408642)
  methodbind.ptrcall(self, [getPtr disableEmbeddedBitmaps])

proc getDisableEmbeddedBitmaps*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "get_disable_embedded_bitmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setGenerateMipmaps*(self: SystemFont; generateMipmaps: bool): void =
  expandMethodBind(className SystemFont, "set_generate_mipmaps", 2586408642)
  methodbind.ptrcall(self, [getPtr generateMipmaps])

proc getGenerateMipmaps*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "get_generate_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAllowSystemFallback*(self: SystemFont; allowSystemFallback: bool): void =
  expandMethodBind(className SystemFont, "set_allow_system_fallback", 2586408642)
  methodbind.ptrcall(self, [getPtr allowSystemFallback])

proc isAllowSystemFallback*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "is_allow_system_fallback", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setForceAutohinter*(self: SystemFont; forceAutohinter: bool): void =
  expandMethodBind(className SystemFont, "set_force_autohinter", 2586408642)
  methodbind.ptrcall(self, [getPtr forceAutohinter])

proc isForceAutohinter*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "is_force_autohinter", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHinting*(self: SystemFont; hinting: TextServer_Hinting): void =
  expandMethodBind(className SystemFont, "set_hinting", 1827459492)
  methodbind.ptrcall(self, [getPtr hinting])

proc getHinting*(self: SystemFont): TextServer_Hinting =
  expandMethodBind(className SystemFont, "get_hinting", 3683214614)
  var ret: encoded TextServer_Hinting
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_Hinting)

proc setSubpixelPositioning*(self: SystemFont; subpixelPositioning: TextServer_SubpixelPositioning): void =
  expandMethodBind(className SystemFont, "set_subpixel_positioning", 4225742182)
  methodbind.ptrcall(self, [getPtr subpixelPositioning])

proc getSubpixelPositioning*(self: SystemFont): TextServer_SubpixelPositioning =
  expandMethodBind(className SystemFont, "get_subpixel_positioning", 1069238588)
  var ret: encoded TextServer_SubpixelPositioning
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_SubpixelPositioning)

proc setKeepRoundingRemainders*(self: SystemFont; keepRoundingRemainders: bool): void =
  expandMethodBind(className SystemFont, "set_keep_rounding_remainders", 2586408642)
  methodbind.ptrcall(self, [getPtr keepRoundingRemainders])

proc getKeepRoundingRemainders*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "get_keep_rounding_remainders", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMultichannelSignedDistanceField*(self: SystemFont; msdf: bool): void =
  expandMethodBind(className SystemFont, "set_multichannel_signed_distance_field", 2586408642)
  methodbind.ptrcall(self, [getPtr msdf])

proc isMultichannelSignedDistanceField*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "is_multichannel_signed_distance_field", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMsdfPixelRange*(self: SystemFont; msdfPixelRange: int32): void =
  expandMethodBind(className SystemFont, "set_msdf_pixel_range", 1286410249)
  methodbind.ptrcall(self, [getPtr msdfPixelRange])

proc getMsdfPixelRange*(self: SystemFont): int32 =
  expandMethodBind(className SystemFont, "get_msdf_pixel_range", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMsdfSize*(self: SystemFont; msdfSize: int32): void =
  expandMethodBind(className SystemFont, "set_msdf_size", 1286410249)
  methodbind.ptrcall(self, [getPtr msdfSize])

proc getMsdfSize*(self: SystemFont): int32 =
  expandMethodBind(className SystemFont, "get_msdf_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setOversampling*(self: SystemFont; oversampling: Float): void =
  expandMethodBind(className SystemFont, "set_oversampling", 373806689)
  methodbind.ptrcall(self, [getPtr oversampling])

proc getOversampling*(self: SystemFont): Float =
  expandMethodBind(className SystemFont, "get_oversampling", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getFontNames*(self: SystemFont): PackedStringArray =
  expandMethodBind(className SystemFont, "get_font_names", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setFontNames*(self: SystemFont; names: PackedStringArray): void =
  expandMethodBind(className SystemFont, "set_font_names", 4015028928)
  methodbind.ptrcall(self, [getPtr names])

proc getFontItalic*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "get_font_italic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFontItalic*(self: SystemFont; italic: bool): void =
  expandMethodBind(className SystemFont, "set_font_italic", 2586408642)
  methodbind.ptrcall(self, [getPtr italic])

proc setFontWeight*(self: SystemFont; weight: int32): void =
  expandMethodBind(className SystemFont, "set_font_weight", 1286410249)
  methodbind.ptrcall(self, [getPtr weight])

proc setFontStretch*(self: SystemFont; stretch: int32): void =
  expandMethodBind(className SystemFont, "set_font_stretch", 1286410249)
  methodbind.ptrcall(self, [getPtr stretch])

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
