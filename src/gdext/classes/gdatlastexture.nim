{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setAtlas*(self: AtlasTexture; atlas: gdref Texture2D): void =
  expandMethodBind(className AtlasTexture, "set_atlas", 4051416890)
  var `?param` = [getPtr atlas]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAtlas*(self: AtlasTexture): gdref Texture2D =
  expandMethodBind(className AtlasTexture, "get_atlas", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setRegion*(self: AtlasTexture; region: Rect2): void =
  expandMethodBind(className AtlasTexture, "set_region", 2046264180)
  var `?param` = [getPtr region]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRegion*(self: AtlasTexture): Rect2 =
  expandMethodBind(className AtlasTexture, "get_region", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setMargin*(self: AtlasTexture; margin: Rect2): void =
  expandMethodBind(className AtlasTexture, "set_margin", 2046264180)
  var `?param` = [getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMargin*(self: AtlasTexture): Rect2 =
  expandMethodBind(className AtlasTexture, "get_margin", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setFilterClip*(self: AtlasTexture; enable: bool): void =
  expandMethodBind(className AtlasTexture, "set_filter_clip", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasFilterClip*(self: AtlasTexture): bool =
  expandMethodBind(className AtlasTexture, "has_filter_clip", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template atlas*(self: AtlasTexture): untyped = self.getAtlas()
template `atlas=`*(self: AtlasTexture; value) = self.setAtlas(value)

template region*(self: AtlasTexture): untyped = self.getRegion()
template `region=`*(self: AtlasTexture; value) = self.setRegion(value)

template margin*(self: AtlasTexture): untyped = self.getMargin()
template `margin=`*(self: AtlasTexture; value) = self.setMargin(value)

template filterClip*(self: AtlasTexture): untyped = self.hasFilterClip()
template `filterClip=`*(self: AtlasTexture; value) = self.setFilterClip(value)

const AtlasTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AtlasTexture]): Table[string, string] = AtlasTexture_vmap