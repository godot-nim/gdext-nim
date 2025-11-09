{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(GeometryInstance3D, VisualInstance3D)

proc setMaterialOverride*(self: GeometryInstance3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_material_override", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterialOverride*(self: GeometryInstance3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_material_override", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc setMaterialOverlay*(self: GeometryInstance3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_material_overlay", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterialOverlay*(self: GeometryInstance3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_material_overlay", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc setCastShadowsSetting*(self: GeometryInstance3D; shadowCastingSetting: GeometryInstance3D_ShadowCastingSetting): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_cast_shadows_setting", 856677339)
  methodbind.ptrcall(self, [getPtr shadowCastingSetting], void)

proc getCastShadowsSetting*(self: GeometryInstance3D): GeometryInstance3D_ShadowCastingSetting =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_cast_shadows_setting", 3383019359)
  methodbind.ptrcall(self, [], GeometryInstance3D_ShadowCastingSetting)

proc setLodBias*(self: GeometryInstance3D; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_lod_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias], void)

proc getLodBias*(self: GeometryInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_lod_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTransparency*(self: GeometryInstance3D; transparency: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_transparency", 373806689)
  methodbind.ptrcall(self, [getPtr transparency], void)

proc getTransparency*(self: GeometryInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_transparency", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeEndMargin*(self: GeometryInstance3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_visibility_range_end_margin", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getVisibilityRangeEndMargin*(self: GeometryInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_visibility_range_end_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeEnd*(self: GeometryInstance3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_visibility_range_end", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getVisibilityRangeEnd*(self: GeometryInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_visibility_range_end", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeBeginMargin*(self: GeometryInstance3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_visibility_range_begin_margin", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getVisibilityRangeBeginMargin*(self: GeometryInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_visibility_range_begin_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeBegin*(self: GeometryInstance3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_visibility_range_begin", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getVisibilityRangeBegin*(self: GeometryInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_visibility_range_begin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeFadeMode*(self: GeometryInstance3D; mode: GeometryInstance3D_VisibilityRangeFadeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_visibility_range_fade_mode", 1440117808)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getVisibilityRangeFadeMode*(self: GeometryInstance3D): GeometryInstance3D_VisibilityRangeFadeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_visibility_range_fade_mode", 2067221882)
  methodbind.ptrcall(self, [], GeometryInstance3D_VisibilityRangeFadeMode)

proc setInstanceShaderParameter*(self: GeometryInstance3D; name: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_instance_shader_parameter", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc getInstanceShaderParameter*(self: GeometryInstance3D; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_instance_shader_parameter", 2760726917)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc setExtraCullMargin*(self: GeometryInstance3D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_extra_cull_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getExtraCullMargin*(self: GeometryInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_extra_cull_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLightmapTexelScale*(self: GeometryInstance3D; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_lightmap_texel_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getLightmapTexelScale*(self: GeometryInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_lightmap_texel_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLightmapScale*(self: GeometryInstance3D; scale: GeometryInstance3D_LightmapScale): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_lightmap_scale", 2462696582)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getLightmapScale*(self: GeometryInstance3D): GeometryInstance3D_LightmapScale =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_lightmap_scale", 798767852)
  methodbind.ptrcall(self, [], GeometryInstance3D_LightmapScale)

proc setGiMode*(self: GeometryInstance3D; mode: GeometryInstance3D_GIMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_gi_mode", 2548557163)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getGiMode*(self: GeometryInstance3D): GeometryInstance3D_GIMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_gi_mode", 2188566509)
  methodbind.ptrcall(self, [], GeometryInstance3D_GIMode)

proc setIgnoreOcclusionCulling*(self: GeometryInstance3D; ignoreCulling: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_ignore_occlusion_culling", 2586408642)
  methodbind.ptrcall(self, [getPtr ignoreCulling], void)

proc isIgnoringOcclusionCulling*(self: GeometryInstance3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "is_ignoring_occlusion_culling", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setCustomAabb*(self: GeometryInstance3D; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "set_custom_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb], void)

proc getCustomAabb*(self: GeometryInstance3D): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GeometryInstance3D, "get_custom_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

template materialOverride*(self: GeometryInstance3D): untyped = self.getMaterialOverride()
template `materialOverride=`*(self: GeometryInstance3D; value) = self.setMaterialOverride(value)

template materialOverlay*(self: GeometryInstance3D): untyped = self.getMaterialOverlay()
template `materialOverlay=`*(self: GeometryInstance3D; value) = self.setMaterialOverlay(value)

template transparency*(self: GeometryInstance3D): untyped = self.getTransparency()
template `transparency=`*(self: GeometryInstance3D; value) = self.setTransparency(value)

template castShadow*(self: GeometryInstance3D): untyped = self.getCastShadowsSetting()
template `castShadow=`*(self: GeometryInstance3D; value) = self.setCastShadowsSetting(value)

template extraCullMargin*(self: GeometryInstance3D): untyped = self.getExtraCullMargin()
template `extraCullMargin=`*(self: GeometryInstance3D; value) = self.setExtraCullMargin(value)

template customAabb*(self: GeometryInstance3D): untyped = self.getCustomAabb()
template `customAabb=`*(self: GeometryInstance3D; value) = self.setCustomAabb(value)

template lodBias*(self: GeometryInstance3D): untyped = self.getLodBias()
template `lodBias=`*(self: GeometryInstance3D; value) = self.setLodBias(value)

template ignoreOcclusionCulling*(self: GeometryInstance3D): untyped = self.isIgnoringOcclusionCulling()
template `ignoreOcclusionCulling=`*(self: GeometryInstance3D; value) = self.setIgnoreOcclusionCulling(value)

template giMode*(self: GeometryInstance3D): untyped = self.getGiMode()
template `giMode=`*(self: GeometryInstance3D; value) = self.setGiMode(value)

template giLightmapTexelScale*(self: GeometryInstance3D): untyped = self.getLightmapTexelScale()
template `giLightmapTexelScale=`*(self: GeometryInstance3D; value) = self.setLightmapTexelScale(value)

template giLightmapScale*(self: GeometryInstance3D): untyped = self.getLightmapScale()
template `giLightmapScale=`*(self: GeometryInstance3D; value) = self.setLightmapScale(value)

template visibilityRangeBegin*(self: GeometryInstance3D): untyped = self.getVisibilityRangeBegin()
template `visibilityRangeBegin=`*(self: GeometryInstance3D; value) = self.setVisibilityRangeBegin(value)

template visibilityRangeBeginMargin*(self: GeometryInstance3D): untyped = self.getVisibilityRangeBeginMargin()
template `visibilityRangeBeginMargin=`*(self: GeometryInstance3D; value) = self.setVisibilityRangeBeginMargin(value)

template visibilityRangeEnd*(self: GeometryInstance3D): untyped = self.getVisibilityRangeEnd()
template `visibilityRangeEnd=`*(self: GeometryInstance3D; value) = self.setVisibilityRangeEnd(value)

template visibilityRangeEndMargin*(self: GeometryInstance3D): untyped = self.getVisibilityRangeEndMargin()
template `visibilityRangeEndMargin=`*(self: GeometryInstance3D; value) = self.setVisibilityRangeEndMargin(value)

template visibilityRangeFadeMode*(self: GeometryInstance3D): untyped = self.getVisibilityRangeFadeMode()
template `visibilityRangeFadeMode=`*(self: GeometryInstance3D; value) = self.setVisibilityRangeFadeMode(value)
