{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(OpenXRCompositionLayer, Node3D)

proc setLayerViewport*(self: OpenXRCompositionLayer; viewport: SubViewport): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_layer_viewport", 3888077664)
  methodbind.ptrcall(self, [getPtr viewport])

proc getLayerViewport*(self: OpenXRCompositionLayer): SubViewport =
  expandMethodBind(className OpenXRCompositionLayer, "get_layer_viewport", 3750751911)
  var ret: encoded SubViewport
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(SubViewport)

proc setUseAndroidSurface*(self: OpenXRCompositionLayer; enable: bool): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_use_android_surface", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getUseAndroidSurface*(self: OpenXRCompositionLayer): bool =
  expandMethodBind(className OpenXRCompositionLayer, "get_use_android_surface", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAndroidSurfaceSize*(self: OpenXRCompositionLayer; size: Vector2i): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_android_surface_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getAndroidSurfaceSize*(self: OpenXRCompositionLayer): Vector2i =
  expandMethodBind(className OpenXRCompositionLayer, "get_android_surface_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setEnableHolePunch*(self: OpenXRCompositionLayer; enable: bool): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_enable_hole_punch", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getEnableHolePunch*(self: OpenXRCompositionLayer): bool =
  expandMethodBind(className OpenXRCompositionLayer, "get_enable_hole_punch", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSortOrder*(self: OpenXRCompositionLayer; order: int32): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_sort_order", 1286410249)
  methodbind.ptrcall(self, [getPtr order])

proc getSortOrder*(self: OpenXRCompositionLayer): int32 =
  expandMethodBind(className OpenXRCompositionLayer, "get_sort_order", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setAlphaBlend*(self: OpenXRCompositionLayer; enabled: bool): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_alpha_blend", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getAlphaBlend*(self: OpenXRCompositionLayer): bool =
  expandMethodBind(className OpenXRCompositionLayer, "get_alpha_blend", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getAndroidSurface*(self: OpenXRCompositionLayer): gdref JavaObject =
  expandMethodBind(className OpenXRCompositionLayer, "get_android_surface", 3277089691)
  var ret: encoded gdref JavaObject
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref JavaObject)

proc isNativelySupported*(self: OpenXRCompositionLayer): bool =
  expandMethodBind(className OpenXRCompositionLayer, "is_natively_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMinFilter*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_Filter): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_min_filter", 3653437593)
  methodbind.ptrcall(self, [getPtr mode])

proc getMinFilter*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_Filter =
  expandMethodBind(className OpenXRCompositionLayer, "get_min_filter", 845677307)
  var ret: encoded OpenXRCompositionLayer_Filter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_Filter)

proc setMagFilter*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_Filter): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_mag_filter", 3653437593)
  methodbind.ptrcall(self, [getPtr mode])

proc getMagFilter*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_Filter =
  expandMethodBind(className OpenXRCompositionLayer, "get_mag_filter", 845677307)
  var ret: encoded OpenXRCompositionLayer_Filter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_Filter)

proc setMipmapMode*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_MipmapMode): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_mipmap_mode", 3271133183)
  methodbind.ptrcall(self, [getPtr mode])

proc getMipmapMode*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_MipmapMode =
  expandMethodBind(className OpenXRCompositionLayer, "get_mipmap_mode", 3962697095)
  var ret: encoded OpenXRCompositionLayer_MipmapMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_MipmapMode)

proc setHorizontalWrap*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_Wrap): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_horizontal_wrap", 15634990)
  methodbind.ptrcall(self, [getPtr mode])

proc getHorizontalWrap*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_Wrap =
  expandMethodBind(className OpenXRCompositionLayer, "get_horizontal_wrap", 2798816834)
  var ret: encoded OpenXRCompositionLayer_Wrap
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_Wrap)

proc setVerticalWrap*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_Wrap): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_vertical_wrap", 15634990)
  methodbind.ptrcall(self, [getPtr mode])

proc getVerticalWrap*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_Wrap =
  expandMethodBind(className OpenXRCompositionLayer, "get_vertical_wrap", 2798816834)
  var ret: encoded OpenXRCompositionLayer_Wrap
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_Wrap)

proc setRedSwizzle*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_Swizzle): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_red_swizzle", 741598951)
  methodbind.ptrcall(self, [getPtr mode])

proc getRedSwizzle*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_Swizzle =
  expandMethodBind(className OpenXRCompositionLayer, "get_red_swizzle", 2334776767)
  var ret: encoded OpenXRCompositionLayer_Swizzle
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_Swizzle)

proc setGreenSwizzle*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_Swizzle): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_green_swizzle", 741598951)
  methodbind.ptrcall(self, [getPtr mode])

proc getGreenSwizzle*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_Swizzle =
  expandMethodBind(className OpenXRCompositionLayer, "get_green_swizzle", 2334776767)
  var ret: encoded OpenXRCompositionLayer_Swizzle
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_Swizzle)

proc setBlueSwizzle*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_Swizzle): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_blue_swizzle", 741598951)
  methodbind.ptrcall(self, [getPtr mode])

proc getBlueSwizzle*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_Swizzle =
  expandMethodBind(className OpenXRCompositionLayer, "get_blue_swizzle", 2334776767)
  var ret: encoded OpenXRCompositionLayer_Swizzle
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_Swizzle)

