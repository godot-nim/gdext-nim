# `==(PackedFloat64Array Variant)`
# `!=(PackedFloat64Array Variant)`
var `not(PackedFloat64Array)`: PtrOperatorEvaluator
# `in(PackedFloat64Array Dictionary)`
# `in(PackedFloat64Array Array)`
var `==(PackedFloat64Array PackedFloat64Array)`: PtrOperatorEvaluator
# `!=(PackedFloat64Array PackedFloat64Array)`
var `+(PackedFloat64Array PackedFloat64Array)`: PtrOperatorEvaluator
func `not`*(left: PackedFloat64Array): bool = {.noSideEffect.}: `not(PackedFloat64Array)`(getPtr left, nil, addr result)
func `==`*(left: PackedFloat64Array; right: PackedFloat64Array): bool = {.noSideEffect.}: `==(PackedFloat64Array PackedFloat64Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedFloat64Array; right: PackedFloat64Array): PackedFloat64Array = {.noSideEffect.}: `+(PackedFloat64Array PackedFloat64Array)`(getPtr left, getPtr right, addr result)
proc load_PackedFloat64Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedFloat64Array)` = load(opNot, VariantType_PackedFloat64Array, VariantType_Nil)
  `==(PackedFloat64Array PackedFloat64Array)` = load(opEqual, VariantType_PackedFloat64Array, VariantType_PackedFloat64Array)
  `+(PackedFloat64Array PackedFloat64Array)` = load(opAdd, VariantType_PackedFloat64Array, VariantType_PackedFloat64Array)

var `get(PackedFloat64Array Int)`: PtrBuiltinMethod
var `set(PackedFloat64Array Int Float)`: PtrBuiltinMethod
var `size(PackedFloat64Array)`: PtrBuiltinMethod
var `isEmpty(PackedFloat64Array)`: PtrBuiltinMethod
var `pushBack(PackedFloat64Array Float)`: PtrBuiltinMethod
var `append(PackedFloat64Array Float)`: PtrBuiltinMethod
var `appendArray(PackedFloat64Array PackedFloat64Array)`: PtrBuiltinMethod
var `removeAt(PackedFloat64Array Int)`: PtrBuiltinMethod
var `insert(PackedFloat64Array Int Float)`: PtrBuiltinMethod
var `fill(PackedFloat64Array Float)`: PtrBuiltinMethod
var `resize(PackedFloat64Array Int)`: PtrBuiltinMethod
var `clear(PackedFloat64Array)`: PtrBuiltinMethod
var `has(PackedFloat64Array Float)`: PtrBuiltinMethod
var `reverse(PackedFloat64Array)`: PtrBuiltinMethod
var `slice(PackedFloat64Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedFloat64Array)`: PtrBuiltinMethod
var `sort(PackedFloat64Array)`: PtrBuiltinMethod
var `bsearch(PackedFloat64Array Float bool)`: PtrBuiltinMethod
var `duplicate(PackedFloat64Array)`: PtrBuiltinMethod
var `find(PackedFloat64Array Float Int)`: PtrBuiltinMethod
var `rfind(PackedFloat64Array Float Int)`: PtrBuiltinMethod
var `count(PackedFloat64Array Float)`: PtrBuiltinMethod
var `erase(PackedFloat64Array Float)`: PtrBuiltinMethod

