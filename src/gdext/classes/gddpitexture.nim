{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(DPITexture, Texture2D)

proc createFromString*(_: typedesc[DPITexture]; source: String; scale: Float = 1.0; saturation: Float = 1.0; colorMap: Dictionary = newDictionary()): gdref DPITexture =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "create_from_string", 755140520)
  methodbind.ptrcall([getPtr source, getPtr scale, getPtr saturation, getPtr colorMap], gdref DPITexture)

proc setSource*(self: DPITexture; source: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "set_source", 83702148)
  methodbind.ptrcall(self, [getPtr source], void)

proc getSource*(self: DPITexture): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "get_source", 201670096)
  methodbind.ptrcall(self, [], String)

proc setBaseScale*(self: DPITexture; baseScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "set_base_scale", 373806689)
  methodbind.ptrcall(self, [getPtr baseScale], void)

proc getBaseScale*(self: DPITexture): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "get_base_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSaturation*(self: DPITexture; saturation: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "set_saturation", 373806689)
  methodbind.ptrcall(self, [getPtr saturation], void)

proc getSaturation*(self: DPITexture): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "get_saturation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setColorMap*(self: DPITexture; colorMap: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "set_color_map", 4155329257)
  methodbind.ptrcall(self, [getPtr colorMap], void)

proc getColorMap*(self: DPITexture): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "get_color_map", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc setSizeOverride*(self: DPITexture; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "set_size_override", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getScaledRid*(self: DPITexture): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DPITexture, "get_scaled_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

template baseScale*(self: DPITexture): untyped = self.getBaseScale()
template `baseScale=`*(self: DPITexture; value) = self.setBaseScale(value)

template saturation*(self: DPITexture): untyped = self.getSaturation()
template `saturation=`*(self: DPITexture; value) = self.setSaturation(value)

template colorMap*(self: DPITexture): untyped = self.getColorMap()
template `colorMap=`*(self: DPITexture; value) = self.setColorMap(value)
