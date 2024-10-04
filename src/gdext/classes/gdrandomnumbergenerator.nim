{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setSeed*(self: RandomNumberGenerator; seed: uint64): void =
  expandMethodBind(className RandomNumberGenerator, "set_seed", 1286410249)
  var `?param` = [getPtr seed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSeed*(self: RandomNumberGenerator): uint64 =
  expandMethodBind(className RandomNumberGenerator, "get_seed", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc setState*(self: RandomNumberGenerator; state: uint64): void =
  expandMethodBind(className RandomNumberGenerator, "set_state", 1286410249)
  var `?param` = [getPtr state]
  methodbind.ptrcall(self, addr `?param`[0])

proc getState*(self: RandomNumberGenerator): uint64 =
  expandMethodBind(className RandomNumberGenerator, "get_state", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc randi*(self: RandomNumberGenerator): uint32 =
  expandMethodBind(className RandomNumberGenerator, "randi", 2455072627)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc randf*(self: RandomNumberGenerator): Float =
  expandMethodBind(className RandomNumberGenerator, "randf", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc randfn*(self: RandomNumberGenerator; mean: Float = 0.0; deviation: Float = 1.0): Float =
  expandMethodBind(className RandomNumberGenerator, "randfn", 837325100)
  var `?param` = [getPtr mean, getPtr deviation]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc randfRange*(self: RandomNumberGenerator; `from`: Float; to: Float): Float =
  expandMethodBind(className RandomNumberGenerator, "randf_range", 4269894367)
  var `?param` = [getPtr `from`, getPtr to]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc randiRange*(self: RandomNumberGenerator; `from`: int32; to: int32): int32 =
  expandMethodBind(className RandomNumberGenerator, "randi_range", 50157827)
  var `?param` = [getPtr `from`, getPtr to]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc randWeighted*(self: RandomNumberGenerator; weights: PackedFloat32Array): int64 =
  expandMethodBind(className RandomNumberGenerator, "rand_weighted", 4189642986)
  var `?param` = [getPtr weights]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc randomize*(self: RandomNumberGenerator): void =
  expandMethodBind(className RandomNumberGenerator, "randomize", 3218959716)
  methodbind.ptrcall(self, nil)

template seed*(self: RandomNumberGenerator): untyped = self.getSeed()
template `seed=`*(self: RandomNumberGenerator; value) = self.setSeed(value)

template state*(self: RandomNumberGenerator): untyped = self.getState()
template `state=`*(self: RandomNumberGenerator; value) = self.setState(value)

const RandomNumberGenerator_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RandomNumberGenerator]): Table[string, string] = RandomNumberGenerator_vmap