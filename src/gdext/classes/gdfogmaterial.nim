{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

expandOnClassImported(FogMaterial, Material)

proc setDensity*(self: FogMaterial; density: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "set_density", 373806689)
  methodbind.ptrcall(self, [getPtr density], void)

proc getDensity*(self: FogMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "get_density", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAlbedo*(self: FogMaterial; albedo: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "set_albedo", 2920490490)
  methodbind.ptrcall(self, [getPtr albedo], void)

proc getAlbedo*(self: FogMaterial): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "get_albedo", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setEmission*(self: FogMaterial; emission: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "set_emission", 2920490490)
  methodbind.ptrcall(self, [getPtr emission], void)

proc getEmission*(self: FogMaterial): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "get_emission", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setHeightFalloff*(self: FogMaterial; heightFalloff: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "set_height_falloff", 373806689)
  methodbind.ptrcall(self, [getPtr heightFalloff], void)

proc getHeightFalloff*(self: FogMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "get_height_falloff", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEdgeFade*(self: FogMaterial; edgeFade: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "set_edge_fade", 373806689)
  methodbind.ptrcall(self, [getPtr edgeFade], void)

proc getEdgeFade*(self: FogMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "get_edge_fade", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDensityTexture*(self: FogMaterial; densityTexture: gdref Texture3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "set_density_texture", 1188404210)
  methodbind.ptrcall(self, [getPtr densityTexture], void)

proc getDensityTexture*(self: FogMaterial): gdref Texture3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogMaterial, "get_density_texture", 373985333)
  methodbind.ptrcall(self, [], gdref Texture3D)

template density*(self: FogMaterial): untyped = self.getDensity()
template `density=`*(self: FogMaterial; value) = self.setDensity(value)

template albedo*(self: FogMaterial): untyped = self.getAlbedo()
template `albedo=`*(self: FogMaterial; value) = self.setAlbedo(value)

template emission*(self: FogMaterial): untyped = self.getEmission()
template `emission=`*(self: FogMaterial; value) = self.setEmission(value)

template heightFalloff*(self: FogMaterial): untyped = self.getHeightFalloff()
template `heightFalloff=`*(self: FogMaterial; value) = self.setHeightFalloff(value)

template edgeFade*(self: FogMaterial): untyped = self.getEdgeFade()
template `edgeFade=`*(self: FogMaterial; value) = self.setEdgeFade(value)

template densityTexture*(self: FogMaterial): untyped = self.getDensityTexture()
template `densityTexture=`*(self: FogMaterial; value) = self.setDensityTexture(value)
