# `==(PackedStringArray Variant)`
# `!=(PackedStringArray Variant)`
var `not(PackedStringArray)`: PtrOperatorEvaluator
# `in(PackedStringArray Dictionary)`
# `in(PackedStringArray Array)`
var `==(PackedStringArray PackedStringArray)`: PtrOperatorEvaluator
# `!=(PackedStringArray PackedStringArray)`
var `+(PackedStringArray PackedStringArray)`: PtrOperatorEvaluator
func `not`*(left: PackedStringArray): bool = {.noSideEffect.}: `not(PackedStringArray)`(getPtr left, nil, addr result)
func `==`*(left: PackedStringArray; right: PackedStringArray): bool = {.noSideEffect.}: `==(PackedStringArray PackedStringArray)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedStringArray; right: PackedStringArray): PackedStringArray = {.noSideEffect.}: `+(PackedStringArray PackedStringArray)`(getPtr left, getPtr right, addr result)
proc load_PackedStringArray_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedStringArray)` = load(opNot, VariantType_PackedStringArray, VariantType_Nil)
  `==(PackedStringArray PackedStringArray)` = load(opEqual, VariantType_PackedStringArray, VariantType_PackedStringArray)
  `+(PackedStringArray PackedStringArray)` = load(opAdd, VariantType_PackedStringArray, VariantType_PackedStringArray)

var `get(PackedStringArray Int)`: PtrBuiltinMethod
var `set(PackedStringArray Int String)`: PtrBuiltinMethod
var `size(PackedStringArray)`: PtrBuiltinMethod
var `isEmpty(PackedStringArray)`: PtrBuiltinMethod
var `pushBack(PackedStringArray String)`: PtrBuiltinMethod
var `append(PackedStringArray String)`: PtrBuiltinMethod
var `appendArray(PackedStringArray PackedStringArray)`: PtrBuiltinMethod
var `removeAt(PackedStringArray Int)`: PtrBuiltinMethod
var `insert(PackedStringArray Int String)`: PtrBuiltinMethod
var `fill(PackedStringArray String)`: PtrBuiltinMethod
var `resize(PackedStringArray Int)`: PtrBuiltinMethod
var `clear(PackedStringArray)`: PtrBuiltinMethod
var `has(PackedStringArray String)`: PtrBuiltinMethod
var `reverse(PackedStringArray)`: PtrBuiltinMethod
var `slice(PackedStringArray Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedStringArray)`: PtrBuiltinMethod
var `sort(PackedStringArray)`: PtrBuiltinMethod
var `bsearch(PackedStringArray String bool)`: PtrBuiltinMethod
var `duplicate(PackedStringArray)`: PtrBuiltinMethod
var `find(PackedStringArray String Int)`: PtrBuiltinMethod
var `rfind(PackedStringArray String Int)`: PtrBuiltinMethod
var `count(PackedStringArray String)`: PtrBuiltinMethod
var `erase(PackedStringArray String)`: PtrBuiltinMethod