proc setAlphaSwizzle*(self: OpenXRCompositionLayer; mode: OpenXRCompositionLayer_Swizzle): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_alpha_swizzle", 741598951)
  methodbind.ptrcall(self, [getPtr mode])

proc getAlphaSwizzle*(self: OpenXRCompositionLayer): OpenXRCompositionLayer_Swizzle =
  expandMethodBind(className OpenXRCompositionLayer, "get_alpha_swizzle", 2334776767)
  var ret: encoded OpenXRCompositionLayer_Swizzle
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRCompositionLayer_Swizzle)

proc setMaxAnisotropy*(self: OpenXRCompositionLayer; value: Float): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_max_anisotropy", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc getMaxAnisotropy*(self: OpenXRCompositionLayer): Float =
  expandMethodBind(className OpenXRCompositionLayer, "get_max_anisotropy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBorderColor*(self: OpenXRCompositionLayer; color: Color): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_border_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getBorderColor*(self: OpenXRCompositionLayer): Color =
  expandMethodBind(className OpenXRCompositionLayer, "get_border_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc intersectsRay*(self: OpenXRCompositionLayer; origin: Vector3; direction: Vector3): Vector2 =
  expandMethodBind(className OpenXRCompositionLayer, "intersects_ray", 1091262597)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr origin, getPtr direction], addr ret)
  (addr ret).decode_result(Vector2)

template layerViewport*(self: OpenXRCompositionLayer): untyped = self.getLayerViewport()
template `layerViewport=`*(self: OpenXRCompositionLayer; value) = self.setLayerViewport(value)

template useAndroidSurface*(self: OpenXRCompositionLayer): untyped = self.getUseAndroidSurface()
template `useAndroidSurface=`*(self: OpenXRCompositionLayer; value) = self.setUseAndroidSurface(value)

template androidSurfaceSize*(self: OpenXRCompositionLayer): untyped = self.getAndroidSurfaceSize()
template `androidSurfaceSize=`*(self: OpenXRCompositionLayer; value) = self.setAndroidSurfaceSize(value)

template sortOrder*(self: OpenXRCompositionLayer): untyped = self.getSortOrder()
template `sortOrder=`*(self: OpenXRCompositionLayer; value) = self.setSortOrder(value)

template alphaBlend*(self: OpenXRCompositionLayer): untyped = self.getAlphaBlend()
template `alphaBlend=`*(self: OpenXRCompositionLayer; value) = self.setAlphaBlend(value)

template enableHolePunch*(self: OpenXRCompositionLayer): untyped = self.getEnableHolePunch()
template `enableHolePunch=`*(self: OpenXRCompositionLayer; value) = self.setEnableHolePunch(value)

template swapchainStateMinFilter*(self: OpenXRCompositionLayer): untyped = self.getMinFilter()
template `swapchainStateMinFilter=`*(self: OpenXRCompositionLayer; value) = self.setMinFilter(value)

template swapchainStateMagFilter*(self: OpenXRCompositionLayer): untyped = self.getMagFilter()
template `swapchainStateMagFilter=`*(self: OpenXRCompositionLayer; value) = self.setMagFilter(value)

template swapchainStateMipmapMode*(self: OpenXRCompositionLayer): untyped = self.getMipmapMode()
template `swapchainStateMipmapMode=`*(self: OpenXRCompositionLayer; value) = self.setMipmapMode(value)

template swapchainStateHorizontalWrap*(self: OpenXRCompositionLayer): untyped = self.getHorizontalWrap()
template `swapchainStateHorizontalWrap=`*(self: OpenXRCompositionLayer; value) = self.setHorizontalWrap(value)

template swapchainStateVerticalWrap*(self: OpenXRCompositionLayer): untyped = self.getVerticalWrap()
template `swapchainStateVerticalWrap=`*(self: OpenXRCompositionLayer; value) = self.setVerticalWrap(value)

template swapchainStateRedSwizzle*(self: OpenXRCompositionLayer): untyped = self.getRedSwizzle()
template `swapchainStateRedSwizzle=`*(self: OpenXRCompositionLayer; value) = self.setRedSwizzle(value)

template swapchainStateGreenSwizzle*(self: OpenXRCompositionLayer): untyped = self.getGreenSwizzle()
template `swapchainStateGreenSwizzle=`*(self: OpenXRCompositionLayer; value) = self.setGreenSwizzle(value)

template swapchainStateBlueSwizzle*(self: OpenXRCompositionLayer): untyped = self.getBlueSwizzle()
template `swapchainStateBlueSwizzle=`*(self: OpenXRCompositionLayer; value) = self.setBlueSwizzle(value)

template swapchainStateAlphaSwizzle*(self: OpenXRCompositionLayer): untyped = self.getAlphaSwizzle()
template `swapchainStateAlphaSwizzle=`*(self: OpenXRCompositionLayer; value) = self.setAlphaSwizzle(value)

template swapchainStateMaxAnisotropy*(self: OpenXRCompositionLayer): untyped = self.getMaxAnisotropy()
template `swapchainStateMaxAnisotropy=`*(self: OpenXRCompositionLayer; value) = self.setMaxAnisotropy(value)

template swapchainStateBorderColor*(self: OpenXRCompositionLayer): untyped = self.getBorderColor()
template `swapchainStateBorderColor=`*(self: OpenXRCompositionLayer; value) = self.setBorderColor(value)
