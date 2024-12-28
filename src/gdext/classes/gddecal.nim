{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setSize*(self: Decal; size: Vector3): void =
  expandMethodBind(className Decal, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: Decal): Vector3 =
  expandMethodBind(className Decal, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setTexture*(self: Decal; `type`: Decal_DecalTexture; texture: gdref Texture2D): void =
  expandMethodBind(className Decal, "set_texture", 2086764391)
  methodbind.ptrcall(self, [getPtr `type`, getPtr texture])

proc getTexture*(self: Decal; `type`: Decal_DecalTexture): gdref Texture2D =
  expandMethodBind(className Decal, "get_texture", 3244119503)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr `type`], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setEmissionEnergy*(self: Decal; energy: Float): void =
  expandMethodBind(className Decal, "set_emission_energy", 373806689)
  methodbind.ptrcall(self, [getPtr energy])

proc getEmissionEnergy*(self: Decal): Float =
  expandMethodBind(className Decal, "get_emission_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAlbedoMix*(self: Decal; energy: Float): void =
  expandMethodBind(className Decal, "set_albedo_mix", 373806689)
  methodbind.ptrcall(self, [getPtr energy])

proc getAlbedoMix*(self: Decal): Float =
  expandMethodBind(className Decal, "get_albedo_mix", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setModulate*(self: Decal; color: Color): void =
  expandMethodBind(className Decal, "set_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getModulate*(self: Decal): Color =
  expandMethodBind(className Decal, "get_modulate", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setUpperFade*(self: Decal; fade: Float): void =
  expandMethodBind(className Decal, "set_upper_fade", 373806689)
  methodbind.ptrcall(self, [getPtr fade])

proc getUpperFade*(self: Decal): Float =
  expandMethodBind(className Decal, "get_upper_fade", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLowerFade*(self: Decal; fade: Float): void =
  expandMethodBind(className Decal, "set_lower_fade", 373806689)
  methodbind.ptrcall(self, [getPtr fade])

proc getLowerFade*(self: Decal): Float =
  expandMethodBind(className Decal, "get_lower_fade", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setNormalFade*(self: Decal; fade: Float): void =
  expandMethodBind(className Decal, "set_normal_fade", 373806689)
  methodbind.ptrcall(self, [getPtr fade])

proc getNormalFade*(self: Decal): Float =
  expandMethodBind(className Decal, "get_normal_fade", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setEnableDistanceFade*(self: Decal; enable: bool): void =
  expandMethodBind(className Decal, "set_enable_distance_fade", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isDistanceFadeEnabled*(self: Decal): bool =
  expandMethodBind(className Decal, "is_distance_fade_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDistanceFadeBegin*(self: Decal; distance: Float): void =
  expandMethodBind(className Decal, "set_distance_fade_begin", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getDistanceFadeBegin*(self: Decal): Float =
  expandMethodBind(className Decal, "get_distance_fade_begin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDistanceFadeLength*(self: Decal; distance: Float): void =
  expandMethodBind(className Decal, "set_distance_fade_length", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getDistanceFadeLength*(self: Decal): Float =
  expandMethodBind(className Decal, "get_distance_fade_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setCullMask*(self: Decal; mask: uint32): void =
  expandMethodBind(className Decal, "set_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getCullMask*(self: Decal): uint32 =
  expandMethodBind(className Decal, "get_cull_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

template size*(self: Decal): untyped = self.getSize()
template `size=`*(self: Decal; value) = self.setSize(value)

template textureAlbedo*(self: Decal): untyped = self.getTexture(Decal_DecalTexture(0))
template `textureAlbedo=`*(self: Decal; value) = self.setTexture(Decal_DecalTexture(0), value)

template textureNormal*(self: Decal): untyped = self.getTexture(Decal_DecalTexture(1))
template `textureNormal=`*(self: Decal; value) = self.setTexture(Decal_DecalTexture(1), value)

template textureOrm*(self: Decal): untyped = self.getTexture(Decal_DecalTexture(2))
template `textureOrm=`*(self: Decal; value) = self.setTexture(Decal_DecalTexture(2), value)

template textureEmission*(self: Decal): untyped = self.getTexture(Decal_DecalTexture(3))
template `textureEmission=`*(self: Decal; value) = self.setTexture(Decal_DecalTexture(3), value)

template emissionEnergy*(self: Decal): untyped = self.getEmissionEnergy()
template `emissionEnergy=`*(self: Decal; value) = self.setEmissionEnergy(value)

template modulate*(self: Decal): untyped = self.getModulate()
template `modulate=`*(self: Decal; value) = self.setModulate(value)

template albedoMix*(self: Decal): untyped = self.getAlbedoMix()
template `albedoMix=`*(self: Decal; value) = self.setAlbedoMix(value)

template normalFade*(self: Decal): untyped = self.getNormalFade()
template `normalFade=`*(self: Decal; value) = self.setNormalFade(value)

template upperFade*(self: Decal): untyped = self.getUpperFade()
template `upperFade=`*(self: Decal; value) = self.setUpperFade(value)

template lowerFade*(self: Decal): untyped = self.getLowerFade()
template `lowerFade=`*(self: Decal; value) = self.setLowerFade(value)

template distanceFadeEnabled*(self: Decal): untyped = self.isDistanceFadeEnabled()
template `distanceFadeEnabled=`*(self: Decal; value) = self.setEnableDistanceFade(value)

template distanceFadeBegin*(self: Decal): untyped = self.getDistanceFadeBegin()
template `distanceFadeBegin=`*(self: Decal; value) = self.setDistanceFadeBegin(value)

template distanceFadeLength*(self: Decal): untyped = self.getDistanceFadeLength()
template `distanceFadeLength=`*(self: Decal; value) = self.setDistanceFadeLength(value)

template cullMask*(self: Decal): untyped = self.getCullMask()
template `cullMask=`*(self: Decal; value) = self.setCullMask(value)

const Decal_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Decal]): Table[string, string] = Decal_vmap