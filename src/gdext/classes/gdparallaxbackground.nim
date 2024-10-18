{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcanvaslayer; export gdcanvaslayer

proc setScrollOffset*(self: ParallaxBackground; offset: Vector2): void =
  expandMethodBind(className ParallaxBackground, "set_scroll_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScrollOffset*(self: ParallaxBackground): Vector2 =
  expandMethodBind(className ParallaxBackground, "get_scroll_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setScrollBaseOffset*(self: ParallaxBackground; offset: Vector2): void =
  expandMethodBind(className ParallaxBackground, "set_scroll_base_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScrollBaseOffset*(self: ParallaxBackground): Vector2 =
  expandMethodBind(className ParallaxBackground, "get_scroll_base_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setScrollBaseScale*(self: ParallaxBackground; scale: Vector2): void =
  expandMethodBind(className ParallaxBackground, "set_scroll_base_scale", 743155724)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScrollBaseScale*(self: ParallaxBackground): Vector2 =
  expandMethodBind(className ParallaxBackground, "get_scroll_base_scale", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setLimitBegin*(self: ParallaxBackground; offset: Vector2): void =
  expandMethodBind(className ParallaxBackground, "set_limit_begin", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLimitBegin*(self: ParallaxBackground): Vector2 =
  expandMethodBind(className ParallaxBackground, "get_limit_begin", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setLimitEnd*(self: ParallaxBackground; offset: Vector2): void =
  expandMethodBind(className ParallaxBackground, "set_limit_end", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLimitEnd*(self: ParallaxBackground): Vector2 =
  expandMethodBind(className ParallaxBackground, "get_limit_end", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setIgnoreCameraZoom*(self: ParallaxBackground; ignore: bool): void =
  expandMethodBind(className ParallaxBackground, "set_ignore_camera_zoom", 2586408642)
  var `?param` = [getPtr ignore]
  methodbind.ptrcall(self, addr `?param`[0])

proc isIgnoreCameraZoom*(self: ParallaxBackground): bool =
  expandMethodBind(className ParallaxBackground, "is_ignore_camera_zoom", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template scrollOffset*(self: ParallaxBackground): untyped = self.getScrollOffset()
template `scrollOffset=`*(self: ParallaxBackground; value) = self.setScrollOffset(value)

template scrollBaseOffset*(self: ParallaxBackground): untyped = self.getScrollBaseOffset()
template `scrollBaseOffset=`*(self: ParallaxBackground; value) = self.setScrollBaseOffset(value)

template scrollBaseScale*(self: ParallaxBackground): untyped = self.getScrollBaseScale()
template `scrollBaseScale=`*(self: ParallaxBackground; value) = self.setScrollBaseScale(value)

template scrollLimitBegin*(self: ParallaxBackground): untyped = self.getLimitBegin()
template `scrollLimitBegin=`*(self: ParallaxBackground; value) = self.setLimitBegin(value)

template scrollLimitEnd*(self: ParallaxBackground): untyped = self.getLimitEnd()
template `scrollLimitEnd=`*(self: ParallaxBackground; value) = self.setLimitEnd(value)

template scrollIgnoreCameraZoom*(self: ParallaxBackground): untyped = self.isIgnoreCameraZoom()
template `scrollIgnoreCameraZoom=`*(self: ParallaxBackground; value) = self.setIgnoreCameraZoom(value)

const ParallaxBackground_vmap =
  CanvasLayer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ParallaxBackground]): Table[string, string] = ParallaxBackground_vmap