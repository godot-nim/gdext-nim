{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

expandOnClassImported(ProceduralSkyMaterial, Material)

proc setSkyTopColor*(self: ProceduralSkyMaterial; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_sky_top_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getSkyTopColor*(self: ProceduralSkyMaterial): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_sky_top_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setSkyHorizonColor*(self: ProceduralSkyMaterial; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_sky_horizon_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getSkyHorizonColor*(self: ProceduralSkyMaterial): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_sky_horizon_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setSkyCurve*(self: ProceduralSkyMaterial; curve: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_sky_curve", 373806689)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getSkyCurve*(self: ProceduralSkyMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_sky_curve", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSkyEnergyMultiplier*(self: ProceduralSkyMaterial; multiplier: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_sky_energy_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr multiplier], void)

proc getSkyEnergyMultiplier*(self: ProceduralSkyMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_sky_energy_multiplier", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSkyCover*(self: ProceduralSkyMaterial; skyCover: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_sky_cover", 4051416890)
  methodbind.ptrcall(self, [getPtr skyCover], void)

proc getSkyCover*(self: ProceduralSkyMaterial): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_sky_cover", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setSkyCoverModulate*(self: ProceduralSkyMaterial; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_sky_cover_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getSkyCoverModulate*(self: ProceduralSkyMaterial): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_sky_cover_modulate", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setGroundBottomColor*(self: ProceduralSkyMaterial; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_ground_bottom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getGroundBottomColor*(self: ProceduralSkyMaterial): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_ground_bottom_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setGroundHorizonColor*(self: ProceduralSkyMaterial; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_ground_horizon_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getGroundHorizonColor*(self: ProceduralSkyMaterial): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_ground_horizon_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setGroundCurve*(self: ProceduralSkyMaterial; curve: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_ground_curve", 373806689)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getGroundCurve*(self: ProceduralSkyMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_ground_curve", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGroundEnergyMultiplier*(self: ProceduralSkyMaterial; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_ground_energy_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr energy], void)

proc getGroundEnergyMultiplier*(self: ProceduralSkyMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_ground_energy_multiplier", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSunAngleMax*(self: ProceduralSkyMaterial; degrees: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_sun_angle_max", 373806689)
  methodbind.ptrcall(self, [getPtr degrees], void)

proc getSunAngleMax*(self: ProceduralSkyMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_sun_angle_max", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSunCurve*(self: ProceduralSkyMaterial; curve: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_sun_curve", 373806689)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getSunCurve*(self: ProceduralSkyMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_sun_curve", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUseDebanding*(self: ProceduralSkyMaterial; useDebanding: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_use_debanding", 2586408642)
  methodbind.ptrcall(self, [getPtr useDebanding], void)

proc getUseDebanding*(self: ProceduralSkyMaterial): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_use_debanding", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEnergyMultiplier*(self: ProceduralSkyMaterial; multiplier: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "set_energy_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr multiplier], void)

proc getEnergyMultiplier*(self: ProceduralSkyMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProceduralSkyMaterial, "get_energy_multiplier", 1740695150)
  methodbind.ptrcall(self, [], Float)

template skyTopColor*(self: ProceduralSkyMaterial): untyped = self.getSkyTopColor()
template `skyTopColor=`*(self: ProceduralSkyMaterial; value) = self.setSkyTopColor(value)

template skyHorizonColor*(self: ProceduralSkyMaterial): untyped = self.getSkyHorizonColor()
template `skyHorizonColor=`*(self: ProceduralSkyMaterial; value) = self.setSkyHorizonColor(value)

template skyCurve*(self: ProceduralSkyMaterial): untyped = self.getSkyCurve()
template `skyCurve=`*(self: ProceduralSkyMaterial; value) = self.setSkyCurve(value)

template skyEnergyMultiplier*(self: ProceduralSkyMaterial): untyped = self.getSkyEnergyMultiplier()
template `skyEnergyMultiplier=`*(self: ProceduralSkyMaterial; value) = self.setSkyEnergyMultiplier(value)

template skyCover*(self: ProceduralSkyMaterial): untyped = self.getSkyCover()
template `skyCover=`*(self: ProceduralSkyMaterial; value) = self.setSkyCover(value)

template skyCoverModulate*(self: ProceduralSkyMaterial): untyped = self.getSkyCoverModulate()
template `skyCoverModulate=`*(self: ProceduralSkyMaterial; value) = self.setSkyCoverModulate(value)

template groundBottomColor*(self: ProceduralSkyMaterial): untyped = self.getGroundBottomColor()
template `groundBottomColor=`*(self: ProceduralSkyMaterial; value) = self.setGroundBottomColor(value)

template groundHorizonColor*(self: ProceduralSkyMaterial): untyped = self.getGroundHorizonColor()
template `groundHorizonColor=`*(self: ProceduralSkyMaterial; value) = self.setGroundHorizonColor(value)

template groundCurve*(self: ProceduralSkyMaterial): untyped = self.getGroundCurve()
template `groundCurve=`*(self: ProceduralSkyMaterial; value) = self.setGroundCurve(value)

template groundEnergyMultiplier*(self: ProceduralSkyMaterial): untyped = self.getGroundEnergyMultiplier()
template `groundEnergyMultiplier=`*(self: ProceduralSkyMaterial; value) = self.setGroundEnergyMultiplier(value)

template sunAngleMax*(self: ProceduralSkyMaterial): untyped = self.getSunAngleMax()
template `sunAngleMax=`*(self: ProceduralSkyMaterial; value) = self.setSunAngleMax(value)

template sunCurve*(self: ProceduralSkyMaterial): untyped = self.getSunCurve()
template `sunCurve=`*(self: ProceduralSkyMaterial; value) = self.setSunCurve(value)

template useDebanding*(self: ProceduralSkyMaterial): untyped = self.getUseDebanding()
template `useDebanding=`*(self: ProceduralSkyMaterial; value) = self.setUseDebanding(value)

template energyMultiplier*(self: ProceduralSkyMaterial): untyped = self.getEnergyMultiplier()
template `energyMultiplier=`*(self: ProceduralSkyMaterial; value) = self.setEnergyMultiplier(value)
