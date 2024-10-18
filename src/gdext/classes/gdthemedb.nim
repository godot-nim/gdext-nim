{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getDefaultTheme*(self: ThemeDb): gdref Theme =
  expandMethodBind(className ThemeDb, "get_default_theme", 754276358)
  var ret: encoded gdref Theme
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Theme)

proc getProjectTheme*(self: ThemeDb): gdref Theme =
  expandMethodBind(className ThemeDb, "get_project_theme", 754276358)
  var ret: encoded gdref Theme
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Theme)

proc setFallbackBaseScale*(self: ThemeDb; baseScale: Float): void =
  expandMethodBind(className ThemeDb, "set_fallback_base_scale", 373806689)
  var `?param` = [getPtr baseScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackBaseScale*(self: ThemeDb): Float =
  expandMethodBind(className ThemeDb, "get_fallback_base_scale", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFallbackFont*(self: ThemeDb; font: gdref Font): void =
  expandMethodBind(className ThemeDb, "set_fallback_font", 1262170328)
  var `?param` = [getPtr font]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackFont*(self: ThemeDb): gdref Font =
  expandMethodBind(className ThemeDb, "get_fallback_font", 3656929885)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Font)

proc setFallbackFontSize*(self: ThemeDb; fontSize: int32): void =
  expandMethodBind(className ThemeDb, "set_fallback_font_size", 1286410249)
  var `?param` = [getPtr fontSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackFontSize*(self: ThemeDb): int32 =
  expandMethodBind(className ThemeDb, "get_fallback_font_size", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFallbackIcon*(self: ThemeDb; icon: gdref Texture2D): void =
  expandMethodBind(className ThemeDb, "set_fallback_icon", 4051416890)
  var `?param` = [getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackIcon*(self: ThemeDb): gdref Texture2D =
  expandMethodBind(className ThemeDb, "get_fallback_icon", 255860311)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setFallbackStylebox*(self: ThemeDb; stylebox: gdref StyleBox): void =
  expandMethodBind(className ThemeDb, "set_fallback_stylebox", 2797200388)
  var `?param` = [getPtr stylebox]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackStylebox*(self: ThemeDb): gdref StyleBox =
  expandMethodBind(className ThemeDb, "get_fallback_stylebox", 496040854)
  var ret: encoded gdref StyleBox
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref StyleBox)

template fallbackBaseScale*(self: ThemeDb): untyped = self.getFallbackBaseScale()
template `fallbackBaseScale=`*(self: ThemeDb; value) = self.setFallbackBaseScale(value)

template fallbackFont*(self: ThemeDb): untyped = self.getFallbackFont()
template `fallbackFont=`*(self: ThemeDb; value) = self.setFallbackFont(value)

template fallbackFontSize*(self: ThemeDb): untyped = self.getFallbackFontSize()
template `fallbackFontSize=`*(self: ThemeDb; value) = self.setFallbackFontSize(value)

template fallbackIcon*(self: ThemeDb): untyped = self.getFallbackIcon()
template `fallbackIcon=`*(self: ThemeDb; value) = self.setFallbackIcon(value)

template fallbackStylebox*(self: ThemeDb): untyped = self.getFallbackStylebox()
template `fallbackStylebox=`*(self: ThemeDb; value) = self.setFallbackStylebox(value)

const ThemeDb_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ThemeDb]): Table[string, string] = ThemeDb_vmap

proc fallbackChanged*(self: ThemeDb): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("fallback_changed")
  self.emitSignal(signalname)