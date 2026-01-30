# `==(PackedFloat32Array Variant)`
# `!=(PackedFloat32Array Variant)`
var `not(PackedFloat32Array)`: PtrOperatorEvaluator
# `in(PackedFloat32Array Dictionary)`
# `in(PackedFloat32Array Array)`
var `==(PackedFloat32Array PackedFloat32Array)`: PtrOperatorEvaluator
# `!=(PackedFloat32Array PackedFloat32Array)`
var `+(PackedFloat32Array PackedFloat32Array)`: PtrOperatorEvaluator
func `not`*(left: PackedFloat32Array): bool = {.noSideEffect.}: `not(PackedFloat32Array)`(getPtr left, nil, addr result)
func `==`*(left: PackedFloat32Array; right: PackedFloat32Array): bool = {.noSideEffect.}: `==(PackedFloat32Array PackedFloat32Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedFloat32Array; right: PackedFloat32Array): PackedFloat32Array = {.noSideEffect.}: `+(PackedFloat32Array PackedFloat32Array)`(getPtr left, getPtr right, addr result)
proc load_PackedFloat32Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedFloat32Array)` = load(opNot, VariantType_PackedFloat32Array, VariantType_Nil)
  `==(PackedFloat32Array PackedFloat32Array)` = load(opEqual, VariantType_PackedFloat32Array, VariantType_PackedFloat32Array)
  `+(PackedFloat32Array PackedFloat32Array)` = load(opAdd, VariantType_PackedFloat32Array, VariantType_PackedFloat32Array)

var `get(PackedFloat32Array Int)`: PtrBuiltinMethod
var `set(PackedFloat32Array Int Float)`: PtrBuiltinMethod
var `size(PackedFloat32Array)`: PtrBuiltinMethod
var `isEmpty(PackedFloat32Array)`: PtrBuiltinMethod
var `pushBack(PackedFloat32Array Float)`: PtrBuiltinMethod
var `append(PackedFloat32Array Float)`: PtrBuiltinMethod
var `appendArray(PackedFloat32Array PackedFloat32Array)`: PtrBuiltinMethod
var `removeAt(PackedFloat32Array Int)`: PtrBuiltinMethod
var `insert(PackedFloat32Array Int Float)`: PtrBuiltinMethod
var `fill(PackedFloat32Array Float)`: PtrBuiltinMethod
var `resize(PackedFloat32Array Int)`: PtrBuiltinMethod
var `clear(PackedFloat32Array)`: PtrBuiltinMethod
var `has(PackedFloat32Array Float)`: PtrBuiltinMethod
var `reverse(PackedFloat32Array)`: PtrBuiltinMethod
var `slice(PackedFloat32Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedFloat32Array)`: PtrBuiltinMethod
var `sort(PackedFloat32Array)`: PtrBuiltinMethod
var `bsearch(PackedFloat32Array Float bool)`: PtrBuiltinMethod
var `duplicate(PackedFloat32Array)`: PtrBuiltinMethod
var `find(PackedFloat32Array Float Int)`: PtrBuiltinMethod
var `rfind(PackedFloat32Array Float Int)`: PtrBuiltinMethod
var `count(PackedFloat32Array Float)`: PtrBuiltinMethod
var `erase(PackedFloat32Array Float)`: PtrBuiltinMethod

