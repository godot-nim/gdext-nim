{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(ThemeDB, Object)

proc getDefaultTheme*(self: ThemeDB): gdref Theme =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "get_default_theme", 754276358)
  methodbind.ptrcall(self, [], gdref Theme)

proc getProjectTheme*(self: ThemeDB): gdref Theme =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "get_project_theme", 754276358)
  methodbind.ptrcall(self, [], gdref Theme)

proc setFallbackBaseScale*(self: ThemeDB; baseScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "set_fallback_base_scale", 373806689)
  methodbind.ptrcall(self, [getPtr baseScale], void)

proc getFallbackBaseScale*(self: ThemeDB): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "get_fallback_base_scale", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setFallbackFont*(self: ThemeDB; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "set_fallback_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font], void)

proc getFallbackFont*(self: ThemeDB): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "get_fallback_font", 3656929885)
  methodbind.ptrcall(self, [], gdref Font)

proc setFallbackFontSize*(self: ThemeDB; fontSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "set_fallback_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr fontSize], void)

proc getFallbackFontSize*(self: ThemeDB): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "get_fallback_font_size", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setFallbackIcon*(self: ThemeDB; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "set_fallback_icon", 4051416890)
  methodbind.ptrcall(self, [getPtr icon], void)

proc getFallbackIcon*(self: ThemeDB): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "get_fallback_icon", 255860311)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setFallbackStylebox*(self: ThemeDB; stylebox: gdref StyleBox): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "set_fallback_stylebox", 2797200388)
  methodbind.ptrcall(self, [getPtr stylebox], void)

proc getFallbackStylebox*(self: ThemeDB): gdref StyleBox =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ThemeDB, "get_fallback_stylebox", 496040854)
  methodbind.ptrcall(self, [], gdref StyleBox)

template fallbackBaseScale*(self: ThemeDB): untyped = self.getFallbackBaseScale()
template `fallbackBaseScale=`*(self: ThemeDB; value) = self.setFallbackBaseScale(value)

template fallbackFont*(self: ThemeDB): untyped = self.getFallbackFont()
template `fallbackFont=`*(self: ThemeDB; value) = self.setFallbackFont(value)

template fallbackFontSize*(self: ThemeDB): untyped = self.getFallbackFontSize()
template `fallbackFontSize=`*(self: ThemeDB; value) = self.setFallbackFontSize(value)

template fallbackIcon*(self: ThemeDB): untyped = self.getFallbackIcon()
template `fallbackIcon=`*(self: ThemeDB; value) = self.setFallbackIcon(value)

template fallbackStylebox*(self: ThemeDB): untyped = self.getFallbackStylebox()
template `fallbackStylebox=`*(self: ThemeDB; value) = self.setFallbackStylebox(value)
