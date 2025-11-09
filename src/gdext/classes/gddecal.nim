{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(Decal, VisualInstance3D)

proc setSize*(self: Decal; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: Decal): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setTexture*(self: Decal; `type`: Decal_DecalTexture; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_texture", 2086764391)
  methodbind.ptrcall(self, [getPtr `type`, getPtr texture], void)

proc getTexture*(self: Decal; `type`: Decal_DecalTexture): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_texture", 3244119503)
  methodbind.ptrcall(self, [getPtr `type`], gdref Texture2D)

proc setEmissionEnergy*(self: Decal; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_emission_energy", 373806689)
  methodbind.ptrcall(self, [getPtr energy], void)

proc getEmissionEnergy*(self: Decal): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_emission_energy", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAlbedoMix*(self: Decal; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_albedo_mix", 373806689)
  methodbind.ptrcall(self, [getPtr energy], void)

proc getAlbedoMix*(self: Decal): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_albedo_mix", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setModulate*(self: Decal; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getModulate*(self: Decal): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_modulate", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setUpperFade*(self: Decal; fade: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_upper_fade", 373806689)
  methodbind.ptrcall(self, [getPtr fade], void)

proc getUpperFade*(self: Decal): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_upper_fade", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLowerFade*(self: Decal; fade: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_lower_fade", 373806689)
  methodbind.ptrcall(self, [getPtr fade], void)

proc getLowerFade*(self: Decal): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_lower_fade", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setNormalFade*(self: Decal; fade: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_normal_fade", 373806689)
  methodbind.ptrcall(self, [getPtr fade], void)

proc getNormalFade*(self: Decal): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_normal_fade", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEnableDistanceFade*(self: Decal; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_enable_distance_fade", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDistanceFadeEnabled*(self: Decal): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "is_distance_fade_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDistanceFadeBegin*(self: Decal; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_distance_fade_begin", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDistanceFadeBegin*(self: Decal): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_distance_fade_begin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDistanceFadeLength*(self: Decal; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_distance_fade_length", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDistanceFadeLength*(self: Decal): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_distance_fade_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCullMask*(self: Decal; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "set_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCullMask*(self: Decal): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Decal, "get_cull_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

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