proc get*(self: PackedFloat64Array; index: Int): Float =
  `get(PackedFloat64Array Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var PackedFloat64Array; index: Int; value: Float): void =
  `set(PackedFloat64Array Int Float)`.call(addr self, [getPtr index, getPtr value])
proc size*(self: PackedFloat64Array): Int =
  `size(PackedFloat64Array)`.call(addr self, [], addr result)
proc isEmpty*(self: PackedFloat64Array): bool =
  `isEmpty(PackedFloat64Array)`.call(addr self, [], addr result)
proc pushBack*(self: var PackedFloat64Array; value: Float): bool =
  `pushBack(PackedFloat64Array Float)`.call(addr self, [getPtr value], addr result)
proc append*(self: var PackedFloat64Array; value: Float): bool =
  `append(PackedFloat64Array Float)`.call(addr self, [getPtr value], addr result)
proc appendArray*(self: var PackedFloat64Array; array: PackedFloat64Array): void =
  `appendArray(PackedFloat64Array PackedFloat64Array)`.call(addr self, [getPtr array])
proc removeAt*(self: var PackedFloat64Array; index: Int): void =
  `removeAt(PackedFloat64Array Int)`.call(addr self, [getPtr index])
proc insert*(self: var PackedFloat64Array; atIndex: Int; value: Float): Int =
  `insert(PackedFloat64Array Int Float)`.call(addr self, [getPtr atIndex, getPtr value], addr result)
proc fill*(self: var PackedFloat64Array; value: Float): void =
  `fill(PackedFloat64Array Float)`.call(addr self, [getPtr value])
proc resize*(self: var PackedFloat64Array; newSize: Int): Int =
  `resize(PackedFloat64Array Int)`.call(addr self, [getPtr newSize], addr result)
proc clear*(self: var PackedFloat64Array): void =
  `clear(PackedFloat64Array)`.call(addr self, [])
proc has*(self: PackedFloat64Array; value: Float): bool =
  `has(PackedFloat64Array Float)`.call(addr self, [getPtr value], addr result)
proc reverse*(self: var PackedFloat64Array): void =
  `reverse(PackedFloat64Array)`.call(addr self, [])
proc slice*(self: PackedFloat64Array; begin: Int; `end`: Int = 2147483647): PackedFloat64Array =
  `slice(PackedFloat64Array Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc toByteArray*(self: PackedFloat64Array): PackedByteArray =
  `toByteArray(PackedFloat64Array)`.call(addr self, [], addr result)
proc sort*(self: var PackedFloat64Array): void =
  `sort(PackedFloat64Array)`.call(addr self, [])
proc bsearch*(self: PackedFloat64Array; value: Float; before: bool = true): Int =
  `bsearch(PackedFloat64Array Float bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc duplicate*(self: PackedFloat64Array): PackedFloat64Array =
  `duplicate(PackedFloat64Array)`.call(addr self, [], addr result)
proc find*(self: PackedFloat64Array; value: Float; `from`: Int = 0): Int =
  `find(PackedFloat64Array Float Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc rfind*(self: PackedFloat64Array; value: Float; `from`: Int = -1): Int =
  `rfind(PackedFloat64Array Float Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc count*(self: PackedFloat64Array; value: Float): Int =
  `count(PackedFloat64Array Float)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var PackedFloat64Array; value: Float): bool =
  `erase(PackedFloat64Array Float)`.call(addr self, [getPtr value], addr result)

proc load_PackedFloat64Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedFloat64Array Int)` = load(VariantType_PackedFloat64Array, "get", 1401583798)
  `set(PackedFloat64Array Int Float)` = load(VariantType_PackedFloat64Array, "set", 1113000516)
  `size(PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "size", 3173160232)
  `isEmpty(PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "is_empty", 3918633141)
  `pushBack(PackedFloat64Array Float)` = load(VariantType_PackedFloat64Array, "push_back", 4094791666)
  `append(PackedFloat64Array Float)` = load(VariantType_PackedFloat64Array, "append", 4094791666)
  `appendArray(PackedFloat64Array PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "append_array", 792078629)
  `removeAt(PackedFloat64Array Int)` = load(VariantType_PackedFloat64Array, "remove_at", 2823966027)
  `insert(PackedFloat64Array Int Float)` = load(VariantType_PackedFloat64Array, "insert", 1379903876)
  `fill(PackedFloat64Array Float)` = load(VariantType_PackedFloat64Array, "fill", 833936903)
  `resize(PackedFloat64Array Int)` = load(VariantType_PackedFloat64Array, "resize", 848867239)
  `clear(PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "clear", 3218959716)
  `has(PackedFloat64Array Float)` = load(VariantType_PackedFloat64Array, "has", 1296369134)
  `reverse(PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "reverse", 3218959716)
  `slice(PackedFloat64Array Int Int)` = load(VariantType_PackedFloat64Array, "slice", 2192974324)
  `toByteArray(PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "to_byte_array", 247621236)
  `sort(PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "sort", 3218959716)
  `bsearch(PackedFloat64Array Float bool)` = load(VariantType_PackedFloat64Array, "bsearch", 1175118842)
  `duplicate(PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "duplicate", 1627308337)
  `find(PackedFloat64Array Float Int)` = load(VariantType_PackedFloat64Array, "find", 1343150241)
  `rfind(PackedFloat64Array Float Int)` = load(VariantType_PackedFloat64Array, "rfind", 1343150241)
  `count(PackedFloat64Array Float)` = load(VariantType_PackedFloat64Array, "count", 2859915090)
  `erase(PackedFloat64Array Float)` = load(VariantType_PackedFloat64Array, "erase", 4094791666)
