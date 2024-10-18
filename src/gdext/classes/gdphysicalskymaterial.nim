{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

proc setRayleighCoefficient*(self: PhysicalSkyMaterial; rayleigh: Float): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_rayleigh_coefficient", 373806689)
  var `?param` = [getPtr rayleigh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRayleighCoefficient*(self: PhysicalSkyMaterial): Float =
  expandMethodBind(className PhysicalSkyMaterial, "get_rayleigh_coefficient", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRayleighColor*(self: PhysicalSkyMaterial; color: Color): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_rayleigh_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRayleighColor*(self: PhysicalSkyMaterial): Color =
  expandMethodBind(className PhysicalSkyMaterial, "get_rayleigh_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setMieCoefficient*(self: PhysicalSkyMaterial; mie: Float): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_mie_coefficient", 373806689)
  var `?param` = [getPtr mie]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMieCoefficient*(self: PhysicalSkyMaterial): Float =
  expandMethodBind(className PhysicalSkyMaterial, "get_mie_coefficient", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMieEccentricity*(self: PhysicalSkyMaterial; eccentricity: Float): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_mie_eccentricity", 373806689)
  var `?param` = [getPtr eccentricity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMieEccentricity*(self: PhysicalSkyMaterial): Float =
  expandMethodBind(className PhysicalSkyMaterial, "get_mie_eccentricity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMieColor*(self: PhysicalSkyMaterial; color: Color): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_mie_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMieColor*(self: PhysicalSkyMaterial): Color =
  expandMethodBind(className PhysicalSkyMaterial, "get_mie_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setTurbidity*(self: PhysicalSkyMaterial; turbidity: Float): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_turbidity", 373806689)
  var `?param` = [getPtr turbidity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTurbidity*(self: PhysicalSkyMaterial): Float =
  expandMethodBind(className PhysicalSkyMaterial, "get_turbidity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSunDiskScale*(self: PhysicalSkyMaterial; scale: Float): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_sun_disk_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSunDiskScale*(self: PhysicalSkyMaterial): Float =
  expandMethodBind(className PhysicalSkyMaterial, "get_sun_disk_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setGroundColor*(self: PhysicalSkyMaterial; color: Color): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_ground_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGroundColor*(self: PhysicalSkyMaterial): Color =
  expandMethodBind(className PhysicalSkyMaterial, "get_ground_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setEnergyMultiplier*(self: PhysicalSkyMaterial; multiplier: Float): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_energy_multiplier", 373806689)
  var `?param` = [getPtr multiplier]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnergyMultiplier*(self: PhysicalSkyMaterial): Float =
  expandMethodBind(className PhysicalSkyMaterial, "get_energy_multiplier", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUseDebanding*(self: PhysicalSkyMaterial; useDebanding: bool): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_use_debanding", 2586408642)
  var `?param` = [getPtr useDebanding]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseDebanding*(self: PhysicalSkyMaterial): bool =
  expandMethodBind(className PhysicalSkyMaterial, "get_use_debanding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNightSky*(self: PhysicalSkyMaterial; nightSky: gdref Texture2D): void =
  expandMethodBind(className PhysicalSkyMaterial, "set_night_sky", 4051416890)
  var `?param` = [getPtr nightSky]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNightSky*(self: PhysicalSkyMaterial): gdref Texture2D =
  expandMethodBind(className PhysicalSkyMaterial, "get_night_sky", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

template rayleighCoefficient*(self: PhysicalSkyMaterial): untyped = self.getRayleighCoefficient()
template `rayleighCoefficient=`*(self: PhysicalSkyMaterial; value) = self.setRayleighCoefficient(value)

template rayleighColor*(self: PhysicalSkyMaterial): untyped = self.getRayleighColor()
template `rayleighColor=`*(self: PhysicalSkyMaterial; value) = self.setRayleighColor(value)

template mieCoefficient*(self: PhysicalSkyMaterial): untyped = self.getMieCoefficient()
template `mieCoefficient=`*(self: PhysicalSkyMaterial; value) = self.setMieCoefficient(value)

template mieEccentricity*(self: PhysicalSkyMaterial): untyped = self.getMieEccentricity()
template `mieEccentricity=`*(self: PhysicalSkyMaterial; value) = self.setMieEccentricity(value)

template mieColor*(self: PhysicalSkyMaterial): untyped = self.getMieColor()
template `mieColor=`*(self: PhysicalSkyMaterial; value) = self.setMieColor(value)

template turbidity*(self: PhysicalSkyMaterial): untyped = self.getTurbidity()
template `turbidity=`*(self: PhysicalSkyMaterial; value) = self.setTurbidity(value)

template sunDiskScale*(self: PhysicalSkyMaterial): untyped = self.getSunDiskScale()
template `sunDiskScale=`*(self: PhysicalSkyMaterial; value) = self.setSunDiskScale(value)

template groundColor*(self: PhysicalSkyMaterial): untyped = self.getGroundColor()
template `groundColor=`*(self: PhysicalSkyMaterial; value) = self.setGroundColor(value)

template energyMultiplier*(self: PhysicalSkyMaterial): untyped = self.getEnergyMultiplier()
template `energyMultiplier=`*(self: PhysicalSkyMaterial; value) = self.setEnergyMultiplier(value)

template useDebanding*(self: PhysicalSkyMaterial): untyped = self.getUseDebanding()
template `useDebanding=`*(self: PhysicalSkyMaterial; value) = self.setUseDebanding(value)

template nightSky*(self: PhysicalSkyMaterial): untyped = self.getNightSky()
template `nightSky=`*(self: PhysicalSkyMaterial; value) = self.setNightSky(value)

const PhysicalSkyMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicalSkyMaterial]): Table[string, string] = PhysicalSkyMaterial_vmap