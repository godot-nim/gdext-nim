# `==(PackedInt64Array Variant)`
# `!=(PackedInt64Array Variant)`
var `not(PackedInt64Array)`: PtrOperatorEvaluator
# `in(PackedInt64Array Dictionary)`
# `in(PackedInt64Array Array)`
var `==(PackedInt64Array PackedInt64Array)`: PtrOperatorEvaluator
# `!=(PackedInt64Array PackedInt64Array)`
var `+(PackedInt64Array PackedInt64Array)`: PtrOperatorEvaluator
func `not`*(left: PackedInt64Array): bool = {.noSideEffect.}: `not(PackedInt64Array)`(getPtr left, nil, addr result)
func `==`*(left: PackedInt64Array; right: PackedInt64Array): bool = {.noSideEffect.}: `==(PackedInt64Array PackedInt64Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedInt64Array; right: PackedInt64Array): PackedInt64Array = {.noSideEffect.}: `+(PackedInt64Array PackedInt64Array)`(getPtr left, getPtr right, addr result)
proc load_PackedInt64Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedInt64Array)` = load(opNot, VariantType_PackedInt64Array, VariantType_Nil)
  `==(PackedInt64Array PackedInt64Array)` = load(opEqual, VariantType_PackedInt64Array, VariantType_PackedInt64Array)
  `+(PackedInt64Array PackedInt64Array)` = load(opAdd, VariantType_PackedInt64Array, VariantType_PackedInt64Array)

var `get(PackedInt64Array Int)`: PtrBuiltinMethod
var `set(PackedInt64Array Int Int)`: PtrBuiltinMethod
var `size(PackedInt64Array)`: PtrBuiltinMethod
var `isEmpty(PackedInt64Array)`: PtrBuiltinMethod
var `pushBack(PackedInt64Array Int)`: PtrBuiltinMethod
var `append(PackedInt64Array Int)`: PtrBuiltinMethod
var `appendArray(PackedInt64Array PackedInt64Array)`: PtrBuiltinMethod
var `removeAt(PackedInt64Array Int)`: PtrBuiltinMethod
var `insert(PackedInt64Array Int Int)`: PtrBuiltinMethod
var `fill(PackedInt64Array Int)`: PtrBuiltinMethod
var `resize(PackedInt64Array Int)`: PtrBuiltinMethod
var `clear(PackedInt64Array)`: PtrBuiltinMethod
var `has(PackedInt64Array Int)`: PtrBuiltinMethod
var `reverse(PackedInt64Array)`: PtrBuiltinMethod
var `slice(PackedInt64Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedInt64Array)`: PtrBuiltinMethod
var `sort(PackedInt64Array)`: PtrBuiltinMethod
var `bsearch(PackedInt64Array Int bool)`: PtrBuiltinMethod
var `duplicate(PackedInt64Array)`: PtrBuiltinMethod
var `find(PackedInt64Array Int Int)`: PtrBuiltinMethod
var `rfind(PackedInt64Array Int Int)`: PtrBuiltinMethod
var `count(PackedInt64Array Int)`: PtrBuiltinMethod
var `erase(PackedInt64Array Int)`: PtrBuiltinMethod

