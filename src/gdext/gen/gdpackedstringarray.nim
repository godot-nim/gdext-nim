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

proc get*(self: PackedStringArray; index: Int): String =
  let argArr = [getPtr index]
  `get(PackedStringArray Int)`(addr self, addr argArr[0], addr result, 1)
proc set*(self: PackedStringArray; index: Int; value: String): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedStringArray Int String)`(addr self, addr argArr[0], nil, 2)
proc size*(self: PackedStringArray): Int =
  `size(PackedStringArray)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedStringArray): bool =
  `isEmpty(PackedStringArray)`(addr self, nil, addr result, 0)
proc pushBack*(self: PackedStringArray; value: String): bool =
  let argArr = [getPtr value]
  `pushBack(PackedStringArray String)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: PackedStringArray; value: String): bool =
  let argArr = [getPtr value]
  `append(PackedStringArray String)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: PackedStringArray; array: PackedStringArray): void =
  let argArr = [getPtr array]
  `appendArray(PackedStringArray PackedStringArray)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: PackedStringArray; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedStringArray Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: PackedStringArray; atIndex: Int; value: String): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedStringArray Int String)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: PackedStringArray; value: String): void =
  let argArr = [getPtr value]
  `fill(PackedStringArray String)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: PackedStringArray; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedStringArray Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: PackedStringArray): void =
  `clear(PackedStringArray)`(addr self, nil, nil, 0)
proc has*(self: PackedStringArray; value: String): bool =
  let argArr = [getPtr value]
  `has(PackedStringArray String)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: PackedStringArray): void =
  `reverse(PackedStringArray)`(addr self, nil, nil, 0)
proc slice*(self: PackedStringArray; begin: Int; `end`: Int = 2147483647): PackedStringArray =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedStringArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedStringArray): PackedByteArray =
  `toByteArray(PackedStringArray)`(addr self, nil, addr result, 0)
proc sort*(self: PackedStringArray): void =
  `sort(PackedStringArray)`(addr self, nil, nil, 0)
proc bsearch*(self: PackedStringArray; value: String; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedStringArray String bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: PackedStringArray): PackedStringArray =
  `duplicate(PackedStringArray)`(addr self, nil, addr result, 0)
proc find*(self: PackedStringArray; value: String; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedStringArray String Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedStringArray; value: String; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedStringArray String Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedStringArray; value: String): Int =
  let argArr = [getPtr value]
  `count(PackedStringArray String)`(addr self, addr argArr[0], addr result, 1)

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