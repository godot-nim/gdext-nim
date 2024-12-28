{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

proc setEyeHeight*(self: MobileVRInterface; eyeHeight: float64): void =
  expandMethodBind(className MobileVRInterface, "set_eye_height", 373806689)
  methodbind.ptrcall(self, [getPtr eyeHeight])

proc getEyeHeight*(self: MobileVRInterface): float64 =
  expandMethodBind(className MobileVRInterface, "get_eye_height", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setIod*(self: MobileVRInterface; iod: float64): void =
  expandMethodBind(className MobileVRInterface, "set_iod", 373806689)
  methodbind.ptrcall(self, [getPtr iod])

proc getIod*(self: MobileVRInterface): float64 =
  expandMethodBind(className MobileVRInterface, "get_iod", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setDisplayWidth*(self: MobileVRInterface; displayWidth: float64): void =
  expandMethodBind(className MobileVRInterface, "set_display_width", 373806689)
  methodbind.ptrcall(self, [getPtr displayWidth])

proc getDisplayWidth*(self: MobileVRInterface): float64 =
  expandMethodBind(className MobileVRInterface, "get_display_width", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setDisplayToLens*(self: MobileVRInterface; displayToLens: float64): void =
  expandMethodBind(className MobileVRInterface, "set_display_to_lens", 373806689)
  methodbind.ptrcall(self, [getPtr displayToLens])

proc getDisplayToLens*(self: MobileVRInterface): float64 =
  expandMethodBind(className MobileVRInterface, "get_display_to_lens", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setOffsetRect*(self: MobileVRInterface; offsetRect: Rect2): void =
  expandMethodBind(className MobileVRInterface, "set_offset_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr offsetRect])

proc getOffsetRect*(self: MobileVRInterface): Rect2 =
  expandMethodBind(className MobileVRInterface, "get_offset_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2)

proc setOversample*(self: MobileVRInterface; oversample: float64): void =
  expandMethodBind(className MobileVRInterface, "set_oversample", 373806689)
  methodbind.ptrcall(self, [getPtr oversample])

proc getOversample*(self: MobileVRInterface): float64 =
  expandMethodBind(className MobileVRInterface, "get_oversample", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setK1*(self: MobileVRInterface; k: float64): void =
  expandMethodBind(className MobileVRInterface, "set_k1", 373806689)
  methodbind.ptrcall(self, [getPtr k])

proc getK1*(self: MobileVRInterface): float64 =
  expandMethodBind(className MobileVRInterface, "get_k1", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setK2*(self: MobileVRInterface; k: float64): void =
  expandMethodBind(className MobileVRInterface, "set_k2", 373806689)
  methodbind.ptrcall(self, [getPtr k])

proc getK2*(self: MobileVRInterface): float64 =
  expandMethodBind(className MobileVRInterface, "get_k2", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getVrsMinRadius*(self: MobileVRInterface): Float =
  expandMethodBind(className MobileVRInterface, "get_vrs_min_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVrsMinRadius*(self: MobileVRInterface; radius: Float): void =
  expandMethodBind(className MobileVRInterface, "set_vrs_min_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getVrsStrength*(self: MobileVRInterface): Float =
  expandMethodBind(className MobileVRInterface, "get_vrs_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVrsStrength*(self: MobileVRInterface; strength: Float): void =
  expandMethodBind(className MobileVRInterface, "set_vrs_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength])

template eyeHeight*(self: MobileVRInterface): untyped = self.getEyeHeight()
template `eyeHeight=`*(self: MobileVRInterface; value) = self.setEyeHeight(value)

template iod*(self: MobileVRInterface): untyped = self.getIod()
template `iod=`*(self: MobileVRInterface; value) = self.setIod(value)

template displayWidth*(self: MobileVRInterface): untyped = self.getDisplayWidth()
template `displayWidth=`*(self: MobileVRInterface; value) = self.setDisplayWidth(value)

template displayToLens*(self: MobileVRInterface): untyped = self.getDisplayToLens()
template `displayToLens=`*(self: MobileVRInterface; value) = self.setDisplayToLens(value)

template offsetRect*(self: MobileVRInterface): untyped = self.getOffsetRect()
template `offsetRect=`*(self: MobileVRInterface; value) = self.setOffsetRect(value)

template oversample*(self: MobileVRInterface): untyped = self.getOversample()
template `oversample=`*(self: MobileVRInterface; value) = self.setOversample(value)

template k1*(self: MobileVRInterface): untyped = self.getK1()
template `k1=`*(self: MobileVRInterface; value) = self.setK1(value)

template k2*(self: MobileVRInterface): untyped = self.getK2()
template `k2=`*(self: MobileVRInterface; value) = self.setK2(value)

template vrsMinRadius*(self: MobileVRInterface): untyped = self.getVrsMinRadius()
template `vrsMinRadius=`*(self: MobileVRInterface; value) = self.setVrsMinRadius(value)

template vrsStrength*(self: MobileVRInterface): untyped = self.getVrsStrength()
template `vrsStrength=`*(self: MobileVRInterface; value) = self.setVrsStrength(value)

const MobileVRInterface_vmap =
  XRInterface.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MobileVRInterface]): Table[string, string] = MobileVRInterface_vmap