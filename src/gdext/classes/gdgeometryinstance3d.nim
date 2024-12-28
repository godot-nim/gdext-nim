{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setMaterialOverride*(self: GeometryInstance3D; material: gdref Material): void =
  expandMethodBind(className GeometryInstance3D, "set_material_override", 2757459619)
  methodbind.ptrcall(self, [getPtr material])

proc getMaterialOverride*(self: GeometryInstance3D): gdref Material =
  expandMethodBind(className GeometryInstance3D, "get_material_override", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Material)

proc setMaterialOverlay*(self: GeometryInstance3D; material: gdref Material): void =
  expandMethodBind(className GeometryInstance3D, "set_material_overlay", 2757459619)
  methodbind.ptrcall(self, [getPtr material])

proc getMaterialOverlay*(self: GeometryInstance3D): gdref Material =
  expandMethodBind(className GeometryInstance3D, "get_material_overlay", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Material)

proc setCastShadowsSetting*(self: GeometryInstance3D; shadowCastingSetting: GeometryInstance3D_ShadowCastingSetting): void =
  expandMethodBind(className GeometryInstance3D, "set_cast_shadows_setting", 856677339)
  methodbind.ptrcall(self, [getPtr shadowCastingSetting])

proc getCastShadowsSetting*(self: GeometryInstance3D): GeometryInstance3D_ShadowCastingSetting =
  expandMethodBind(className GeometryInstance3D, "get_cast_shadows_setting", 3383019359)
  var ret: encoded GeometryInstance3D_ShadowCastingSetting
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GeometryInstance3D_ShadowCastingSetting)

proc setLodBias*(self: GeometryInstance3D; bias: Float): void =
  expandMethodBind(className GeometryInstance3D, "set_lod_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias])

proc getLodBias*(self: GeometryInstance3D): Float =
  expandMethodBind(className GeometryInstance3D, "get_lod_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTransparency*(self: GeometryInstance3D; transparency: Float): void =
  expandMethodBind(className GeometryInstance3D, "set_transparency", 373806689)
  methodbind.ptrcall(self, [getPtr transparency])

proc getTransparency*(self: GeometryInstance3D): Float =
  expandMethodBind(className GeometryInstance3D, "get_transparency", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeEndMargin*(self: GeometryInstance3D; distance: Float): void =
  expandMethodBind(className GeometryInstance3D, "set_visibility_range_end_margin", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getVisibilityRangeEndMargin*(self: GeometryInstance3D): Float =
  expandMethodBind(className GeometryInstance3D, "get_visibility_range_end_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeEnd*(self: GeometryInstance3D; distance: Float): void =
  expandMethodBind(className GeometryInstance3D, "set_visibility_range_end", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getVisibilityRangeEnd*(self: GeometryInstance3D): Float =
  expandMethodBind(className GeometryInstance3D, "get_visibility_range_end", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeBeginMargin*(self: GeometryInstance3D; distance: Float): void =
  expandMethodBind(className GeometryInstance3D, "set_visibility_range_begin_margin", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getVisibilityRangeBeginMargin*(self: GeometryInstance3D): Float =
  expandMethodBind(className GeometryInstance3D, "get_visibility_range_begin_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeBegin*(self: GeometryInstance3D; distance: Float): void =
  expandMethodBind(className GeometryInstance3D, "set_visibility_range_begin", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getVisibilityRangeBegin*(self: GeometryInstance3D): Float =
  expandMethodBind(className GeometryInstance3D, "get_visibility_range_begin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeFadeMode*(self: GeometryInstance3D; mode: GeometryInstance3D_VisibilityRangeFadeMode): void =
  expandMethodBind(className GeometryInstance3D, "set_visibility_range_fade_mode", 1440117808)
  methodbind.ptrcall(self, [getPtr mode])

proc getVisibilityRangeFadeMode*(self: GeometryInstance3D): GeometryInstance3D_VisibilityRangeFadeMode =
  expandMethodBind(className GeometryInstance3D, "get_visibility_range_fade_mode", 2067221882)
  var ret: encoded GeometryInstance3D_VisibilityRangeFadeMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GeometryInstance3D_VisibilityRangeFadeMode)

proc setInstanceShaderParameter*(self: GeometryInstance3D; name: StringName; value: Variant): void =
  expandMethodBind(className GeometryInstance3D, "set_instance_shader_parameter", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

proc getInstanceShaderParameter*(self: GeometryInstance3D; name: StringName): Variant =
  expandMethodBind(className GeometryInstance3D, "get_instance_shader_parameter", 2760726917)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Variant)

proc setExtraCullMargin*(self: GeometryInstance3D; margin: Float): void =
  expandMethodBind(className GeometryInstance3D, "set_extra_cull_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin])

proc getExtraCullMargin*(self: GeometryInstance3D): Float =
  expandMethodBind(className GeometryInstance3D, "get_extra_cull_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLightmapScale*(self: GeometryInstance3D; scale: GeometryInstance3D_LightmapScale): void =
  expandMethodBind(className GeometryInstance3D, "set_lightmap_scale", 2462696582)
  methodbind.ptrcall(self, [getPtr scale])

proc getLightmapScale*(self: GeometryInstance3D): GeometryInstance3D_LightmapScale =
  expandMethodBind(className GeometryInstance3D, "get_lightmap_scale", 798767852)
  var ret: encoded GeometryInstance3D_LightmapScale
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GeometryInstance3D_LightmapScale)

proc setGiMode*(self: GeometryInstance3D; mode: GeometryInstance3D_GIMode): void =
  expandMethodBind(className GeometryInstance3D, "set_gi_mode", 2548557163)
  methodbind.ptrcall(self, [getPtr mode])

proc getGiMode*(self: GeometryInstance3D): GeometryInstance3D_GIMode =
  expandMethodBind(className GeometryInstance3D, "get_gi_mode", 2188566509)
  var ret: encoded GeometryInstance3D_GIMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GeometryInstance3D_GIMode)

proc setIgnoreOcclusionCulling*(self: GeometryInstance3D; ignoreCulling: bool): void =
  expandMethodBind(className GeometryInstance3D, "set_ignore_occlusion_culling", 2586408642)
  methodbind.ptrcall(self, [getPtr ignoreCulling])

proc isIgnoringOcclusionCulling*(self: GeometryInstance3D): bool =
  expandMethodBind(className GeometryInstance3D, "is_ignoring_occlusion_culling", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCustomAabb*(self: GeometryInstance3D; aabb: AABB): void =
  expandMethodBind(className GeometryInstance3D, "set_custom_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb])

proc getCustomAabb*(self: GeometryInstance3D): AABB =
  expandMethodBind(className GeometryInstance3D, "get_custom_aabb", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AABB)

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

const GeometryInstance3D_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GeometryInstance3D]): Table[string, string] = GeometryInstance3D_vmap