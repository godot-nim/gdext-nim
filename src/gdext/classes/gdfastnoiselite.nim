{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnoise; export gdnoise

expandOnClassImported(FastNoiseLite, Noise)

proc setNoiseType*(self: FastNoiseLite; `type`: FastNoiseLite_NoiseType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_noise_type", 2624461392)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getNoiseType*(self: FastNoiseLite): FastNoiseLite_NoiseType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_noise_type", 1458108610)
  methodbind.ptrcall(self, [], FastNoiseLite_NoiseType)

proc setSeed*(self: FastNoiseLite; seed: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_seed", 1286410249)
  methodbind.ptrcall(self, [getPtr seed], void)

proc getSeed*(self: FastNoiseLite): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_seed", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFrequency*(self: FastNoiseLite; freq: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_frequency", 373806689)
  methodbind.ptrcall(self, [getPtr freq], void)

proc getFrequency*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_frequency", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOffset*(self: FastNoiseLite; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: FastNoiseLite): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_offset", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setFractalType*(self: FastNoiseLite; `type`: FastNoiseLite_FractalType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_fractal_type", 4132731174)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getFractalType*(self: FastNoiseLite): FastNoiseLite_FractalType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_fractal_type", 1036889279)
  methodbind.ptrcall(self, [], FastNoiseLite_FractalType)

proc setFractalOctaves*(self: FastNoiseLite; octaveCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_fractal_octaves", 1286410249)
  methodbind.ptrcall(self, [getPtr octaveCount], void)

proc getFractalOctaves*(self: FastNoiseLite): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_fractal_octaves", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFractalLacunarity*(self: FastNoiseLite; lacunarity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_fractal_lacunarity", 373806689)
  methodbind.ptrcall(self, [getPtr lacunarity], void)

proc getFractalLacunarity*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_fractal_lacunarity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFractalGain*(self: FastNoiseLite; gain: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_fractal_gain", 373806689)
  methodbind.ptrcall(self, [getPtr gain], void)

proc getFractalGain*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_fractal_gain", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFractalWeightedStrength*(self: FastNoiseLite; weightedStrength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_fractal_weighted_strength", 373806689)
  methodbind.ptrcall(self, [getPtr weightedStrength], void)

proc getFractalWeightedStrength*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_fractal_weighted_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFractalPingPongStrength*(self: FastNoiseLite; pingPongStrength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_fractal_ping_pong_strength", 373806689)
  methodbind.ptrcall(self, [getPtr pingPongStrength], void)

proc getFractalPingPongStrength*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_fractal_ping_pong_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCellularDistanceFunction*(self: FastNoiseLite; `func`: FastNoiseLite_CellularDistanceFunction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_cellular_distance_function", 1006013267)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getCellularDistanceFunction*(self: FastNoiseLite): FastNoiseLite_CellularDistanceFunction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_cellular_distance_function", 2021274088)
  methodbind.ptrcall(self, [], FastNoiseLite_CellularDistanceFunction)

proc setCellularJitter*(self: FastNoiseLite; jitter: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_cellular_jitter", 373806689)
  methodbind.ptrcall(self, [getPtr jitter], void)

proc getCellularJitter*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_cellular_jitter", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCellularReturnType*(self: FastNoiseLite; ret: FastNoiseLite_CellularReturnType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_cellular_return_type", 2654169698)
  methodbind.ptrcall(self, [getPtr ret], void)

proc getCellularReturnType*(self: FastNoiseLite): FastNoiseLite_CellularReturnType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_cellular_return_type", 3699796343)
  methodbind.ptrcall(self, [], FastNoiseLite_CellularReturnType)

proc setDomainWarpEnabled*(self: FastNoiseLite; domainWarpEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_domain_warp_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr domainWarpEnabled], void)

proc isDomainWarpEnabled*(self: FastNoiseLite): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "is_domain_warp_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDomainWarpType*(self: FastNoiseLite; domainWarpType: FastNoiseLite_DomainWarpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_domain_warp_type", 3629692980)
  methodbind.ptrcall(self, [getPtr domainWarpType], void)

proc getDomainWarpType*(self: FastNoiseLite): FastNoiseLite_DomainWarpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_domain_warp_type", 2980162020)
  methodbind.ptrcall(self, [], FastNoiseLite_DomainWarpType)

proc setDomainWarpAmplitude*(self: FastNoiseLite; domainWarpAmplitude: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_domain_warp_amplitude", 373806689)
  methodbind.ptrcall(self, [getPtr domainWarpAmplitude], void)

proc getDomainWarpAmplitude*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_domain_warp_amplitude", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDomainWarpFrequency*(self: FastNoiseLite; domainWarpFrequency: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_domain_warp_frequency", 373806689)
  methodbind.ptrcall(self, [getPtr domainWarpFrequency], void)

proc getDomainWarpFrequency*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_domain_warp_frequency", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDomainWarpFractalType*(self: FastNoiseLite; domainWarpFractalType: FastNoiseLite_DomainWarpFractalType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_domain_warp_fractal_type", 3999408287)
  methodbind.ptrcall(self, [getPtr domainWarpFractalType], void)

proc getDomainWarpFractalType*(self: FastNoiseLite): FastNoiseLite_DomainWarpFractalType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_domain_warp_fractal_type", 407716934)
  methodbind.ptrcall(self, [], FastNoiseLite_DomainWarpFractalType)

