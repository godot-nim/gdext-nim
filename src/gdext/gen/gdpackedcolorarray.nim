# `==(PackedColorArray Variant)`
# `!=(PackedColorArray Variant)`
var `not(PackedColorArray)`: PtrOperatorEvaluator
# `in(PackedColorArray Dictionary)`
# `in(PackedColorArray Array)`
var `==(PackedColorArray PackedColorArray)`: PtrOperatorEvaluator
# `!=(PackedColorArray PackedColorArray)`
var `+(PackedColorArray PackedColorArray)`: PtrOperatorEvaluator
func `not`*(left: PackedColorArray): bool = {.noSideEffect.}: `not(PackedColorArray)`(getPtr left, nil, addr result)
func `==`*(left: PackedColorArray; right: PackedColorArray): bool = {.noSideEffect.}: `==(PackedColorArray PackedColorArray)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedColorArray; right: PackedColorArray): PackedColorArray = {.noSideEffect.}: `+(PackedColorArray PackedColorArray)`(getPtr left, getPtr right, addr result)
proc load_PackedColorArray_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedColorArray)` = load(opNot, VariantType_PackedColorArray, VariantType_Nil)
  `==(PackedColorArray PackedColorArray)` = load(opEqual, VariantType_PackedColorArray, VariantType_PackedColorArray)
  `+(PackedColorArray PackedColorArray)` = load(opAdd, VariantType_PackedColorArray, VariantType_PackedColorArray)

var `get(PackedColorArray Int)`: PtrBuiltinMethod
var `set(PackedColorArray Int Color)`: PtrBuiltinMethod
var `size(PackedColorArray)`: PtrBuiltinMethod
var `isEmpty(PackedColorArray)`: PtrBuiltinMethod
var `pushBack(PackedColorArray Color)`: PtrBuiltinMethod
var `append(PackedColorArray Color)`: PtrBuiltinMethod
var `appendArray(PackedColorArray PackedColorArray)`: PtrBuiltinMethod
var `removeAt(PackedColorArray Int)`: PtrBuiltinMethod
var `insert(PackedColorArray Int Color)`: PtrBuiltinMethod
var `fill(PackedColorArray Color)`: PtrBuiltinMethod
var `resize(PackedColorArray Int)`: PtrBuiltinMethod
var `clear(PackedColorArray)`: PtrBuiltinMethod
var `has(PackedColorArray Color)`: PtrBuiltinMethod
var `reverse(PackedColorArray)`: PtrBuiltinMethod
var `slice(PackedColorArray Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedColorArray)`: PtrBuiltinMethod
var `sort(PackedColorArray)`: PtrBuiltinMethod
var `bsearch(PackedColorArray Color bool)`: PtrBuiltinMethod
var `duplicate(PackedColorArray)`: PtrBuiltinMethod
var `find(PackedColorArray Color Int)`: PtrBuiltinMethod
var `rfind(PackedColorArray Color Int)`: PtrBuiltinMethod
var `count(PackedColorArray Color)`: PtrBuiltinMethod
var `erase(PackedColorArray Color)`: PtrBuiltinMethod

