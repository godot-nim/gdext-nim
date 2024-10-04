{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

proc setDensity*(self: FogMaterial; density: Float): void =
  expandMethodBind(className FogMaterial, "set_density", 373806689)
  var `?param` = [getPtr density]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDensity*(self: FogMaterial): Float =
  expandMethodBind(className FogMaterial, "get_density", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAlbedo*(self: FogMaterial; albedo: Color): void =
  expandMethodBind(className FogMaterial, "set_albedo", 2920490490)
  var `?param` = [getPtr albedo]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAlbedo*(self: FogMaterial): Color =
  expandMethodBind(className FogMaterial, "get_albedo", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setEmission*(self: FogMaterial; emission: Color): void =
  expandMethodBind(className FogMaterial, "set_emission", 2920490490)
  var `?param` = [getPtr emission]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmission*(self: FogMaterial): Color =
  expandMethodBind(className FogMaterial, "get_emission", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setHeightFalloff*(self: FogMaterial; heightFalloff: Float): void =
  expandMethodBind(className FogMaterial, "set_height_falloff", 373806689)
  var `?param` = [getPtr heightFalloff]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeightFalloff*(self: FogMaterial): Float =
  expandMethodBind(className FogMaterial, "get_height_falloff", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEdgeFade*(self: FogMaterial; edgeFade: Float): void =
  expandMethodBind(className FogMaterial, "set_edge_fade", 373806689)
  var `?param` = [getPtr edgeFade]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEdgeFade*(self: FogMaterial): Float =
  expandMethodBind(className FogMaterial, "get_edge_fade", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDensityTexture*(self: FogMaterial; densityTexture: gdref Texture3D): void =
  expandMethodBind(className FogMaterial, "set_density_texture", 1188404210)
  var `?param` = [getPtr densityTexture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDensityTexture*(self: FogMaterial): gdref Texture3D =
  expandMethodBind(className FogMaterial, "get_density_texture", 373985333)
  var ret: encoded gdref Texture3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture3D)

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

const FogMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FogMaterial]): Table[string, string] = FogMaterial_vmap