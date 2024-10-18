{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

proc setSkyTopColor*(self: ProceduralSkyMaterial; color: Color): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_sky_top_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkyTopColor*(self: ProceduralSkyMaterial): Color =
  expandMethodBind(className ProceduralSkyMaterial, "get_sky_top_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setSkyHorizonColor*(self: ProceduralSkyMaterial; color: Color): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_sky_horizon_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkyHorizonColor*(self: ProceduralSkyMaterial): Color =
  expandMethodBind(className ProceduralSkyMaterial, "get_sky_horizon_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setSkyCurve*(self: ProceduralSkyMaterial; curve: Float): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_sky_curve", 373806689)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkyCurve*(self: ProceduralSkyMaterial): Float =
  expandMethodBind(className ProceduralSkyMaterial, "get_sky_curve", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSkyEnergyMultiplier*(self: ProceduralSkyMaterial; multiplier: Float): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_sky_energy_multiplier", 373806689)
  var `?param` = [getPtr multiplier]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkyEnergyMultiplier*(self: ProceduralSkyMaterial): Float =
  expandMethodBind(className ProceduralSkyMaterial, "get_sky_energy_multiplier", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSkyCover*(self: ProceduralSkyMaterial; skyCover: gdref Texture2D): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_sky_cover", 4051416890)
  var `?param` = [getPtr skyCover]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkyCover*(self: ProceduralSkyMaterial): gdref Texture2D =
  expandMethodBind(className ProceduralSkyMaterial, "get_sky_cover", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setSkyCoverModulate*(self: ProceduralSkyMaterial; color: Color): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_sky_cover_modulate", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkyCoverModulate*(self: ProceduralSkyMaterial): Color =
  expandMethodBind(className ProceduralSkyMaterial, "get_sky_cover_modulate", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setGroundBottomColor*(self: ProceduralSkyMaterial; color: Color): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_ground_bottom_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGroundBottomColor*(self: ProceduralSkyMaterial): Color =
  expandMethodBind(className ProceduralSkyMaterial, "get_ground_bottom_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setGroundHorizonColor*(self: ProceduralSkyMaterial; color: Color): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_ground_horizon_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGroundHorizonColor*(self: ProceduralSkyMaterial): Color =
  expandMethodBind(className ProceduralSkyMaterial, "get_ground_horizon_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setGroundCurve*(self: ProceduralSkyMaterial; curve: Float): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_ground_curve", 373806689)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGroundCurve*(self: ProceduralSkyMaterial): Float =
  expandMethodBind(className ProceduralSkyMaterial, "get_ground_curve", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setGroundEnergyMultiplier*(self: ProceduralSkyMaterial; energy: Float): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_ground_energy_multiplier", 373806689)
  var `?param` = [getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGroundEnergyMultiplier*(self: ProceduralSkyMaterial): Float =
  expandMethodBind(className ProceduralSkyMaterial, "get_ground_energy_multiplier", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSunAngleMax*(self: ProceduralSkyMaterial; degrees: Float): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_sun_angle_max", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSunAngleMax*(self: ProceduralSkyMaterial): Float =
  expandMethodBind(className ProceduralSkyMaterial, "get_sun_angle_max", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSunCurve*(self: ProceduralSkyMaterial; curve: Float): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_sun_curve", 373806689)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSunCurve*(self: ProceduralSkyMaterial): Float =
  expandMethodBind(className ProceduralSkyMaterial, "get_sun_curve", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUseDebanding*(self: ProceduralSkyMaterial; useDebanding: bool): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_use_debanding", 2586408642)
  var `?param` = [getPtr useDebanding]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseDebanding*(self: ProceduralSkyMaterial): bool =
  expandMethodBind(className ProceduralSkyMaterial, "get_use_debanding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEnergyMultiplier*(self: ProceduralSkyMaterial; multiplier: Float): void =
  expandMethodBind(className ProceduralSkyMaterial, "set_energy_multiplier", 373806689)
  var `?param` = [getPtr multiplier]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnergyMultiplier*(self: ProceduralSkyMaterial): Float =
  expandMethodBind(className ProceduralSkyMaterial, "get_energy_multiplier", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

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

const ProceduralSkyMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ProceduralSkyMaterial]): Table[string, string] = ProceduralSkyMaterial_vmap