proc get*(self: PackedInt64Array; index: Int): Int =
  `get(PackedInt64Array Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var PackedInt64Array; index: Int; value: Int): void =
  `set(PackedInt64Array Int Int)`.call(addr self, [getPtr index, getPtr value])
proc size*(self: PackedInt64Array): Int =
  `size(PackedInt64Array)`.call(addr self, [], addr result)
proc isEmpty*(self: PackedInt64Array): bool =
  `isEmpty(PackedInt64Array)`.call(addr self, [], addr result)
proc pushBack*(self: var PackedInt64Array; value: Int): bool =
  `pushBack(PackedInt64Array Int)`.call(addr self, [getPtr value], addr result)
proc append*(self: var PackedInt64Array; value: Int): bool =
  `append(PackedInt64Array Int)`.call(addr self, [getPtr value], addr result)
proc appendArray*(self: var PackedInt64Array; array: PackedInt64Array): void =
  `appendArray(PackedInt64Array PackedInt64Array)`.call(addr self, [getPtr array])
proc removeAt*(self: var PackedInt64Array; index: Int): void =
  `removeAt(PackedInt64Array Int)`.call(addr self, [getPtr index])
proc insert*(self: var PackedInt64Array; atIndex: Int; value: Int): Int =
  `insert(PackedInt64Array Int Int)`.call(addr self, [getPtr atIndex, getPtr value], addr result)
proc fill*(self: var PackedInt64Array; value: Int): void =
  `fill(PackedInt64Array Int)`.call(addr self, [getPtr value])
proc resize*(self: var PackedInt64Array; newSize: Int): Int =
  `resize(PackedInt64Array Int)`.call(addr self, [getPtr newSize], addr result)
proc clear*(self: var PackedInt64Array): void =
  `clear(PackedInt64Array)`.call(addr self, [])
proc has*(self: PackedInt64Array; value: Int): bool =
  `has(PackedInt64Array Int)`.call(addr self, [getPtr value], addr result)
proc reverse*(self: var PackedInt64Array): void =
  `reverse(PackedInt64Array)`.call(addr self, [])
proc slice*(self: PackedInt64Array; begin: Int; `end`: Int = 2147483647): PackedInt64Array =
  `slice(PackedInt64Array Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc toByteArray*(self: PackedInt64Array): PackedByteArray =
  `toByteArray(PackedInt64Array)`.call(addr self, [], addr result)
proc sort*(self: var PackedInt64Array): void =
  `sort(PackedInt64Array)`.call(addr self, [])
proc bsearch*(self: PackedInt64Array; value: Int; before: bool = true): Int =
  `bsearch(PackedInt64Array Int bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc duplicate*(self: PackedInt64Array): PackedInt64Array =
  `duplicate(PackedInt64Array)`.call(addr self, [], addr result)
proc find*(self: PackedInt64Array; value: Int; `from`: Int = 0): Int =
  `find(PackedInt64Array Int Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc rfind*(self: PackedInt64Array; value: Int; `from`: Int = -1): Int =
  `rfind(PackedInt64Array Int Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc count*(self: PackedInt64Array; value: Int): Int =
  `count(PackedInt64Array Int)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var PackedInt64Array; value: Int): bool =
  `erase(PackedInt64Array Int)`.call(addr self, [getPtr value], addr result)

proc load_PackedInt64Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "get", 4103005248)
  `set(PackedInt64Array Int Int)` = load(VariantType_PackedInt64Array, "set", 3638975848)
  `size(PackedInt64Array)` = load(VariantType_PackedInt64Array, "size", 3173160232)
  `isEmpty(PackedInt64Array)` = load(VariantType_PackedInt64Array, "is_empty", 3918633141)
  `pushBack(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "push_back", 694024632)
  `append(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "append", 694024632)
  `appendArray(PackedInt64Array PackedInt64Array)` = load(VariantType_PackedInt64Array, "append_array", 2090311302)
  `removeAt(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "remove_at", 2823966027)
  `insert(PackedInt64Array Int Int)` = load(VariantType_PackedInt64Array, "insert", 1487112728)
  `fill(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "fill", 2823966027)
  `resize(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "resize", 848867239)
  `clear(PackedInt64Array)` = load(VariantType_PackedInt64Array, "clear", 3218959716)
  `has(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "has", 931488181)
  `reverse(PackedInt64Array)` = load(VariantType_PackedInt64Array, "reverse", 3218959716)
  `slice(PackedInt64Array Int Int)` = load(VariantType_PackedInt64Array, "slice", 1726550804)
  `toByteArray(PackedInt64Array)` = load(VariantType_PackedInt64Array, "to_byte_array", 247621236)
  `sort(PackedInt64Array)` = load(VariantType_PackedInt64Array, "sort", 3218959716)
  `bsearch(PackedInt64Array Int bool)` = load(VariantType_PackedInt64Array, "bsearch", 954237325)
  `duplicate(PackedInt64Array)` = load(VariantType_PackedInt64Array, "duplicate", 1961294120)
  `find(PackedInt64Array Int Int)` = load(VariantType_PackedInt64Array, "find", 2984303840)
  `rfind(PackedInt64Array Int Int)` = load(VariantType_PackedInt64Array, "rfind", 2984303840)
  `count(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "count", 4103005248)
  `erase(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "erase", 694024632)
