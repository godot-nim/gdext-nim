{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

proc setPanorama*(self: PanoramaSkyMaterial; texture: gdref Texture2D): void =
  expandMethodBind(className PanoramaSkyMaterial, "set_panorama", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPanorama*(self: PanoramaSkyMaterial): gdref Texture2D =
  expandMethodBind(className PanoramaSkyMaterial, "get_panorama", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setFilteringEnabled*(self: PanoramaSkyMaterial; enabled: bool): void =
  expandMethodBind(className PanoramaSkyMaterial, "set_filtering_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFilteringEnabled*(self: PanoramaSkyMaterial): bool =
  expandMethodBind(className PanoramaSkyMaterial, "is_filtering_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEnergyMultiplier*(self: PanoramaSkyMaterial; multiplier: Float): void =
  expandMethodBind(className PanoramaSkyMaterial, "set_energy_multiplier", 373806689)
  var `?param` = [getPtr multiplier]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnergyMultiplier*(self: PanoramaSkyMaterial): Float =
  expandMethodBind(className PanoramaSkyMaterial, "get_energy_multiplier", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template panorama*(self: PanoramaSkyMaterial): untyped = self.getPanorama()
template `panorama=`*(self: PanoramaSkyMaterial; value) = self.setPanorama(value)

template filter*(self: PanoramaSkyMaterial): untyped = self.isFilteringEnabled()
template `filter=`*(self: PanoramaSkyMaterial; value) = self.setFilteringEnabled(value)

template energyMultiplier*(self: PanoramaSkyMaterial): untyped = self.getEnergyMultiplier()
template `energyMultiplier=`*(self: PanoramaSkyMaterial; value) = self.setEnergyMultiplier(value)

const PanoramaSkyMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PanoramaSkyMaterial]): Table[string, string] = PanoramaSkyMaterial_vmap