{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RandomNumberGenerator, RefCounted)

proc setSeed*(self: RandomNumberGenerator; seed: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "set_seed", 1286410249)
  methodbind.ptrcall(self, [getPtr seed], void)

proc getSeed*(self: RandomNumberGenerator): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "get_seed", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc setState*(self: RandomNumberGenerator; state: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "set_state", 1286410249)
  methodbind.ptrcall(self, [getPtr state], void)

proc getState*(self: RandomNumberGenerator): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "get_state", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc randi*(self: RandomNumberGenerator): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "randi", 2455072627)
  methodbind.ptrcall(self, [], uint32)

proc randf*(self: RandomNumberGenerator): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "randf", 191475506)
  methodbind.ptrcall(self, [], Float)

proc randfn*(self: RandomNumberGenerator; mean: Float = 0.0; deviation: Float = 1.0): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "randfn", 837325100)
  methodbind.ptrcall(self, [getPtr mean, getPtr deviation], Float)

proc randfRange*(self: RandomNumberGenerator; `from`: Float; to: Float): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "randf_range", 4269894367)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], Float)

proc randiRange*(self: RandomNumberGenerator; `from`: int32; to: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "randi_range", 50157827)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], int32)

proc randWeighted*(self: RandomNumberGenerator; weights: PackedFloat32Array): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "rand_weighted", 4189642986)
  methodbind.ptrcall(self, [getPtr weights], int64)

proc randomize*(self: RandomNumberGenerator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RandomNumberGenerator, "randomize", 3218959716)
  methodbind.ptrcall(self, [], void)

template seed*(self: RandomNumberGenerator): untyped = self.getSeed()
template `seed=`*(self: RandomNumberGenerator; value) = self.setSeed(value)

template state*(self: RandomNumberGenerator): untyped = self.getState()
template `state=`*(self: RandomNumberGenerator; value) = self.setState(value)
