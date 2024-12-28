{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getDefaultTheme*(self: ThemeDB): gdref Theme =
  expandMethodBind(className ThemeDB, "get_default_theme", 754276358)
  var ret: encoded gdref Theme
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Theme)

proc getProjectTheme*(self: ThemeDB): gdref Theme =
  expandMethodBind(className ThemeDB, "get_project_theme", 754276358)
  var ret: encoded gdref Theme
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Theme)

proc setFallbackBaseScale*(self: ThemeDB; baseScale: Float): void =
  expandMethodBind(className ThemeDB, "set_fallback_base_scale", 373806689)
  methodbind.ptrcall(self, [getPtr baseScale])

proc getFallbackBaseScale*(self: ThemeDB): Float =
  expandMethodBind(className ThemeDB, "get_fallback_base_scale", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFallbackFont*(self: ThemeDB; font: gdref Font): void =
  expandMethodBind(className ThemeDB, "set_fallback_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font])

proc getFallbackFont*(self: ThemeDB): gdref Font =
  expandMethodBind(className ThemeDB, "get_fallback_font", 3656929885)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Font)

proc setFallbackFontSize*(self: ThemeDB; fontSize: int32): void =
  expandMethodBind(className ThemeDB, "set_fallback_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr fontSize])

proc getFallbackFontSize*(self: ThemeDB): int32 =
  expandMethodBind(className ThemeDB, "get_fallback_font_size", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setFallbackIcon*(self: ThemeDB; icon: gdref Texture2D): void =
  expandMethodBind(className ThemeDB, "set_fallback_icon", 4051416890)
  methodbind.ptrcall(self, [getPtr icon])

proc getFallbackIcon*(self: ThemeDB): gdref Texture2D =
  expandMethodBind(className ThemeDB, "get_fallback_icon", 255860311)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setFallbackStylebox*(self: ThemeDB; stylebox: gdref StyleBox): void =
  expandMethodBind(className ThemeDB, "set_fallback_stylebox", 2797200388)
  methodbind.ptrcall(self, [getPtr stylebox])

proc getFallbackStylebox*(self: ThemeDB): gdref StyleBox =
  expandMethodBind(className ThemeDB, "get_fallback_stylebox", 496040854)
  var ret: encoded gdref StyleBox
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref StyleBox)

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

const ThemeDB_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ThemeDB]): Table[string, string] = ThemeDB_vmap

proc fallbackChanged*(self: ThemeDB): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("fallback_changed")
  self.emitSignal(signalname)