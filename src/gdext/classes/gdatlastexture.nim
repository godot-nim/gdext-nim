{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(AtlasTexture, Texture2D)

proc setAtlas*(self: AtlasTexture; atlas: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AtlasTexture, "set_atlas", 4051416890)
  methodbind.ptrcall(self, [getPtr atlas], void)

proc getAtlas*(self: AtlasTexture): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AtlasTexture, "get_atlas", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setRegion*(self: AtlasTexture; region: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AtlasTexture, "set_region", 2046264180)
  methodbind.ptrcall(self, [getPtr region], void)

proc getRegion*(self: AtlasTexture): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AtlasTexture, "get_region", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setMargin*(self: AtlasTexture; margin: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AtlasTexture, "set_margin", 2046264180)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getMargin*(self: AtlasTexture): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AtlasTexture, "get_margin", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setFilterClip*(self: AtlasTexture; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AtlasTexture, "set_filter_clip", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasFilterClip*(self: AtlasTexture): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AtlasTexture, "has_filter_clip", 36873697)
  methodbind.ptrcall(self, [], bool)

template atlas*(self: AtlasTexture): untyped = self.getAtlas()
template `atlas=`*(self: AtlasTexture; value) = self.setAtlas(value)

template region*(self: AtlasTexture): untyped = self.getRegion()
template `region=`*(self: AtlasTexture; value) = self.setRegion(value)

template margin*(self: AtlasTexture): untyped = self.getMargin()
template `margin=`*(self: AtlasTexture; value) = self.setMargin(value)

template filterClip*(self: AtlasTexture): untyped = self.hasFilterClip()
template `filterClip=`*(self: AtlasTexture; value) = self.setFilterClip(value)