proc setDomainWarpFractalOctaves*(self: FastNoiseLite; domainWarpOctaveCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_domain_warp_fractal_octaves", 1286410249)
  methodbind.ptrcall(self, [getPtr domainWarpOctaveCount], void)

proc getDomainWarpFractalOctaves*(self: FastNoiseLite): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_domain_warp_fractal_octaves", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDomainWarpFractalLacunarity*(self: FastNoiseLite; domainWarpLacunarity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_domain_warp_fractal_lacunarity", 373806689)
  methodbind.ptrcall(self, [getPtr domainWarpLacunarity], void)

proc getDomainWarpFractalLacunarity*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_domain_warp_fractal_lacunarity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDomainWarpFractalGain*(self: FastNoiseLite; domainWarpGain: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "set_domain_warp_fractal_gain", 373806689)
  methodbind.ptrcall(self, [getPtr domainWarpGain], void)

proc getDomainWarpFractalGain*(self: FastNoiseLite): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FastNoiseLite, "get_domain_warp_fractal_gain", 1740695150)
  methodbind.ptrcall(self, [], Float)

template noiseType*(self: FastNoiseLite): untyped = self.getNoiseType()
template `noiseType=`*(self: FastNoiseLite; value) = self.setNoiseType(value)

template seed*(self: FastNoiseLite): untyped = self.getSeed()
template `seed=`*(self: FastNoiseLite; value) = self.setSeed(value)

template frequency*(self: FastNoiseLite): untyped = self.getFrequency()
template `frequency=`*(self: FastNoiseLite; value) = self.setFrequency(value)

template offset*(self: FastNoiseLite): untyped = self.getOffset()
template `offset=`*(self: FastNoiseLite; value) = self.setOffset(value)

template fractalType*(self: FastNoiseLite): untyped = self.getFractalType()
template `fractalType=`*(self: FastNoiseLite; value) = self.setFractalType(value)

template fractalOctaves*(self: FastNoiseLite): untyped = self.getFractalOctaves()
template `fractalOctaves=`*(self: FastNoiseLite; value) = self.setFractalOctaves(value)

template fractalLacunarity*(self: FastNoiseLite): untyped = self.getFractalLacunarity()
template `fractalLacunarity=`*(self: FastNoiseLite; value) = self.setFractalLacunarity(value)

template fractalGain*(self: FastNoiseLite): untyped = self.getFractalGain()
template `fractalGain=`*(self: FastNoiseLite; value) = self.setFractalGain(value)

template fractalWeightedStrength*(self: FastNoiseLite): untyped = self.getFractalWeightedStrength()
template `fractalWeightedStrength=`*(self: FastNoiseLite; value) = self.setFractalWeightedStrength(value)

template fractalPingPongStrength*(self: FastNoiseLite): untyped = self.getFractalPingPongStrength()
template `fractalPingPongStrength=`*(self: FastNoiseLite; value) = self.setFractalPingPongStrength(value)

template cellularDistanceFunction*(self: FastNoiseLite): untyped = self.getCellularDistanceFunction()
template `cellularDistanceFunction=`*(self: FastNoiseLite; value) = self.setCellularDistanceFunction(value)

template cellularJitter*(self: FastNoiseLite): untyped = self.getCellularJitter()
template `cellularJitter=`*(self: FastNoiseLite; value) = self.setCellularJitter(value)

template cellularReturnType*(self: FastNoiseLite): untyped = self.getCellularReturnType()
template `cellularReturnType=`*(self: FastNoiseLite; value) = self.setCellularReturnType(value)

template domainWarpEnabled*(self: FastNoiseLite): untyped = self.isDomainWarpEnabled()
template `domainWarpEnabled=`*(self: FastNoiseLite; value) = self.setDomainWarpEnabled(value)

template domainWarpType*(self: FastNoiseLite): untyped = self.getDomainWarpType()
template `domainWarpType=`*(self: FastNoiseLite; value) = self.setDomainWarpType(value)

template domainWarpAmplitude*(self: FastNoiseLite): untyped = self.getDomainWarpAmplitude()
template `domainWarpAmplitude=`*(self: FastNoiseLite; value) = self.setDomainWarpAmplitude(value)

template domainWarpFrequency*(self: FastNoiseLite): untyped = self.getDomainWarpFrequency()
template `domainWarpFrequency=`*(self: FastNoiseLite; value) = self.setDomainWarpFrequency(value)

template domainWarpFractalType*(self: FastNoiseLite): untyped = self.getDomainWarpFractalType()
template `domainWarpFractalType=`*(self: FastNoiseLite; value) = self.setDomainWarpFractalType(value)

template domainWarpFractalOctaves*(self: FastNoiseLite): untyped = self.getDomainWarpFractalOctaves()
template `domainWarpFractalOctaves=`*(self: FastNoiseLite; value) = self.setDomainWarpFractalOctaves(value)

template domainWarpFractalLacunarity*(self: FastNoiseLite): untyped = self.getDomainWarpFractalLacunarity()
template `domainWarpFractalLacunarity=`*(self: FastNoiseLite; value) = self.setDomainWarpFractalLacunarity(value)

template domainWarpFractalGain*(self: FastNoiseLite): untyped = self.getDomainWarpFractalGain()
template `domainWarpFractalGain=`*(self: FastNoiseLite; value) = self.setDomainWarpFractalGain(value)
