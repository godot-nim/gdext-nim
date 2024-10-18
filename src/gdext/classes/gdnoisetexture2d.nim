{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setWidth*(self: NoiseTexture2D; width: int32): void =
  expandMethodBind(className NoiseTexture2D, "set_width", 1286410249)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc setHeight*(self: NoiseTexture2D; height: int32): void =
  expandMethodBind(className NoiseTexture2D, "set_height", 1286410249)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInvert*(self: NoiseTexture2D; invert: bool): void =
  expandMethodBind(className NoiseTexture2D, "set_invert", 2586408642)
  var `?param` = [getPtr invert]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInvert*(self: NoiseTexture2D): bool =
  expandMethodBind(className NoiseTexture2D, "get_invert", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setIn3DSpace*(self: NoiseTexture2D; enable: bool): void =
  expandMethodBind(className NoiseTexture2D, "set_in_3d_space", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isIn3DSpace*(self: NoiseTexture2D): bool =
  expandMethodBind(className NoiseTexture2D, "is_in_3d_space", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setGenerateMipmaps*(self: NoiseTexture2D; invert: bool): void =
  expandMethodBind(className NoiseTexture2D, "set_generate_mipmaps", 2586408642)
  var `?param` = [getPtr invert]
  methodbind.ptrcall(self, addr `?param`[0])

proc isGeneratingMipmaps*(self: NoiseTexture2D): bool =
  expandMethodBind(className NoiseTexture2D, "is_generating_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSeamless*(self: NoiseTexture2D; seamless: bool): void =
  expandMethodBind(className NoiseTexture2D, "set_seamless", 2586408642)
  var `?param` = [getPtr seamless]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSeamless*(self: NoiseTexture2D): bool =
  expandMethodBind(className NoiseTexture2D, "get_seamless", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSeamlessBlendSkirt*(self: NoiseTexture2D; seamlessBlendSkirt: Float): void =
  expandMethodBind(className NoiseTexture2D, "set_seamless_blend_skirt", 373806689)
  var `?param` = [getPtr seamlessBlendSkirt]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSeamlessBlendSkirt*(self: NoiseTexture2D): Float =
  expandMethodBind(className NoiseTexture2D, "get_seamless_blend_skirt", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAsNormalMap*(self: NoiseTexture2D; asNormalMap: bool): void =
  expandMethodBind(className NoiseTexture2D, "set_as_normal_map", 2586408642)
  var `?param` = [getPtr asNormalMap]
  methodbind.ptrcall(self, addr `?param`[0])

proc isNormalMap*(self: NoiseTexture2D): bool =
  expandMethodBind(className NoiseTexture2D, "is_normal_map", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBumpStrength*(self: NoiseTexture2D; bumpStrength: Float): void =
  expandMethodBind(className NoiseTexture2D, "set_bump_strength", 373806689)
  var `?param` = [getPtr bumpStrength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBumpStrength*(self: NoiseTexture2D): Float =
  expandMethodBind(className NoiseTexture2D, "get_bump_strength", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setNormalize*(self: NoiseTexture2D; normalize: bool): void =
  expandMethodBind(className NoiseTexture2D, "set_normalize", 2586408642)
  var `?param` = [getPtr normalize]
  methodbind.ptrcall(self, addr `?param`[0])

proc isNormalized*(self: NoiseTexture2D): bool =
  expandMethodBind(className NoiseTexture2D, "is_normalized", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setColorRamp*(self: NoiseTexture2D; gradient: gdref Gradient): void =
  expandMethodBind(className NoiseTexture2D, "set_color_ramp", 2756054477)
  var `?param` = [getPtr gradient]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorRamp*(self: NoiseTexture2D): gdref Gradient =
  expandMethodBind(className NoiseTexture2D, "get_color_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setNoise*(self: NoiseTexture2D; noise: gdref Noise): void =
  expandMethodBind(className NoiseTexture2D, "set_noise", 4135492439)
  var `?param` = [getPtr noise]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNoise*(self: NoiseTexture2D): gdref Noise =
  expandMethodBind(className NoiseTexture2D, "get_noise", 185851837)
  var ret: encoded gdref Noise
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Noise)

template width*(self: NoiseTexture2D): untyped = self.getWidth()
template `width=`*(self: NoiseTexture2D; value) = self.setWidth(value)

template height*(self: NoiseTexture2D): untyped = self.getHeight()
template `height=`*(self: NoiseTexture2D; value) = self.setHeight(value)

template invert*(self: NoiseTexture2D): untyped = self.getInvert()
template `invert=`*(self: NoiseTexture2D; value) = self.setInvert(value)

template in3DSpace*(self: NoiseTexture2D): untyped = self.isIn3DSpace()
template `in3DSpace=`*(self: NoiseTexture2D; value) = self.setIn3DSpace(value)

template generateMipmaps*(self: NoiseTexture2D): untyped = self.isGeneratingMipmaps()
template `generateMipmaps=`*(self: NoiseTexture2D; value) = self.setGenerateMipmaps(value)

template seamless*(self: NoiseTexture2D): untyped = self.getSeamless()
template `seamless=`*(self: NoiseTexture2D; value) = self.setSeamless(value)

template seamlessBlendSkirt*(self: NoiseTexture2D): untyped = self.getSeamlessBlendSkirt()
template `seamlessBlendSkirt=`*(self: NoiseTexture2D; value) = self.setSeamlessBlendSkirt(value)

template asNormalMap*(self: NoiseTexture2D): untyped = self.isNormalMap()
template `asNormalMap=`*(self: NoiseTexture2D; value) = self.setAsNormalMap(value)

template bumpStrength*(self: NoiseTexture2D): untyped = self.getBumpStrength()
template `bumpStrength=`*(self: NoiseTexture2D; value) = self.setBumpStrength(value)

template normalize*(self: NoiseTexture2D): untyped = self.isNormalized()
template `normalize=`*(self: NoiseTexture2D; value) = self.setNormalize(value)

template colorRamp*(self: NoiseTexture2D): untyped = self.getColorRamp()
template `colorRamp=`*(self: NoiseTexture2D; value) = self.setColorRamp(value)

template noise*(self: NoiseTexture2D): untyped = self.getNoise()
template `noise=`*(self: NoiseTexture2D; value) = self.setNoise(value)

const NoiseTexture2D_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NoiseTexture2D]): Table[string, string] = NoiseTexture2D_vmap