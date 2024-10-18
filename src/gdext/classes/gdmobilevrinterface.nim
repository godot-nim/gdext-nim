{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

proc setEyeHeight*(self: MobileVrInterface; eyeHeight: float64): void =
  expandMethodBind(className MobileVrInterface, "set_eye_height", 373806689)
  var `?param` = [getPtr eyeHeight]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEyeHeight*(self: MobileVrInterface): float64 =
  expandMethodBind(className MobileVrInterface, "get_eye_height", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setIod*(self: MobileVrInterface; iod: float64): void =
  expandMethodBind(className MobileVrInterface, "set_iod", 373806689)
  var `?param` = [getPtr iod]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIod*(self: MobileVrInterface): float64 =
  expandMethodBind(className MobileVrInterface, "get_iod", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDisplayWidth*(self: MobileVrInterface; displayWidth: float64): void =
  expandMethodBind(className MobileVrInterface, "set_display_width", 373806689)
  var `?param` = [getPtr displayWidth]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDisplayWidth*(self: MobileVrInterface): float64 =
  expandMethodBind(className MobileVrInterface, "get_display_width", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDisplayToLens*(self: MobileVrInterface; displayToLens: float64): void =
  expandMethodBind(className MobileVrInterface, "set_display_to_lens", 373806689)
  var `?param` = [getPtr displayToLens]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDisplayToLens*(self: MobileVrInterface): float64 =
  expandMethodBind(className MobileVrInterface, "get_display_to_lens", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setOffsetRect*(self: MobileVrInterface; offsetRect: Rect2): void =
  expandMethodBind(className MobileVrInterface, "set_offset_rect", 2046264180)
  var `?param` = [getPtr offsetRect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOffsetRect*(self: MobileVrInterface): Rect2 =
  expandMethodBind(className MobileVrInterface, "get_offset_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setOversample*(self: MobileVrInterface; oversample: float64): void =
  expandMethodBind(className MobileVrInterface, "set_oversample", 373806689)
  var `?param` = [getPtr oversample]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOversample*(self: MobileVrInterface): float64 =
  expandMethodBind(className MobileVrInterface, "get_oversample", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setK1*(self: MobileVrInterface; k: float64): void =
  expandMethodBind(className MobileVrInterface, "set_k1", 373806689)
  var `?param` = [getPtr k]
  methodbind.ptrcall(self, addr `?param`[0])

proc getK1*(self: MobileVrInterface): float64 =
  expandMethodBind(className MobileVrInterface, "get_k1", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setK2*(self: MobileVrInterface; k: float64): void =
  expandMethodBind(className MobileVrInterface, "set_k2", 373806689)
  var `?param` = [getPtr k]
  methodbind.ptrcall(self, addr `?param`[0])

proc getK2*(self: MobileVrInterface): float64 =
  expandMethodBind(className MobileVrInterface, "get_k2", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getVrsMinRadius*(self: MobileVrInterface): Float =
  expandMethodBind(className MobileVrInterface, "get_vrs_min_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsMinRadius*(self: MobileVrInterface; radius: Float): void =
  expandMethodBind(className MobileVrInterface, "set_vrs_min_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVrsStrength*(self: MobileVrInterface): Float =
  expandMethodBind(className MobileVrInterface, "get_vrs_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsStrength*(self: MobileVrInterface; strength: Float): void =
  expandMethodBind(className MobileVrInterface, "set_vrs_strength", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

template eyeHeight*(self: MobileVrInterface): untyped = self.getEyeHeight()
template `eyeHeight=`*(self: MobileVrInterface; value) = self.setEyeHeight(value)

template iod*(self: MobileVrInterface): untyped = self.getIod()
template `iod=`*(self: MobileVrInterface; value) = self.setIod(value)

template displayWidth*(self: MobileVrInterface): untyped = self.getDisplayWidth()
template `displayWidth=`*(self: MobileVrInterface; value) = self.setDisplayWidth(value)

template displayToLens*(self: MobileVrInterface): untyped = self.getDisplayToLens()
template `displayToLens=`*(self: MobileVrInterface; value) = self.setDisplayToLens(value)

template offsetRect*(self: MobileVrInterface): untyped = self.getOffsetRect()
template `offsetRect=`*(self: MobileVrInterface; value) = self.setOffsetRect(value)

template oversample*(self: MobileVrInterface): untyped = self.getOversample()
template `oversample=`*(self: MobileVrInterface; value) = self.setOversample(value)

template k1*(self: MobileVrInterface): untyped = self.getK1()
template `k1=`*(self: MobileVrInterface; value) = self.setK1(value)

template k2*(self: MobileVrInterface): untyped = self.getK2()
template `k2=`*(self: MobileVrInterface; value) = self.setK2(value)

template vrsMinRadius*(self: MobileVrInterface): untyped = self.getVrsMinRadius()
template `vrsMinRadius=`*(self: MobileVrInterface; value) = self.setVrsMinRadius(value)

template vrsStrength*(self: MobileVrInterface): untyped = self.getVrsStrength()
template `vrsStrength=`*(self: MobileVrInterface; value) = self.setVrsStrength(value)

const MobileVrInterface_vmap =
  XrInterface.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MobileVrInterface]): Table[string, string] = MobileVrInterface_vmap