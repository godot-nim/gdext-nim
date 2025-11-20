{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(DPITexture, Texture2D)

proc createFromString*(_: typedesc[DPITexture]; source: String; scale: Float = 1.0; saturation: Float = 1.0; colorMap: Dictionary = newDictionary()): gdref DPITexture =
  expandMethodBind(className DPITexture, "create_from_string", 755140520)
  nilCheck colorMap
  var ret: encoded gdref DPITexture
  methodbind.ptrcall([getPtr source, getPtr scale, getPtr saturation, getPtr colorMap], addr ret)
  (addr ret).decode_result(gdref DPITexture)

proc setSource*(self: DPITexture; source: String): void =
  expandMethodBind(className DPITexture, "set_source", 83702148)
  methodbind.ptrcall(self, [getPtr source])

proc getSource*(self: DPITexture): String =
  expandMethodBind(className DPITexture, "get_source", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setBaseScale*(self: DPITexture; baseScale: Float): void =
  expandMethodBind(className DPITexture, "set_base_scale", 373806689)
  methodbind.ptrcall(self, [getPtr baseScale])

proc getBaseScale*(self: DPITexture): Float =
  expandMethodBind(className DPITexture, "get_base_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSaturation*(self: DPITexture; saturation: Float): void =
  expandMethodBind(className DPITexture, "set_saturation", 373806689)
  methodbind.ptrcall(self, [getPtr saturation])

proc getSaturation*(self: DPITexture): Float =
  expandMethodBind(className DPITexture, "get_saturation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setColorMap*(self: DPITexture; colorMap: Dictionary): void =
  expandMethodBind(className DPITexture, "set_color_map", 4155329257)
  nilCheck colorMap
  methodbind.ptrcall(self, [getPtr colorMap])

proc getColorMap*(self: DPITexture): Dictionary =
  expandMethodBind(className DPITexture, "get_color_map", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc setSizeOverride*(self: DPITexture; size: Vector2i): void =
  expandMethodBind(className DPITexture, "set_size_override", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getScaledRid*(self: DPITexture): RID =
  expandMethodBind(className DPITexture, "get_scaled_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

template baseScale*(self: DPITexture): untyped = self.getBaseScale()
template `baseScale=`*(self: DPITexture; value) = self.setBaseScale(value)

template saturation*(self: DPITexture): untyped = self.getSaturation()
template `saturation=`*(self: DPITexture; value) = self.setSaturation(value)

template colorMap*(self: DPITexture): untyped = self.getColorMap()
template `colorMap=`*(self: DPITexture; value) = self.setColorMap(value)
