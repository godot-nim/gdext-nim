{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setEnabled*(self: Light2D; enabled: bool): void =
  expandMethodBind(className Light2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEnabled*(self: Light2D): bool =
  expandMethodBind(className Light2D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setEditorOnly*(self: Light2D; editorOnly: bool): void =
  expandMethodBind(className Light2D, "set_editor_only", 2586408642)
  methodbind.ptrcall(self, [getPtr editorOnly])

proc isEditorOnly*(self: Light2D): bool =
  expandMethodBind(className Light2D, "is_editor_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setColor*(self: Light2D; color: Color): void =
  expandMethodBind(className Light2D, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getColor*(self: Light2D): Color =
  expandMethodBind(className Light2D, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setEnergy*(self: Light2D; energy: Float): void =
  expandMethodBind(className Light2D, "set_energy", 373806689)
  methodbind.ptrcall(self, [getPtr energy])

proc getEnergy*(self: Light2D): Float =
  expandMethodBind(className Light2D, "get_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setZRangeMin*(self: Light2D; z: int32): void =
  expandMethodBind(className Light2D, "set_z_range_min", 1286410249)
  methodbind.ptrcall(self, [getPtr z])

proc getZRangeMin*(self: Light2D): int32 =
  expandMethodBind(className Light2D, "get_z_range_min", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setZRangeMax*(self: Light2D; z: int32): void =
  expandMethodBind(className Light2D, "set_z_range_max", 1286410249)
  methodbind.ptrcall(self, [getPtr z])

proc getZRangeMax*(self: Light2D): int32 =
  expandMethodBind(className Light2D, "get_z_range_max", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setLayerRangeMin*(self: Light2D; layer: int32): void =
  expandMethodBind(className Light2D, "set_layer_range_min", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc getLayerRangeMin*(self: Light2D): int32 =
  expandMethodBind(className Light2D, "get_layer_range_min", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setLayerRangeMax*(self: Light2D; layer: int32): void =
  expandMethodBind(className Light2D, "set_layer_range_max", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc getLayerRangeMax*(self: Light2D): int32 =
  expandMethodBind(className Light2D, "get_layer_range_max", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setItemCullMask*(self: Light2D; itemCullMask: int32): void =
  expandMethodBind(className Light2D, "set_item_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr itemCullMask])

proc getItemCullMask*(self: Light2D): int32 =
  expandMethodBind(className Light2D, "get_item_cull_mask", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setItemShadowCullMask*(self: Light2D; itemShadowCullMask: int32): void =
  expandMethodBind(className Light2D, "set_item_shadow_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr itemShadowCullMask])

proc getItemShadowCullMask*(self: Light2D): int32 =
  expandMethodBind(className Light2D, "get_item_shadow_cull_mask", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setShadowEnabled*(self: Light2D; enabled: bool): void =
  expandMethodBind(className Light2D, "set_shadow_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isShadowEnabled*(self: Light2D): bool =
  expandMethodBind(className Light2D, "is_shadow_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShadowSmooth*(self: Light2D; smooth: Float): void =
  expandMethodBind(className Light2D, "set_shadow_smooth", 373806689)
  methodbind.ptrcall(self, [getPtr smooth])

proc getShadowSmooth*(self: Light2D): Float =
  expandMethodBind(className Light2D, "get_shadow_smooth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setShadowFilter*(self: Light2D; filter: Light2D_ShadowFilter): void =
  expandMethodBind(className Light2D, "set_shadow_filter", 3209356555)
  methodbind.ptrcall(self, [getPtr filter])

proc getShadowFilter*(self: Light2D): Light2D_ShadowFilter =
  expandMethodBind(className Light2D, "get_shadow_filter", 1973619177)
  var ret: encoded Light2D_ShadowFilter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Light2D_ShadowFilter)

proc setShadowColor*(self: Light2D; shadowColor: Color): void =
  expandMethodBind(className Light2D, "set_shadow_color", 2920490490)
  methodbind.ptrcall(self, [getPtr shadowColor])

proc getShadowColor*(self: Light2D): Color =
  expandMethodBind(className Light2D, "get_shadow_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setBlendMode*(self: Light2D; mode: Light2D_BlendMode): void =
  expandMethodBind(className Light2D, "set_blend_mode", 2916638796)
  methodbind.ptrcall(self, [getPtr mode])

proc getBlendMode*(self: Light2D): Light2D_BlendMode =
  expandMethodBind(className Light2D, "get_blend_mode", 936255250)
  var ret: encoded Light2D_BlendMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Light2D_BlendMode)

proc setHeight*(self: Light2D; height: Float): void =
  expandMethodBind(className Light2D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height])

proc getHeight*(self: Light2D): Float =
  expandMethodBind(className Light2D, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template enabled*(self: Light2D): untyped = self.isEnabled()
template `enabled=`*(self: Light2D; value) = self.setEnabled(value)

template editorOnly*(self: Light2D): untyped = self.isEditorOnly()
template `editorOnly=`*(self: Light2D; value) = self.setEditorOnly(value)

template color*(self: Light2D): untyped = self.getColor()
template `color=`*(self: Light2D; value) = self.setColor(value)

template energy*(self: Light2D): untyped = self.getEnergy()
template `energy=`*(self: Light2D; value) = self.setEnergy(value)

template blendMode*(self: Light2D): untyped = self.getBlendMode()
template `blendMode=`*(self: Light2D; value) = self.setBlendMode(value)

template rangeZMin*(self: Light2D): untyped = self.getZRangeMin()
template `rangeZMin=`*(self: Light2D; value) = self.setZRangeMin(value)

template rangeZMax*(self: Light2D): untyped = self.getZRangeMax()
template `rangeZMax=`*(self: Light2D; value) = self.setZRangeMax(value)

template rangeLayerMin*(self: Light2D): untyped = self.getLayerRangeMin()
template `rangeLayerMin=`*(self: Light2D; value) = self.setLayerRangeMin(value)

template rangeLayerMax*(self: Light2D): untyped = self.getLayerRangeMax()
template `rangeLayerMax=`*(self: Light2D; value) = self.setLayerRangeMax(value)

template rangeItemCullMask*(self: Light2D): untyped = self.getItemCullMask()
template `rangeItemCullMask=`*(self: Light2D; value) = self.setItemCullMask(value)

template shadowEnabled*(self: Light2D): untyped = self.isShadowEnabled()
template `shadowEnabled=`*(self: Light2D; value) = self.setShadowEnabled(value)

template shadowColor*(self: Light2D): untyped = self.getShadowColor()
template `shadowColor=`*(self: Light2D; value) = self.setShadowColor(value)

template shadowFilter*(self: Light2D): untyped = self.getShadowFilter()
template `shadowFilter=`*(self: Light2D; value) = self.setShadowFilter(value)

template shadowFilterSmooth*(self: Light2D): untyped = self.getShadowSmooth()
template `shadowFilterSmooth=`*(self: Light2D; value) = self.setShadowSmooth(value)

template shadowItemCullMask*(self: Light2D): untyped = self.getItemShadowCullMask()
template `shadowItemCullMask=`*(self: Light2D; value) = self.setItemShadowCullMask(value)

const Light2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Light2D]): Table[string, string] = Light2D_vmap