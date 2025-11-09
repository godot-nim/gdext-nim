{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcanvaslayer; export gdcanvaslayer

expandOnClassImported(ParallaxBackground, CanvasLayer)

proc setScrollOffset*(self: ParallaxBackground; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "set_scroll_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getScrollOffset*(self: ParallaxBackground): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "get_scroll_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setScrollBaseOffset*(self: ParallaxBackground; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "set_scroll_base_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getScrollBaseOffset*(self: ParallaxBackground): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "get_scroll_base_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setScrollBaseScale*(self: ParallaxBackground; scale: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "set_scroll_base_scale", 743155724)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getScrollBaseScale*(self: ParallaxBackground): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "get_scroll_base_scale", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setLimitBegin*(self: ParallaxBackground; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "set_limit_begin", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getLimitBegin*(self: ParallaxBackground): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "get_limit_begin", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setLimitEnd*(self: ParallaxBackground; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "set_limit_end", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getLimitEnd*(self: ParallaxBackground): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "get_limit_end", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setIgnoreCameraZoom*(self: ParallaxBackground; ignore: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "set_ignore_camera_zoom", 2586408642)
  methodbind.ptrcall(self, [getPtr ignore], void)

proc isIgnoreCameraZoom*(self: ParallaxBackground): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ParallaxBackground, "is_ignore_camera_zoom", 2240911060)
  methodbind.ptrcall(self, [], bool)

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
