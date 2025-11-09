{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

expandOnClassImported(TextureProgressBar, Range)

proc setUnderTexture*(self: TextureProgressBar; tex: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_under_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr tex], void)

proc getUnderTexture*(self: TextureProgressBar): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_under_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setProgressTexture*(self: TextureProgressBar; tex: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_progress_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr tex], void)

proc getProgressTexture*(self: TextureProgressBar): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_progress_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setOverTexture*(self: TextureProgressBar; tex: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_over_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr tex], void)

proc getOverTexture*(self: TextureProgressBar): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_over_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setFillMode*(self: TextureProgressBar; mode: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_fill_mode", 1286410249)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getFillMode*(self: TextureProgressBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_fill_mode", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setTintUnder*(self: TextureProgressBar; tint: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_tint_under", 2920490490)
  methodbind.ptrcall(self, [getPtr tint], void)

proc getTintUnder*(self: TextureProgressBar): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_tint_under", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setTintProgress*(self: TextureProgressBar; tint: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_tint_progress", 2920490490)
  methodbind.ptrcall(self, [getPtr tint], void)

proc getTintProgress*(self: TextureProgressBar): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_tint_progress", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setTintOver*(self: TextureProgressBar; tint: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_tint_over", 2920490490)
  methodbind.ptrcall(self, [getPtr tint], void)

proc getTintOver*(self: TextureProgressBar): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_tint_over", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setTextureProgressOffset*(self: TextureProgressBar; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_texture_progress_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getTextureProgressOffset*(self: TextureProgressBar): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_texture_progress_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setRadialInitialAngle*(self: TextureProgressBar; mode: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_radial_initial_angle", 373806689)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getRadialInitialAngle*(self: TextureProgressBar): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_radial_initial_angle", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setRadialCenterOffset*(self: TextureProgressBar; mode: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_radial_center_offset", 743155724)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getRadialCenterOffset*(self: TextureProgressBar): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_radial_center_offset", 1497962370)
  methodbind.ptrcall(self, [], Vector2)

proc setFillDegrees*(self: TextureProgressBar; mode: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_fill_degrees", 373806689)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getFillDegrees*(self: TextureProgressBar): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_fill_degrees", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setStretchMargin*(self: TextureProgressBar; margin: Side; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_stretch_margin", 437707142)
  methodbind.ptrcall(self, [getPtr margin, getPtr value], void)

proc getStretchMargin*(self: TextureProgressBar; margin: Side): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_stretch_margin", 1983885014)
  methodbind.ptrcall(self, [getPtr margin], int32)

proc setNinePatchStretch*(self: TextureProgressBar; stretch: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "set_nine_patch_stretch", 2586408642)
  methodbind.ptrcall(self, [getPtr stretch], void)

proc getNinePatchStretch*(self: TextureProgressBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureProgressBar, "get_nine_patch_stretch", 36873697)
  methodbind.ptrcall(self, [], bool)

template fillMode*(self: TextureProgressBar): untyped = self.getFillMode()
template `fillMode=`*(self: TextureProgressBar; value) = self.setFillMode(value)

template radialInitialAngle*(self: TextureProgressBar): untyped = self.getRadialInitialAngle()
template `radialInitialAngle=`*(self: TextureProgressBar; value) = self.setRadialInitialAngle(value)

template radialFillDegrees*(self: TextureProgressBar): untyped = self.getFillDegrees()
template `radialFillDegrees=`*(self: TextureProgressBar; value) = self.setFillDegrees(value)

template radialCenterOffset*(self: TextureProgressBar): untyped = self.getRadialCenterOffset()
template `radialCenterOffset=`*(self: TextureProgressBar; value) = self.setRadialCenterOffset(value)

template ninePatchStretch*(self: TextureProgressBar): untyped = self.getNinePatchStretch()
template `ninePatchStretch=`*(self: TextureProgressBar; value) = self.setNinePatchStretch(value)

template stretchMarginLeft*(self: TextureProgressBar): untyped = self.getStretchMargin(Side(0))
template `stretchMarginLeft=`*(self: TextureProgressBar; value) = self.setStretchMargin(Side(0), value)

template stretchMarginTop*(self: TextureProgressBar): untyped = self.getStretchMargin(Side(1))
template `stretchMarginTop=`*(self: TextureProgressBar; value) = self.setStretchMargin(Side(1), value)

template stretchMarginRight*(self: TextureProgressBar): untyped = self.getStretchMargin(Side(2))
template `stretchMarginRight=`*(self: TextureProgressBar; value) = self.setStretchMargin(Side(2), value)

template stretchMarginBottom*(self: TextureProgressBar): untyped = self.getStretchMargin(Side(3))
template `stretchMarginBottom=`*(self: TextureProgressBar; value) = self.setStretchMargin(Side(3), value)

template textureUnder*(self: TextureProgressBar): untyped = self.getUnderTexture()
template `textureUnder=`*(self: TextureProgressBar; value) = self.setUnderTexture(value)

template textureOver*(self: TextureProgressBar): untyped = self.getOverTexture()
template `textureOver=`*(self: TextureProgressBar; value) = self.setOverTexture(value)

template textureProgress*(self: TextureProgressBar): untyped = self.getProgressTexture()
template `textureProgress=`*(self: TextureProgressBar; value) = self.setProgressTexture(value)

template textureProgressOffset*(self: TextureProgressBar): untyped = self.getTextureProgressOffset()
template `textureProgressOffset=`*(self: TextureProgressBar; value) = self.setTextureProgressOffset(value)

template tintUnder*(self: TextureProgressBar): untyped = self.getTintUnder()
template `tintUnder=`*(self: TextureProgressBar; value) = self.setTintUnder(value)

template tintOver*(self: TextureProgressBar): untyped = self.getTintOver()
template `tintOver=`*(self: TextureProgressBar; value) = self.setTintOver(value)

template tintProgress*(self: TextureProgressBar): untyped = self.getTintProgress()
template `tintProgress=`*(self: TextureProgressBar; value) = self.setTintProgress(value)
