# `==(PackedVector2Array Variant)`
# `!=(PackedVector2Array Variant)`
var `not(PackedVector2Array)`: PtrOperatorEvaluator
var `*(PackedVector2Array Transform2D)`: PtrOperatorEvaluator
# `in(PackedVector2Array Dictionary)`
# `in(PackedVector2Array Array)`
var `==(PackedVector2Array PackedVector2Array)`: PtrOperatorEvaluator
# `!=(PackedVector2Array PackedVector2Array)`
var `+(PackedVector2Array PackedVector2Array)`: PtrOperatorEvaluator
func `not`*(left: PackedVector2Array): bool = {.noSideEffect.}: `not(PackedVector2Array)`(getPtr left, nil, addr result)
func `*`*(left: PackedVector2Array; right: Transform2D): PackedVector2Array = {.noSideEffect.}: `*(PackedVector2Array Transform2D)`(getPtr left, getPtr right, addr result)
func `==`*(left: PackedVector2Array; right: PackedVector2Array): bool = {.noSideEffect.}: `==(PackedVector2Array PackedVector2Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedVector2Array; right: PackedVector2Array): PackedVector2Array = {.noSideEffect.}: `+(PackedVector2Array PackedVector2Array)`(getPtr left, getPtr right, addr result)
proc load_PackedVector2Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedVector2Array)` = load(opNot, VariantType_PackedVector2Array, VariantType_Nil)
  `*(PackedVector2Array Transform2D)` = load(opMultiply, VariantType_PackedVector2Array, VariantType_Transform2D)
  `==(PackedVector2Array PackedVector2Array)` = load(opEqual, VariantType_PackedVector2Array, VariantType_PackedVector2Array)
  `+(PackedVector2Array PackedVector2Array)` = load(opAdd, VariantType_PackedVector2Array, VariantType_PackedVector2Array)

var `get(PackedVector2Array Int)`: PtrBuiltinMethod
var `set(PackedVector2Array Int Vector2)`: PtrBuiltinMethod
var `size(PackedVector2Array)`: PtrBuiltinMethod
var `isEmpty(PackedVector2Array)`: PtrBuiltinMethod
var `pushBack(PackedVector2Array Vector2)`: PtrBuiltinMethod
var `append(PackedVector2Array Vector2)`: PtrBuiltinMethod
var `appendArray(PackedVector2Array PackedVector2Array)`: PtrBuiltinMethod
var `removeAt(PackedVector2Array Int)`: PtrBuiltinMethod
var `insert(PackedVector2Array Int Vector2)`: PtrBuiltinMethod
var `fill(PackedVector2Array Vector2)`: PtrBuiltinMethod
var `resize(PackedVector2Array Int)`: PtrBuiltinMethod
var `clear(PackedVector2Array)`: PtrBuiltinMethod
var `has(PackedVector2Array Vector2)`: PtrBuiltinMethod
var `reverse(PackedVector2Array)`: PtrBuiltinMethod
var `slice(PackedVector2Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedVector2Array)`: PtrBuiltinMethod
var `sort(PackedVector2Array)`: PtrBuiltinMethod
var `bsearch(PackedVector2Array Vector2 bool)`: PtrBuiltinMethod
var `duplicate(PackedVector2Array)`: PtrBuiltinMethod
var `find(PackedVector2Array Vector2 Int)`: PtrBuiltinMethod
var `rfind(PackedVector2Array Vector2 Int)`: PtrBuiltinMethod
var `count(PackedVector2Array Vector2)`: PtrBuiltinMethod
var `erase(PackedVector2Array Vector2)`: PtrBuiltinMethod

