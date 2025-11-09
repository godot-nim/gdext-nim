{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

expandOnClassImported(PanoramaSkyMaterial, Material)

proc setPanorama*(self: PanoramaSkyMaterial; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PanoramaSkyMaterial, "set_panorama", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getPanorama*(self: PanoramaSkyMaterial): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PanoramaSkyMaterial, "get_panorama", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setFilteringEnabled*(self: PanoramaSkyMaterial; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PanoramaSkyMaterial, "set_filtering_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFilteringEnabled*(self: PanoramaSkyMaterial): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PanoramaSkyMaterial, "is_filtering_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEnergyMultiplier*(self: PanoramaSkyMaterial; multiplier: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PanoramaSkyMaterial, "set_energy_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr multiplier], void)

proc getEnergyMultiplier*(self: PanoramaSkyMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PanoramaSkyMaterial, "get_energy_multiplier", 1740695150)
  methodbind.ptrcall(self, [], Float)

template panorama*(self: PanoramaSkyMaterial): untyped = self.getPanorama()
template `panorama=`*(self: PanoramaSkyMaterial; value) = self.setPanorama(value)

template filter*(self: PanoramaSkyMaterial): untyped = self.isFilteringEnabled()
template `filter=`*(self: PanoramaSkyMaterial; value) = self.setFilteringEnabled(value)

template energyMultiplier*(self: PanoramaSkyMaterial): untyped = self.getEnergyMultiplier()
template `energyMultiplier=`*(self: PanoramaSkyMaterial; value) = self.setEnergyMultiplier(value)
