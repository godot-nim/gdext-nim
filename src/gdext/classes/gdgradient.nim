{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Gradient, Resource)

proc addPoint*(self: Gradient; offset: Float; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "add_point", 3629403827)
  methodbind.ptrcall(self, [getPtr offset, getPtr color], void)

proc removePoint*(self: Gradient; point: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr point], void)

proc setOffset*(self: Gradient; point: int32; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "set_offset", 1602489585)
  methodbind.ptrcall(self, [getPtr point, getPtr offset], void)

proc getOffset*(self: Gradient; point: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "get_offset", 4025615559)
  methodbind.ptrcall(self, [getPtr point], Float)

proc reverse*(self: Gradient): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "reverse", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setColor*(self: Gradient; point: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "set_color", 2878471219)
  methodbind.ptrcall(self, [getPtr point, getPtr color], void)

proc getColor*(self: Gradient; point: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "get_color", 2624840992)
  methodbind.ptrcall(self, [getPtr point], Color)

proc sample*(self: Gradient; offset: Float): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "sample", 1250405064)
  methodbind.ptrcall(self, [getPtr offset], Color)

proc getPointCount*(self: Gradient): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "get_point_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOffsets*(self: Gradient; offsets: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "set_offsets", 2899603908)
  methodbind.ptrcall(self, [getPtr offsets], void)

proc getOffsets*(self: Gradient): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "get_offsets", 675695659)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc setColors*(self: Gradient; colors: PackedColorArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "set_colors", 3546319833)
  methodbind.ptrcall(self, [getPtr colors], void)

proc getColors*(self: Gradient): PackedColorArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "get_colors", 1392750486)
  methodbind.ptrcall(self, [], PackedColorArray)

proc setInterpolationMode*(self: Gradient; interpolationMode: Gradient_InterpolationMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "set_interpolation_mode", 1971444490)
  methodbind.ptrcall(self, [getPtr interpolationMode], void)

proc getInterpolationMode*(self: Gradient): Gradient_InterpolationMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "get_interpolation_mode", 3674172981)
  methodbind.ptrcall(self, [], Gradient_InterpolationMode)

proc setInterpolationColorSpace*(self: Gradient; interpolationColorSpace: Gradient_ColorSpace): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "set_interpolation_color_space", 3685995981)
  methodbind.ptrcall(self, [getPtr interpolationColorSpace], void)

proc getInterpolationColorSpace*(self: Gradient): Gradient_ColorSpace =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Gradient, "get_interpolation_color_space", 1538296000)
  methodbind.ptrcall(self, [], Gradient_ColorSpace)

template interpolationMode*(self: Gradient): untyped = self.getInterpolationMode()
template `interpolationMode=`*(self: Gradient; value) = self.setInterpolationMode(value)

template interpolationColorSpace*(self: Gradient): untyped = self.getInterpolationColorSpace()
template `interpolationColorSpace=`*(self: Gradient; value) = self.setInterpolationColorSpace(value)

template offsets*(self: Gradient): untyped = self.getOffsets()
template `offsets=`*(self: Gradient; value) = self.setOffsets(value)

template colors*(self: Gradient): untyped = self.getColors()
template `colors=`*(self: Gradient; value) = self.setColors(value)
