{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc addPoint*(self: Gradient; offset: Float; color: Color): void =
  expandMethodBind(className Gradient, "add_point", 3629403827)
  methodbind.ptrcall(self, [getPtr offset, getPtr color])

proc removePoint*(self: Gradient; point: int32): void =
  expandMethodBind(className Gradient, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr point])

proc setOffset*(self: Gradient; point: int32; offset: Float): void =
  expandMethodBind(className Gradient, "set_offset", 1602489585)
  methodbind.ptrcall(self, [getPtr point, getPtr offset])

proc getOffset*(self: Gradient; point: int32): Float =
  expandMethodBind(className Gradient, "get_offset", 4025615559)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr point], addr ret)
  (addr ret).decode_result(Float)

proc reverse*(self: Gradient): void =
  expandMethodBind(className Gradient, "reverse", 3218959716)
  methodbind.ptrcall(self, [])

proc setColor*(self: Gradient; point: int32; color: Color): void =
  expandMethodBind(className Gradient, "set_color", 2878471219)
  methodbind.ptrcall(self, [getPtr point, getPtr color])

proc getColor*(self: Gradient; point: int32): Color =
  expandMethodBind(className Gradient, "get_color", 2624840992)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr point], addr ret)
  (addr ret).decode_result(Color)

proc sample*(self: Gradient; offset: Float): Color =
  expandMethodBind(className Gradient, "sample", 1250405064)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr offset], addr ret)
  (addr ret).decode_result(Color)

proc getPointCount*(self: Gradient): int32 =
  expandMethodBind(className Gradient, "get_point_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setOffsets*(self: Gradient; offsets: PackedFloat32Array): void =
  expandMethodBind(className Gradient, "set_offsets", 2899603908)
  methodbind.ptrcall(self, [getPtr offsets])

proc getOffsets*(self: Gradient): PackedFloat32Array =
  expandMethodBind(className Gradient, "get_offsets", 675695659)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc setColors*(self: Gradient; colors: PackedColorArray): void =
  expandMethodBind(className Gradient, "set_colors", 3546319833)
  methodbind.ptrcall(self, [getPtr colors])

proc getColors*(self: Gradient): PackedColorArray =
  expandMethodBind(className Gradient, "get_colors", 1392750486)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedColorArray)

proc setInterpolationMode*(self: Gradient; interpolationMode: Gradient_InterpolationMode): void =
  expandMethodBind(className Gradient, "set_interpolation_mode", 1971444490)
  methodbind.ptrcall(self, [getPtr interpolationMode])

proc getInterpolationMode*(self: Gradient): Gradient_InterpolationMode =
  expandMethodBind(className Gradient, "get_interpolation_mode", 3674172981)
  var ret: encoded Gradient_InterpolationMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Gradient_InterpolationMode)

proc setInterpolationColorSpace*(self: Gradient; interpolationColorSpace: Gradient_ColorSpace): void =
  expandMethodBind(className Gradient, "set_interpolation_color_space", 3685995981)
  methodbind.ptrcall(self, [getPtr interpolationColorSpace])

proc getInterpolationColorSpace*(self: Gradient): Gradient_ColorSpace =
  expandMethodBind(className Gradient, "get_interpolation_color_space", 1538296000)
  var ret: encoded Gradient_ColorSpace
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Gradient_ColorSpace)

template interpolationMode*(self: Gradient): untyped = self.getInterpolationMode()
template `interpolationMode=`*(self: Gradient; value) = self.setInterpolationMode(value)

template interpolationColorSpace*(self: Gradient): untyped = self.getInterpolationColorSpace()
template `interpolationColorSpace=`*(self: Gradient; value) = self.setInterpolationColorSpace(value)

template offsets*(self: Gradient): untyped = self.getOffsets()
template `offsets=`*(self: Gradient; value) = self.setOffsets(value)

template colors*(self: Gradient): untyped = self.getColors()
template `colors=`*(self: Gradient; value) = self.setColors(value)

const Gradient_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Gradient]): Table[string, string] = Gradient_vmap