{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

expandOnClassImported(NoiseTexture3D, Texture3D)

proc setWidth*(self: NoiseTexture3D; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc setHeight*(self: NoiseTexture3D; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_height", 1286410249)
  methodbind.ptrcall(self, [getPtr height], void)

proc setDepth*(self: NoiseTexture3D; depth: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr depth], void)

proc setNoise*(self: NoiseTexture3D; noise: gdref Noise): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_noise", 4135492439)
  methodbind.ptrcall(self, [getPtr noise], void)

proc getNoise*(self: NoiseTexture3D): gdref Noise =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "get_noise", 185851837)
  methodbind.ptrcall(self, [], gdref Noise)

proc setColorRamp*(self: NoiseTexture3D; gradient: gdref Gradient): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_color_ramp", 2756054477)
  methodbind.ptrcall(self, [getPtr gradient], void)

proc getColorRamp*(self: NoiseTexture3D): gdref Gradient =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "get_color_ramp", 132272999)
  methodbind.ptrcall(self, [], gdref Gradient)

proc setSeamless*(self: NoiseTexture3D; seamless: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_seamless", 2586408642)
  methodbind.ptrcall(self, [getPtr seamless], void)

proc getSeamless*(self: NoiseTexture3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "get_seamless", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setInvert*(self: NoiseTexture3D; invert: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_invert", 2586408642)
  methodbind.ptrcall(self, [getPtr invert], void)

proc getInvert*(self: NoiseTexture3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "get_invert", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNormalize*(self: NoiseTexture3D; normalize: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_normalize", 2586408642)
  methodbind.ptrcall(self, [getPtr normalize], void)

proc isNormalized*(self: NoiseTexture3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "is_normalized", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSeamlessBlendSkirt*(self: NoiseTexture3D; seamlessBlendSkirt: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "set_seamless_blend_skirt", 373806689)
  methodbind.ptrcall(self, [getPtr seamlessBlendSkirt], void)

proc getSeamlessBlendSkirt*(self: NoiseTexture3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NoiseTexture3D, "get_seamless_blend_skirt", 191475506)
  methodbind.ptrcall(self, [], Float)

template width*(self: NoiseTexture3D): untyped = self.getWidth()
template `width=`*(self: NoiseTexture3D; value) = self.setWidth(value)

template height*(self: NoiseTexture3D): untyped = self.getHeight()
template `height=`*(self: NoiseTexture3D; value) = self.setHeight(value)

template depth*(self: NoiseTexture3D): untyped = self.getDepth()
template `depth=`*(self: NoiseTexture3D; value) = self.setDepth(value)

template noise*(self: NoiseTexture3D): untyped = self.getNoise()
template `noise=`*(self: NoiseTexture3D; value) = self.setNoise(value)

template colorRamp*(self: NoiseTexture3D): untyped = self.getColorRamp()
template `colorRamp=`*(self: NoiseTexture3D; value) = self.setColorRamp(value)

template seamless*(self: NoiseTexture3D): untyped = self.getSeamless()
template `seamless=`*(self: NoiseTexture3D; value) = self.setSeamless(value)

template invert*(self: NoiseTexture3D): untyped = self.getInvert()
template `invert=`*(self: NoiseTexture3D; value) = self.setInvert(value)

template normalize*(self: NoiseTexture3D): untyped = self.isNormalized()
template `normalize=`*(self: NoiseTexture3D; value) = self.setNormalize(value)

template seamlessBlendSkirt*(self: NoiseTexture3D): untyped = self.getSeamlessBlendSkirt()
template `seamlessBlendSkirt=`*(self: NoiseTexture3D; value) = self.setSeamlessBlendSkirt(value)
