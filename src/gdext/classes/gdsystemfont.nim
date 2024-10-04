{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdfont; export gdfont

proc setAntialiasing*(self: SystemFont; antialiasing: TextServer_FontAntialiasing): void =
  expandMethodBind(className SystemFont, "set_antialiasing", 1669900)
  var `?param` = [getPtr antialiasing]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAntialiasing*(self: SystemFont): TextServer_FontAntialiasing =
  expandMethodBind(className SystemFont, "get_antialiasing", 4262718649)
  var ret: encoded TextServer_FontAntialiasing
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_FontAntialiasing)

proc setDisableEmbeddedBitmaps*(self: SystemFont; disableEmbeddedBitmaps: bool): void =
  expandMethodBind(className SystemFont, "set_disable_embedded_bitmaps", 2586408642)
  var `?param` = [getPtr disableEmbeddedBitmaps]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDisableEmbeddedBitmaps*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "get_disable_embedded_bitmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setGenerateMipmaps*(self: SystemFont; generateMipmaps: bool): void =
  expandMethodBind(className SystemFont, "set_generate_mipmaps", 2586408642)
  var `?param` = [getPtr generateMipmaps]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGenerateMipmaps*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "get_generate_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAllowSystemFallback*(self: SystemFont; allowSystemFallback: bool): void =
  expandMethodBind(className SystemFont, "set_allow_system_fallback", 2586408642)
  var `?param` = [getPtr allowSystemFallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAllowSystemFallback*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "is_allow_system_fallback", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setForceAutohinter*(self: SystemFont; forceAutohinter: bool): void =
  expandMethodBind(className SystemFont, "set_force_autohinter", 2586408642)
  var `?param` = [getPtr forceAutohinter]
  methodbind.ptrcall(self, addr `?param`[0])

proc isForceAutohinter*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "is_force_autohinter", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHinting*(self: SystemFont; hinting: TextServer_Hinting): void =
  expandMethodBind(className SystemFont, "set_hinting", 1827459492)
  var `?param` = [getPtr hinting]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHinting*(self: SystemFont): TextServer_Hinting =
  expandMethodBind(className SystemFont, "get_hinting", 3683214614)
  var ret: encoded TextServer_Hinting
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_Hinting)

proc setSubpixelPositioning*(self: SystemFont; subpixelPositioning: TextServer_SubpixelPositioning): void =
  expandMethodBind(className SystemFont, "set_subpixel_positioning", 4225742182)
  var `?param` = [getPtr subpixelPositioning]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubpixelPositioning*(self: SystemFont): TextServer_SubpixelPositioning =
  expandMethodBind(className SystemFont, "get_subpixel_positioning", 1069238588)
  var ret: encoded TextServer_SubpixelPositioning
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_SubpixelPositioning)

proc setMultichannelSignedDistanceField*(self: SystemFont; msdf: bool): void =
  expandMethodBind(className SystemFont, "set_multichannel_signed_distance_field", 2586408642)
  var `?param` = [getPtr msdf]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMultichannelSignedDistanceField*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "is_multichannel_signed_distance_field", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMsdfPixelRange*(self: SystemFont; msdfPixelRange: int32): void =
  expandMethodBind(className SystemFont, "set_msdf_pixel_range", 1286410249)
  var `?param` = [getPtr msdfPixelRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMsdfPixelRange*(self: SystemFont): int32 =
  expandMethodBind(className SystemFont, "get_msdf_pixel_range", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMsdfSize*(self: SystemFont; msdfSize: int32): void =
  expandMethodBind(className SystemFont, "set_msdf_size", 1286410249)
  var `?param` = [getPtr msdfSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMsdfSize*(self: SystemFont): int32 =
  expandMethodBind(className SystemFont, "get_msdf_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setOversampling*(self: SystemFont; oversampling: Float): void =
  expandMethodBind(className SystemFont, "set_oversampling", 373806689)
  var `?param` = [getPtr oversampling]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOversampling*(self: SystemFont): Float =
  expandMethodBind(className SystemFont, "get_oversampling", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getFontNames*(self: SystemFont): PackedStringArray =
  expandMethodBind(className SystemFont, "get_font_names", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setFontNames*(self: SystemFont; names: PackedStringArray): void =
  expandMethodBind(className SystemFont, "set_font_names", 4015028928)
  var `?param` = [getPtr names]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFontItalic*(self: SystemFont): bool =
  expandMethodBind(className SystemFont, "get_font_italic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFontItalic*(self: SystemFont; italic: bool): void =
  expandMethodBind(className SystemFont, "set_font_italic", 2586408642)
  var `?param` = [getPtr italic]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFontWeight*(self: SystemFont; weight: int32): void =
  expandMethodBind(className SystemFont, "set_font_weight", 1286410249)
  var `?param` = [getPtr weight]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFontStretch*(self: SystemFont; stretch: int32): void =
  expandMethodBind(className SystemFont, "set_font_stretch", 1286410249)
  var `?param` = [getPtr stretch]
  methodbind.ptrcall(self, addr `?param`[0])

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

template multichannelSignedDistanceField*(self: SystemFont): untyped = self.isMultichannelSignedDistanceField()
template `multichannelSignedDistanceField=`*(self: SystemFont; value) = self.setMultichannelSignedDistanceField(value)

template msdfPixelRange*(self: SystemFont): untyped = self.getMsdfPixelRange()
template `msdfPixelRange=`*(self: SystemFont; value) = self.setMsdfPixelRange(value)

template msdfSize*(self: SystemFont): untyped = self.getMsdfSize()
template `msdfSize=`*(self: SystemFont; value) = self.setMsdfSize(value)

template oversampling*(self: SystemFont): untyped = self.getOversampling()
template `oversampling=`*(self: SystemFont; value) = self.setOversampling(value)

const SystemFont_vmap =
  Font.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SystemFont]): Table[string, string] = SystemFont_vmap