proc get*(self: PackedStringArray; index: Int): String =
  `get(PackedStringArray Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var PackedStringArray; index: Int; value: String): void =
  `set(PackedStringArray Int String)`.call(addr self, [getPtr index, getPtr value])
proc size*(self: PackedStringArray): Int =
  `size(PackedStringArray)`.call(addr self, [], addr result)
proc isEmpty*(self: PackedStringArray): bool =
  `isEmpty(PackedStringArray)`.call(addr self, [], addr result)
proc pushBack*(self: var PackedStringArray; value: String): bool =
  `pushBack(PackedStringArray String)`.call(addr self, [getPtr value], addr result)
proc append*(self: var PackedStringArray; value: String): bool =
  `append(PackedStringArray String)`.call(addr self, [getPtr value], addr result)
proc appendArray*(self: var PackedStringArray; array: PackedStringArray): void =
  `appendArray(PackedStringArray PackedStringArray)`.call(addr self, [getPtr array])
proc removeAt*(self: var PackedStringArray; index: Int): void =
  `removeAt(PackedStringArray Int)`.call(addr self, [getPtr index])
proc insert*(self: var PackedStringArray; atIndex: Int; value: String): Int =
  `insert(PackedStringArray Int String)`.call(addr self, [getPtr atIndex, getPtr value], addr result)
proc fill*(self: var PackedStringArray; value: String): void =
  `fill(PackedStringArray String)`.call(addr self, [getPtr value])
proc resize*(self: var PackedStringArray; newSize: Int): Int =
  `resize(PackedStringArray Int)`.call(addr self, [getPtr newSize], addr result)
proc clear*(self: var PackedStringArray): void =
  `clear(PackedStringArray)`.call(addr self, [])
proc has*(self: PackedStringArray; value: String): bool =
  `has(PackedStringArray String)`.call(addr self, [getPtr value], addr result)
proc reverse*(self: var PackedStringArray): void =
  `reverse(PackedStringArray)`.call(addr self, [])
proc slice*(self: PackedStringArray; begin: Int; `end`: Int = 2147483647): PackedStringArray =
  `slice(PackedStringArray Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc toByteArray*(self: PackedStringArray): PackedByteArray =
  `toByteArray(PackedStringArray)`.call(addr self, [], addr result)
proc sort*(self: var PackedStringArray): void =
  `sort(PackedStringArray)`.call(addr self, [])
proc bsearch*(self: var PackedStringArray; value: String; before: bool = true): Int =
  `bsearch(PackedStringArray String bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc duplicate*(self: var PackedStringArray): PackedStringArray =
  `duplicate(PackedStringArray)`.call(addr self, [], addr result)
proc find*(self: PackedStringArray; value: String; `from`: Int = 0): Int =
  `find(PackedStringArray String Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc rfind*(self: PackedStringArray; value: String; `from`: Int = -1): Int =
  `rfind(PackedStringArray String Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc count*(self: PackedStringArray; value: String): Int =
  `count(PackedStringArray String)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var PackedStringArray; value: String): bool =
  `erase(PackedStringArray String)`.call(addr self, [getPtr value], addr result)

proc load_PackedStringArray_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedStringArray Int)` = load(VariantType_PackedStringArray, "get", 2162347432)
  `set(PackedStringArray Int String)` = load(VariantType_PackedStringArray, "set", 725585539)
  `size(PackedStringArray)` = load(VariantType_PackedStringArray, "size", 3173160232)
  `isEmpty(PackedStringArray)` = load(VariantType_PackedStringArray, "is_empty", 3918633141)
  `pushBack(PackedStringArray String)` = load(VariantType_PackedStringArray, "push_back", 816187996)
  `append(PackedStringArray String)` = load(VariantType_PackedStringArray, "append", 816187996)
  `appendArray(PackedStringArray PackedStringArray)` = load(VariantType_PackedStringArray, "append_array", 1120103966)
  `removeAt(PackedStringArray Int)` = load(VariantType_PackedStringArray, "remove_at", 2823966027)
  `insert(PackedStringArray Int String)` = load(VariantType_PackedStringArray, "insert", 2432393153)
  `fill(PackedStringArray String)` = load(VariantType_PackedStringArray, "fill", 3174917410)
  `resize(PackedStringArray Int)` = load(VariantType_PackedStringArray, "resize", 848867239)
  `clear(PackedStringArray)` = load(VariantType_PackedStringArray, "clear", 3218959716)
  `has(PackedStringArray String)` = load(VariantType_PackedStringArray, "has", 2566493496)
  `reverse(PackedStringArray)` = load(VariantType_PackedStringArray, "reverse", 3218959716)
  `slice(PackedStringArray Int Int)` = load(VariantType_PackedStringArray, "slice", 2094601407)
  `toByteArray(PackedStringArray)` = load(VariantType_PackedStringArray, "to_byte_array", 247621236)
  `sort(PackedStringArray)` = load(VariantType_PackedStringArray, "sort", 3218959716)
  `bsearch(PackedStringArray String bool)` = load(VariantType_PackedStringArray, "bsearch", 328976671)
  `duplicate(PackedStringArray)` = load(VariantType_PackedStringArray, "duplicate", 2991231410)
  `find(PackedStringArray String Int)` = load(VariantType_PackedStringArray, "find", 1760645412)
  `rfind(PackedStringArray String Int)` = load(VariantType_PackedStringArray, "rfind", 1760645412)
  `count(PackedStringArray String)` = load(VariantType_PackedStringArray, "count", 2920860731)
  `erase(PackedStringArray String)` = load(VariantType_PackedStringArray, "erase", 816187996)
