{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(NoiseTexture2D, Texture2D)

proc setWidth*(self: NoiseTexture2D; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc setHeight*(self: NoiseTexture2D; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_height", 1286410249)
  methodbind.ptrcall(self, [getPtr height], void)

proc setGenerateMipmaps*(self: NoiseTexture2D; invert: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_generate_mipmaps", 2586408642)
  methodbind.ptrcall(self, [getPtr invert], void)

proc isGeneratingMipmaps*(self: NoiseTexture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "is_generating_mipmaps", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNoise*(self: NoiseTexture2D; noise: gdref Noise): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_noise", 4135492439)
  methodbind.ptrcall(self, [getPtr noise], void)

proc getNoise*(self: NoiseTexture2D): gdref Noise =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "get_noise", 185851837)
  methodbind.ptrcall(self, [], gdref Noise)

proc setColorRamp*(self: NoiseTexture2D; gradient: gdref Gradient): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_color_ramp", 2756054477)
  methodbind.ptrcall(self, [getPtr gradient], void)

proc getColorRamp*(self: NoiseTexture2D): gdref Gradient =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "get_color_ramp", 132272999)
  methodbind.ptrcall(self, [], gdref Gradient)

proc setSeamless*(self: NoiseTexture2D; seamless: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_seamless", 2586408642)
  methodbind.ptrcall(self, [getPtr seamless], void)

proc getSeamless*(self: NoiseTexture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "get_seamless", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setInvert*(self: NoiseTexture2D; invert: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_invert", 2586408642)
  methodbind.ptrcall(self, [getPtr invert], void)

proc getInvert*(self: NoiseTexture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "get_invert", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setIn3DSpace*(self: NoiseTexture2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_in_3d_space", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isIn3DSpace*(self: NoiseTexture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "is_in_3d_space", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAsNormalMap*(self: NoiseTexture2D; asNormalMap: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_as_normal_map", 2586408642)
  methodbind.ptrcall(self, [getPtr asNormalMap], void)

proc isNormalMap*(self: NoiseTexture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "is_normal_map", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setNormalize*(self: NoiseTexture2D; normalize: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_normalize", 2586408642)
  methodbind.ptrcall(self, [getPtr normalize], void)

proc isNormalized*(self: NoiseTexture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "is_normalized", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSeamlessBlendSkirt*(self: NoiseTexture2D; seamlessBlendSkirt: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_seamless_blend_skirt", 373806689)
  methodbind.ptrcall(self, [getPtr seamlessBlendSkirt], void)

proc getSeamlessBlendSkirt*(self: NoiseTexture2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "get_seamless_blend_skirt", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setBumpStrength*(self: NoiseTexture2D; bumpStrength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "set_bump_strength", 373806689)
  methodbind.ptrcall(self, [getPtr bumpStrength], void)

proc getBumpStrength*(self: NoiseTexture2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture2D, "get_bump_strength", 191475506)
  methodbind.ptrcall(self, [], Float)

template width*(self: NoiseTexture2D): untyped = self.getWidth()
template `width=`*(self: NoiseTexture2D; value) = self.setWidth(value)

template height*(self: NoiseTexture2D): untyped = self.getHeight()
template `height=`*(self: NoiseTexture2D; value) = self.setHeight(value)

template generateMipmaps*(self: NoiseTexture2D): untyped = self.isGeneratingMipmaps()
template `generateMipmaps=`*(self: NoiseTexture2D; value) = self.setGenerateMipmaps(value)

template noise*(self: NoiseTexture2D): untyped = self.getNoise()
template `noise=`*(self: NoiseTexture2D; value) = self.setNoise(value)

template colorRamp*(self: NoiseTexture2D): untyped = self.getColorRamp()
template `colorRamp=`*(self: NoiseTexture2D; value) = self.setColorRamp(value)

template seamless*(self: NoiseTexture2D): untyped = self.getSeamless()
template `seamless=`*(self: NoiseTexture2D; value) = self.setSeamless(value)

template invert*(self: NoiseTexture2D): untyped = self.getInvert()
template `invert=`*(self: NoiseTexture2D; value) = self.setInvert(value)

template in3DSpace*(self: NoiseTexture2D): untyped = self.isIn3DSpace()
template `in3DSpace=`*(self: NoiseTexture2D; value) = self.setIn3DSpace(value)

template asNormalMap*(self: NoiseTexture2D): untyped = self.isNormalMap()
template `asNormalMap=`*(self: NoiseTexture2D; value) = self.setAsNormalMap(value)

template normalize*(self: NoiseTexture2D): untyped = self.isNormalized()
template `normalize=`*(self: NoiseTexture2D; value) = self.setNormalize(value)

template seamlessBlendSkirt*(self: NoiseTexture2D): untyped = self.getSeamlessBlendSkirt()
template `seamlessBlendSkirt=`*(self: NoiseTexture2D; value) = self.setSeamlessBlendSkirt(value)

template bumpStrength*(self: NoiseTexture2D): untyped = self.getBumpStrength()
template `bumpStrength=`*(self: NoiseTexture2D; value) = self.setBumpStrength(value)