proc get*(self: PackedFloat32Array; index: Int): Float =
  `get(PackedFloat32Array Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var PackedFloat32Array; index: Int; value: Float): void =
  `set(PackedFloat32Array Int Float)`.call(addr self, [getPtr index, getPtr value])
proc size*(self: PackedFloat32Array): Int =
  `size(PackedFloat32Array)`.call(addr self, [], addr result)
proc isEmpty*(self: PackedFloat32Array): bool =
  `isEmpty(PackedFloat32Array)`.call(addr self, [], addr result)
proc pushBack*(self: var PackedFloat32Array; value: Float): bool =
  `pushBack(PackedFloat32Array Float)`.call(addr self, [getPtr value], addr result)
proc append*(self: var PackedFloat32Array; value: Float): bool =
  `append(PackedFloat32Array Float)`.call(addr self, [getPtr value], addr result)
proc appendArray*(self: var PackedFloat32Array; array: PackedFloat32Array): void =
  `appendArray(PackedFloat32Array PackedFloat32Array)`.call(addr self, [getPtr array])
proc removeAt*(self: var PackedFloat32Array; index: Int): void =
  `removeAt(PackedFloat32Array Int)`.call(addr self, [getPtr index])
proc insert*(self: var PackedFloat32Array; atIndex: Int; value: Float): Int =
  `insert(PackedFloat32Array Int Float)`.call(addr self, [getPtr atIndex, getPtr value], addr result)
proc fill*(self: var PackedFloat32Array; value: Float): void =
  `fill(PackedFloat32Array Float)`.call(addr self, [getPtr value])
proc resize*(self: var PackedFloat32Array; newSize: Int): Int =
  `resize(PackedFloat32Array Int)`.call(addr self, [getPtr newSize], addr result)
proc clear*(self: var PackedFloat32Array): void =
  `clear(PackedFloat32Array)`.call(addr self, [])
proc has*(self: PackedFloat32Array; value: Float): bool =
  `has(PackedFloat32Array Float)`.call(addr self, [getPtr value], addr result)
proc reverse*(self: var PackedFloat32Array): void =
  `reverse(PackedFloat32Array)`.call(addr self, [])
proc slice*(self: PackedFloat32Array; begin: Int; `end`: Int = 2147483647): PackedFloat32Array =
  `slice(PackedFloat32Array Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc toByteArray*(self: PackedFloat32Array): PackedByteArray =
  `toByteArray(PackedFloat32Array)`.call(addr self, [], addr result)
proc sort*(self: var PackedFloat32Array): void =
  `sort(PackedFloat32Array)`.call(addr self, [])
proc bsearch*(self: PackedFloat32Array; value: Float; before: bool = true): Int =
  `bsearch(PackedFloat32Array Float bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc duplicate*(self: PackedFloat32Array): PackedFloat32Array =
  `duplicate(PackedFloat32Array)`.call(addr self, [], addr result)
proc find*(self: PackedFloat32Array; value: Float; `from`: Int = 0): Int =
  `find(PackedFloat32Array Float Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc rfind*(self: PackedFloat32Array; value: Float; `from`: Int = -1): Int =
  `rfind(PackedFloat32Array Float Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc count*(self: PackedFloat32Array; value: Float): Int =
  `count(PackedFloat32Array Float)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var PackedFloat32Array; value: Float): bool =
  `erase(PackedFloat32Array Float)`.call(addr self, [getPtr value], addr result)

proc load_PackedFloat32Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedFloat32Array Int)` = load(VariantType_PackedFloat32Array, "get", 1401583798)
  `set(PackedFloat32Array Int Float)` = load(VariantType_PackedFloat32Array, "set", 1113000516)
  `size(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "size", 3173160232)
  `isEmpty(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "is_empty", 3918633141)
  `pushBack(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "push_back", 4094791666)
  `append(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "append", 4094791666)
  `appendArray(PackedFloat32Array PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "append_array", 2981316639)
  `removeAt(PackedFloat32Array Int)` = load(VariantType_PackedFloat32Array, "remove_at", 2823966027)
  `insert(PackedFloat32Array Int Float)` = load(VariantType_PackedFloat32Array, "insert", 1379903876)
  `fill(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "fill", 833936903)
  `resize(PackedFloat32Array Int)` = load(VariantType_PackedFloat32Array, "resize", 848867239)
  `clear(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "clear", 3218959716)
  `has(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "has", 1296369134)
  `reverse(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "reverse", 3218959716)
  `slice(PackedFloat32Array Int Int)` = load(VariantType_PackedFloat32Array, "slice", 1418229160)
  `toByteArray(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "to_byte_array", 247621236)
  `sort(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "sort", 3218959716)
  `bsearch(PackedFloat32Array Float bool)` = load(VariantType_PackedFloat32Array, "bsearch", 1175118842)
  `duplicate(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "duplicate", 3575107827)
  `find(PackedFloat32Array Float Int)` = load(VariantType_PackedFloat32Array, "find", 1343150241)
  `rfind(PackedFloat32Array Float Int)` = load(VariantType_PackedFloat32Array, "rfind", 1343150241)
  `count(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "count", 2859915090)
  `erase(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "erase", 4094791666)
