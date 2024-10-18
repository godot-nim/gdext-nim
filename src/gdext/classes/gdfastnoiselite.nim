{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnoise; export gdnoise

proc setNoiseType*(self: FastNoiseLite; `type`: FastNoiseLite_NoiseType): void =
  expandMethodBind(className FastNoiseLite, "set_noise_type", 2624461392)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNoiseType*(self: FastNoiseLite): FastNoiseLite_NoiseType =
  expandMethodBind(className FastNoiseLite, "get_noise_type", 1458108610)
  var ret: encoded FastNoiseLite_NoiseType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(FastNoiseLite_NoiseType)

proc setSeed*(self: FastNoiseLite; seed: int32): void =
  expandMethodBind(className FastNoiseLite, "set_seed", 1286410249)
  var `?param` = [getPtr seed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSeed*(self: FastNoiseLite): int32 =
  expandMethodBind(className FastNoiseLite, "get_seed", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFrequency*(self: FastNoiseLite; freq: Float): void =
  expandMethodBind(className FastNoiseLite, "set_frequency", 373806689)
  var `?param` = [getPtr freq]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrequency*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_frequency", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setOffset*(self: FastNoiseLite; offset: Vector3): void =
  expandMethodBind(className FastNoiseLite, "set_offset", 3460891852)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOffset*(self: FastNoiseLite): Vector3 =
  expandMethodBind(className FastNoiseLite, "get_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setFractalType*(self: FastNoiseLite; `type`: FastNoiseLite_FractalType): void =
  expandMethodBind(className FastNoiseLite, "set_fractal_type", 4132731174)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFractalType*(self: FastNoiseLite): FastNoiseLite_FractalType =
  expandMethodBind(className FastNoiseLite, "get_fractal_type", 1036889279)
  var ret: encoded FastNoiseLite_FractalType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(FastNoiseLite_FractalType)

proc setFractalOctaves*(self: FastNoiseLite; octaveCount: int32): void =
  expandMethodBind(className FastNoiseLite, "set_fractal_octaves", 1286410249)
  var `?param` = [getPtr octaveCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFractalOctaves*(self: FastNoiseLite): int32 =
  expandMethodBind(className FastNoiseLite, "get_fractal_octaves", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFractalLacunarity*(self: FastNoiseLite; lacunarity: Float): void =
  expandMethodBind(className FastNoiseLite, "set_fractal_lacunarity", 373806689)
  var `?param` = [getPtr lacunarity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFractalLacunarity*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_fractal_lacunarity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFractalGain*(self: FastNoiseLite; gain: Float): void =
  expandMethodBind(className FastNoiseLite, "set_fractal_gain", 373806689)
  var `?param` = [getPtr gain]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFractalGain*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_fractal_gain", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFractalWeightedStrength*(self: FastNoiseLite; weightedStrength: Float): void =
  expandMethodBind(className FastNoiseLite, "set_fractal_weighted_strength", 373806689)
  var `?param` = [getPtr weightedStrength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFractalWeightedStrength*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_fractal_weighted_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFractalPingPongStrength*(self: FastNoiseLite; pingPongStrength: Float): void =
  expandMethodBind(className FastNoiseLite, "set_fractal_ping_pong_strength", 373806689)
  var `?param` = [getPtr pingPongStrength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFractalPingPongStrength*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_fractal_ping_pong_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCellularDistanceFunction*(self: FastNoiseLite; `func`: FastNoiseLite_CellularDistanceFunction): void =
  expandMethodBind(className FastNoiseLite, "set_cellular_distance_function", 1006013267)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellularDistanceFunction*(self: FastNoiseLite): FastNoiseLite_CellularDistanceFunction =
  expandMethodBind(className FastNoiseLite, "get_cellular_distance_function", 2021274088)
  var ret: encoded FastNoiseLite_CellularDistanceFunction
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(FastNoiseLite_CellularDistanceFunction)

proc setCellularJitter*(self: FastNoiseLite; jitter: Float): void =
  expandMethodBind(className FastNoiseLite, "set_cellular_jitter", 373806689)
  var `?param` = [getPtr jitter]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellularJitter*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_cellular_jitter", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCellularReturnType*(self: FastNoiseLite; ret: FastNoiseLite_CellularReturnType): void =
  expandMethodBind(className FastNoiseLite, "set_cellular_return_type", 2654169698)
  var `?param` = [getPtr ret]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellularReturnType*(self: FastNoiseLite): FastNoiseLite_CellularReturnType =
  expandMethodBind(className FastNoiseLite, "get_cellular_return_type", 3699796343)
  var ret: encoded FastNoiseLite_CellularReturnType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(FastNoiseLite_CellularReturnType)

proc setDomainWarpEnabled*(self: FastNoiseLite; domainWarpEnabled: bool): void =
  expandMethodBind(className FastNoiseLite, "set_domain_warp_enabled", 2586408642)
  var `?param` = [getPtr domainWarpEnabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDomainWarpEnabled*(self: FastNoiseLite): bool =
  expandMethodBind(className FastNoiseLite, "is_domain_warp_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDomainWarpType*(self: FastNoiseLite; domainWarpType: FastNoiseLite_DomainWarpType): void =
  expandMethodBind(className FastNoiseLite, "set_domain_warp_type", 3629692980)
  var `?param` = [getPtr domainWarpType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDomainWarpType*(self: FastNoiseLite): FastNoiseLite_DomainWarpType =
  expandMethodBind(className FastNoiseLite, "get_domain_warp_type", 2980162020)
  var ret: encoded FastNoiseLite_DomainWarpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(FastNoiseLite_DomainWarpType)

proc setDomainWarpAmplitude*(self: FastNoiseLite; domainWarpAmplitude: Float): void =
  expandMethodBind(className FastNoiseLite, "set_domain_warp_amplitude", 373806689)
  var `?param` = [getPtr domainWarpAmplitude]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDomainWarpAmplitude*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_domain_warp_amplitude", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDomainWarpFrequency*(self: FastNoiseLite; domainWarpFrequency: Float): void =
  expandMethodBind(className FastNoiseLite, "set_domain_warp_frequency", 373806689)
  var `?param` = [getPtr domainWarpFrequency]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDomainWarpFrequency*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_domain_warp_frequency", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDomainWarpFractalType*(self: FastNoiseLite; domainWarpFractalType: FastNoiseLite_DomainWarpFractalType): void =
  expandMethodBind(className FastNoiseLite, "set_domain_warp_fractal_type", 3999408287)
  var `?param` = [getPtr domainWarpFractalType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDomainWarpFractalType*(self: FastNoiseLite): FastNoiseLite_DomainWarpFractalType =
  expandMethodBind(className FastNoiseLite, "get_domain_warp_fractal_type", 407716934)
  var ret: encoded FastNoiseLite_DomainWarpFractalType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(FastNoiseLite_DomainWarpFractalType)

proc setDomainWarpFractalOctaves*(self: FastNoiseLite; domainWarpOctaveCount: int32): void =
  expandMethodBind(className FastNoiseLite, "set_domain_warp_fractal_octaves", 1286410249)
  var `?param` = [getPtr domainWarpOctaveCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDomainWarpFractalOctaves*(self: FastNoiseLite): int32 =
  expandMethodBind(className FastNoiseLite, "get_domain_warp_fractal_octaves", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDomainWarpFractalLacunarity*(self: FastNoiseLite; domainWarpLacunarity: Float): void =
  expandMethodBind(className FastNoiseLite, "set_domain_warp_fractal_lacunarity", 373806689)
  var `?param` = [getPtr domainWarpLacunarity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDomainWarpFractalLacunarity*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_domain_warp_fractal_lacunarity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDomainWarpFractalGain*(self: FastNoiseLite; domainWarpGain: Float): void =
  expandMethodBind(className FastNoiseLite, "set_domain_warp_fractal_gain", 373806689)
  var `?param` = [getPtr domainWarpGain]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDomainWarpFractalGain*(self: FastNoiseLite): Float =
  expandMethodBind(className FastNoiseLite, "get_domain_warp_fractal_gain", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

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

const FastNoiseLite_vmap =
  Noise.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FastNoiseLite]): Table[string, string] = FastNoiseLite_vmap