proc get*(self: PackedColorArray; index: Int): Color =
  `get(PackedColorArray Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var PackedColorArray; index: Int; value: Color): void =
  `set(PackedColorArray Int Color)`.call(addr self, [getPtr index, getPtr value])
proc size*(self: PackedColorArray): Int =
  `size(PackedColorArray)`.call(addr self, [], addr result)
proc isEmpty*(self: PackedColorArray): bool =
  `isEmpty(PackedColorArray)`.call(addr self, [], addr result)
proc pushBack*(self: var PackedColorArray; value: Color): bool =
  `pushBack(PackedColorArray Color)`.call(addr self, [getPtr value], addr result)
proc append*(self: var PackedColorArray; value: Color): bool =
  `append(PackedColorArray Color)`.call(addr self, [getPtr value], addr result)
proc appendArray*(self: var PackedColorArray; array: PackedColorArray): void =
  `appendArray(PackedColorArray PackedColorArray)`.call(addr self, [getPtr array])
proc removeAt*(self: var PackedColorArray; index: Int): void =
  `removeAt(PackedColorArray Int)`.call(addr self, [getPtr index])
proc insert*(self: var PackedColorArray; atIndex: Int; value: Color): Int =
  `insert(PackedColorArray Int Color)`.call(addr self, [getPtr atIndex, getPtr value], addr result)
proc fill*(self: var PackedColorArray; value: Color): void =
  `fill(PackedColorArray Color)`.call(addr self, [getPtr value])
proc resize*(self: var PackedColorArray; newSize: Int): Int =
  `resize(PackedColorArray Int)`.call(addr self, [getPtr newSize], addr result)
proc clear*(self: var PackedColorArray): void =
  `clear(PackedColorArray)`.call(addr self, [])
proc has*(self: PackedColorArray; value: Color): bool =
  `has(PackedColorArray Color)`.call(addr self, [getPtr value], addr result)
proc reverse*(self: var PackedColorArray): void =
  `reverse(PackedColorArray)`.call(addr self, [])
proc slice*(self: PackedColorArray; begin: Int; `end`: Int = 2147483647): PackedColorArray =
  `slice(PackedColorArray Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc toByteArray*(self: PackedColorArray): PackedByteArray =
  `toByteArray(PackedColorArray)`.call(addr self, [], addr result)
proc sort*(self: var PackedColorArray): void =
  `sort(PackedColorArray)`.call(addr self, [])
proc bsearch*(self: PackedColorArray; value: Color; before: bool = true): Int =
  `bsearch(PackedColorArray Color bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc duplicate*(self: PackedColorArray): PackedColorArray =
  `duplicate(PackedColorArray)`.call(addr self, [], addr result)
proc find*(self: PackedColorArray; value: Color; `from`: Int = 0): Int =
  `find(PackedColorArray Color Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc rfind*(self: PackedColorArray; value: Color; `from`: Int = -1): Int =
  `rfind(PackedColorArray Color Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc count*(self: PackedColorArray; value: Color): Int =
  `count(PackedColorArray Color)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var PackedColorArray; value: Color): bool =
  `erase(PackedColorArray Color)`.call(addr self, [getPtr value], addr result)

proc load_PackedColorArray_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedColorArray Int)` = load(VariantType_PackedColorArray, "get", 2972831132)
  `set(PackedColorArray Int Color)` = load(VariantType_PackedColorArray, "set", 1444096570)
  `size(PackedColorArray)` = load(VariantType_PackedColorArray, "size", 3173160232)
  `isEmpty(PackedColorArray)` = load(VariantType_PackedColorArray, "is_empty", 3918633141)
  `pushBack(PackedColorArray Color)` = load(VariantType_PackedColorArray, "push_back", 1007858200)
  `append(PackedColorArray Color)` = load(VariantType_PackedColorArray, "append", 1007858200)
  `appendArray(PackedColorArray PackedColorArray)` = load(VariantType_PackedColorArray, "append_array", 798822497)
  `removeAt(PackedColorArray Int)` = load(VariantType_PackedColorArray, "remove_at", 2823966027)
  `insert(PackedColorArray Int Color)` = load(VariantType_PackedColorArray, "insert", 785289703)
  `fill(PackedColorArray Color)` = load(VariantType_PackedColorArray, "fill", 3730314301)
  `resize(PackedColorArray Int)` = load(VariantType_PackedColorArray, "resize", 848867239)
  `clear(PackedColorArray)` = load(VariantType_PackedColorArray, "clear", 3218959716)
  `has(PackedColorArray Color)` = load(VariantType_PackedColorArray, "has", 3167426256)
  `reverse(PackedColorArray)` = load(VariantType_PackedColorArray, "reverse", 3218959716)
  `slice(PackedColorArray Int Int)` = load(VariantType_PackedColorArray, "slice", 2451797139)
  `toByteArray(PackedColorArray)` = load(VariantType_PackedColorArray, "to_byte_array", 247621236)
  `sort(PackedColorArray)` = load(VariantType_PackedColorArray, "sort", 3218959716)
  `bsearch(PackedColorArray Color bool)` = load(VariantType_PackedColorArray, "bsearch", 2639732838)
  `duplicate(PackedColorArray)` = load(VariantType_PackedColorArray, "duplicate", 3072026941)
  `find(PackedColorArray Color Int)` = load(VariantType_PackedColorArray, "find", 3156095363)
  `rfind(PackedColorArray Color Int)` = load(VariantType_PackedColorArray, "rfind", 3156095363)
  `count(PackedColorArray Color)` = load(VariantType_PackedColorArray, "count", 1682108616)
  `erase(PackedColorArray Color)` = load(VariantType_PackedColorArray, "erase", 1007858200)