proc get*(self: PackedVector2Array; index: Int): Vector2 =
  `get(PackedVector2Array Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var PackedVector2Array; index: Int; value: Vector2): void =
  `set(PackedVector2Array Int Vector2)`.call(addr self, [getPtr index, getPtr value])
proc size*(self: PackedVector2Array): Int =
  `size(PackedVector2Array)`.call(addr self, [], addr result)
proc isEmpty*(self: PackedVector2Array): bool =
  `isEmpty(PackedVector2Array)`.call(addr self, [], addr result)
proc pushBack*(self: var PackedVector2Array; value: Vector2): bool =
  `pushBack(PackedVector2Array Vector2)`.call(addr self, [getPtr value], addr result)
proc append*(self: var PackedVector2Array; value: Vector2): bool =
  `append(PackedVector2Array Vector2)`.call(addr self, [getPtr value], addr result)
proc appendArray*(self: var PackedVector2Array; array: PackedVector2Array): void =
  `appendArray(PackedVector2Array PackedVector2Array)`.call(addr self, [getPtr array])
proc removeAt*(self: var PackedVector2Array; index: Int): void =
  `removeAt(PackedVector2Array Int)`.call(addr self, [getPtr index])
proc insert*(self: var PackedVector2Array; atIndex: Int; value: Vector2): Int =
  `insert(PackedVector2Array Int Vector2)`.call(addr self, [getPtr atIndex, getPtr value], addr result)
proc fill*(self: var PackedVector2Array; value: Vector2): void =
  `fill(PackedVector2Array Vector2)`.call(addr self, [getPtr value])
proc resize*(self: var PackedVector2Array; newSize: Int): Int =
  `resize(PackedVector2Array Int)`.call(addr self, [getPtr newSize], addr result)
proc clear*(self: var PackedVector2Array): void =
  `clear(PackedVector2Array)`.call(addr self, [])
proc has*(self: PackedVector2Array; value: Vector2): bool =
  `has(PackedVector2Array Vector2)`.call(addr self, [getPtr value], addr result)
proc reverse*(self: var PackedVector2Array): void =
  `reverse(PackedVector2Array)`.call(addr self, [])
proc slice*(self: PackedVector2Array; begin: Int; `end`: Int = 2147483647): PackedVector2Array =
  `slice(PackedVector2Array Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc toByteArray*(self: PackedVector2Array): PackedByteArray =
  `toByteArray(PackedVector2Array)`.call(addr self, [], addr result)
proc sort*(self: var PackedVector2Array): void =
  `sort(PackedVector2Array)`.call(addr self, [])
proc bsearch*(self: var PackedVector2Array; value: Vector2; before: bool = true): Int =
  `bsearch(PackedVector2Array Vector2 bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc duplicate*(self: var PackedVector2Array): PackedVector2Array =
  `duplicate(PackedVector2Array)`.call(addr self, [], addr result)
proc find*(self: PackedVector2Array; value: Vector2; `from`: Int = 0): Int =
  `find(PackedVector2Array Vector2 Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc rfind*(self: PackedVector2Array; value: Vector2; `from`: Int = -1): Int =
  `rfind(PackedVector2Array Vector2 Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc count*(self: PackedVector2Array; value: Vector2): Int =
  `count(PackedVector2Array Vector2)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var PackedVector2Array; value: Vector2): bool =
  `erase(PackedVector2Array Vector2)`.call(addr self, [getPtr value], addr result)

proc load_PackedVector2Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedVector2Array Int)` = load(VariantType_PackedVector2Array, "get", 2609058838)
  `set(PackedVector2Array Int Vector2)` = load(VariantType_PackedVector2Array, "set", 635767250)
  `size(PackedVector2Array)` = load(VariantType_PackedVector2Array, "size", 3173160232)
  `isEmpty(PackedVector2Array)` = load(VariantType_PackedVector2Array, "is_empty", 3918633141)
  `pushBack(PackedVector2Array Vector2)` = load(VariantType_PackedVector2Array, "push_back", 4188891560)
  `append(PackedVector2Array Vector2)` = load(VariantType_PackedVector2Array, "append", 4188891560)
  `appendArray(PackedVector2Array PackedVector2Array)` = load(VariantType_PackedVector2Array, "append_array", 3887534835)
  `removeAt(PackedVector2Array Int)` = load(VariantType_PackedVector2Array, "remove_at", 2823966027)
  `insert(PackedVector2Array Int Vector2)` = load(VariantType_PackedVector2Array, "insert", 2225629369)
  `fill(PackedVector2Array Vector2)` = load(VariantType_PackedVector2Array, "fill", 3790411178)
  `resize(PackedVector2Array Int)` = load(VariantType_PackedVector2Array, "resize", 848867239)
  `clear(PackedVector2Array)` = load(VariantType_PackedVector2Array, "clear", 3218959716)
  `has(PackedVector2Array Vector2)` = load(VariantType_PackedVector2Array, "has", 3190634762)
  `reverse(PackedVector2Array)` = load(VariantType_PackedVector2Array, "reverse", 3218959716)
  `slice(PackedVector2Array Int Int)` = load(VariantType_PackedVector2Array, "slice", 3864005350)
  `toByteArray(PackedVector2Array)` = load(VariantType_PackedVector2Array, "to_byte_array", 247621236)
  `sort(PackedVector2Array)` = load(VariantType_PackedVector2Array, "sort", 3218959716)
  `bsearch(PackedVector2Array Vector2 bool)` = load(VariantType_PackedVector2Array, "bsearch", 3778035805)
  `duplicate(PackedVector2Array)` = load(VariantType_PackedVector2Array, "duplicate", 3763646812)
  `find(PackedVector2Array Vector2 Int)` = load(VariantType_PackedVector2Array, "find", 1469606149)
  `rfind(PackedVector2Array Vector2 Int)` = load(VariantType_PackedVector2Array, "rfind", 1469606149)
  `count(PackedVector2Array Vector2)` = load(VariantType_PackedVector2Array, "count", 2798848307)
  `erase(PackedVector2Array Vector2)` = load(VariantType_PackedVector2Array, "erase", 4188891560)
