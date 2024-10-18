{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

proc setWidth*(self: NoiseTexture3D; width: int32): void =
  expandMethodBind(className NoiseTexture3D, "set_width", 1286410249)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc setHeight*(self: NoiseTexture3D; height: int32): void =
  expandMethodBind(className NoiseTexture3D, "set_height", 1286410249)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDepth*(self: NoiseTexture3D; depth: int32): void =
  expandMethodBind(className NoiseTexture3D, "set_depth", 1286410249)
  var `?param` = [getPtr depth]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInvert*(self: NoiseTexture3D; invert: bool): void =
  expandMethodBind(className NoiseTexture3D, "set_invert", 2586408642)
  var `?param` = [getPtr invert]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInvert*(self: NoiseTexture3D): bool =
  expandMethodBind(className NoiseTexture3D, "get_invert", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSeamless*(self: NoiseTexture3D; seamless: bool): void =
  expandMethodBind(className NoiseTexture3D, "set_seamless", 2586408642)
  var `?param` = [getPtr seamless]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSeamless*(self: NoiseTexture3D): bool =
  expandMethodBind(className NoiseTexture3D, "get_seamless", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSeamlessBlendSkirt*(self: NoiseTexture3D; seamlessBlendSkirt: Float): void =
  expandMethodBind(className NoiseTexture3D, "set_seamless_blend_skirt", 373806689)
  var `?param` = [getPtr seamlessBlendSkirt]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSeamlessBlendSkirt*(self: NoiseTexture3D): Float =
  expandMethodBind(className NoiseTexture3D, "get_seamless_blend_skirt", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setNormalize*(self: NoiseTexture3D; normalize: bool): void =
  expandMethodBind(className NoiseTexture3D, "set_normalize", 2586408642)
  var `?param` = [getPtr normalize]
  methodbind.ptrcall(self, addr `?param`[0])

proc isNormalized*(self: NoiseTexture3D): bool =
  expandMethodBind(className NoiseTexture3D, "is_normalized", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setColorRamp*(self: NoiseTexture3D; gradient: gdref Gradient): void =
  expandMethodBind(className NoiseTexture3D, "set_color_ramp", 2756054477)
  var `?param` = [getPtr gradient]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorRamp*(self: NoiseTexture3D): gdref Gradient =
  expandMethodBind(className NoiseTexture3D, "get_color_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setNoise*(self: NoiseTexture3D; noise: gdref Noise): void =
  expandMethodBind(className NoiseTexture3D, "set_noise", 4135492439)
  var `?param` = [getPtr noise]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNoise*(self: NoiseTexture3D): gdref Noise =
  expandMethodBind(className NoiseTexture3D, "get_noise", 185851837)
  var ret: encoded gdref Noise
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Noise)

template width*(self: NoiseTexture3D): untyped = self.getWidth()
template `width=`*(self: NoiseTexture3D; value) = self.setWidth(value)

template height*(self: NoiseTexture3D): untyped = self.getHeight()
template `height=`*(self: NoiseTexture3D; value) = self.setHeight(value)

template depth*(self: NoiseTexture3D): untyped = self.getDepth()
template `depth=`*(self: NoiseTexture3D; value) = self.setDepth(value)

template invert*(self: NoiseTexture3D): untyped = self.getInvert()
template `invert=`*(self: NoiseTexture3D; value) = self.setInvert(value)

template seamless*(self: NoiseTexture3D): untyped = self.getSeamless()
template `seamless=`*(self: NoiseTexture3D; value) = self.setSeamless(value)

template seamlessBlendSkirt*(self: NoiseTexture3D): untyped = self.getSeamlessBlendSkirt()
template `seamlessBlendSkirt=`*(self: NoiseTexture3D; value) = self.setSeamlessBlendSkirt(value)

template normalize*(self: NoiseTexture3D): untyped = self.isNormalized()
template `normalize=`*(self: NoiseTexture3D; value) = self.setNormalize(value)

template colorRamp*(self: NoiseTexture3D): untyped = self.getColorRamp()
template `colorRamp=`*(self: NoiseTexture3D; value) = self.setColorRamp(value)

template noise*(self: NoiseTexture3D): untyped = self.getNoise()
template `noise=`*(self: NoiseTexture3D; value) = self.setNoise(value)

const NoiseTexture3D_vmap =
  Texture3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NoiseTexture3D]): Table[string, string] = NoiseTexture3D_vmap