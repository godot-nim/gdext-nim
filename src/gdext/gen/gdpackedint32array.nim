# `==(PackedInt32Array Variant)`
# `!=(PackedInt32Array Variant)`
var `not(PackedInt32Array)`: PtrOperatorEvaluator
# `in(PackedInt32Array Dictionary)`
# `in(PackedInt32Array Array)`
var `==(PackedInt32Array PackedInt32Array)`: PtrOperatorEvaluator
# `!=(PackedInt32Array PackedInt32Array)`
var `+(PackedInt32Array PackedInt32Array)`: PtrOperatorEvaluator
func `not`*(left: PackedInt32Array): bool = {.noSideEffect.}: `not(PackedInt32Array)`(getPtr left, nil, addr result)
func `==`*(left: PackedInt32Array; right: PackedInt32Array): bool = {.noSideEffect.}: `==(PackedInt32Array PackedInt32Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedInt32Array; right: PackedInt32Array): PackedInt32Array = {.noSideEffect.}: `+(PackedInt32Array PackedInt32Array)`(getPtr left, getPtr right, addr result)
proc load_PackedInt32Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedInt32Array)` = load(opNot, VariantType_PackedInt32Array, VariantType_Nil)
  `==(PackedInt32Array PackedInt32Array)` = load(opEqual, VariantType_PackedInt32Array, VariantType_PackedInt32Array)
  `+(PackedInt32Array PackedInt32Array)` = load(opAdd, VariantType_PackedInt32Array, VariantType_PackedInt32Array)

var `get(PackedInt32Array Int)`: PtrBuiltinMethod
var `set(PackedInt32Array Int Int)`: PtrBuiltinMethod
var `size(PackedInt32Array)`: PtrBuiltinMethod
var `isEmpty(PackedInt32Array)`: PtrBuiltinMethod
var `pushBack(PackedInt32Array Int)`: PtrBuiltinMethod
var `append(PackedInt32Array Int)`: PtrBuiltinMethod
var `appendArray(PackedInt32Array PackedInt32Array)`: PtrBuiltinMethod
var `removeAt(PackedInt32Array Int)`: PtrBuiltinMethod
var `insert(PackedInt32Array Int Int)`: PtrBuiltinMethod
var `fill(PackedInt32Array Int)`: PtrBuiltinMethod
var `resize(PackedInt32Array Int)`: PtrBuiltinMethod
var `clear(PackedInt32Array)`: PtrBuiltinMethod
var `has(PackedInt32Array Int)`: PtrBuiltinMethod
var `reverse(PackedInt32Array)`: PtrBuiltinMethod
var `slice(PackedInt32Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedInt32Array)`: PtrBuiltinMethod
var `sort(PackedInt32Array)`: PtrBuiltinMethod
var `bsearch(PackedInt32Array Int bool)`: PtrBuiltinMethod
var `duplicate(PackedInt32Array)`: PtrBuiltinMethod
var `find(PackedInt32Array Int Int)`: PtrBuiltinMethod
var `rfind(PackedInt32Array Int Int)`: PtrBuiltinMethod
var `count(PackedInt32Array Int)`: PtrBuiltinMethod

proc get*(self: PackedInt32Array; index: Int): Int =
  let argArr = [getPtr index]
  `get(PackedInt32Array Int)`(addr self, addr argArr[0], addr result, 1)
proc set*(self: PackedInt32Array; index: Int; value: Int): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedInt32Array Int Int)`(addr self, addr argArr[0], nil, 2)
proc size*(self: PackedInt32Array): Int =
  `size(PackedInt32Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedInt32Array): bool =
  `isEmpty(PackedInt32Array)`(addr self, nil, addr result, 0)
proc pushBack*(self: PackedInt32Array; value: Int): bool =
  let argArr = [getPtr value]
  `pushBack(PackedInt32Array Int)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: PackedInt32Array; value: Int): bool =
  let argArr = [getPtr value]
  `append(PackedInt32Array Int)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: PackedInt32Array; array: PackedInt32Array): void =
  let argArr = [getPtr array]
  `appendArray(PackedInt32Array PackedInt32Array)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: PackedInt32Array; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedInt32Array Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: PackedInt32Array; atIndex: Int; value: Int): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedInt32Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: PackedInt32Array; value: Int): void =
  let argArr = [getPtr value]
  `fill(PackedInt32Array Int)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: PackedInt32Array; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedInt32Array Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: PackedInt32Array): void =
  `clear(PackedInt32Array)`(addr self, nil, nil, 0)
proc has*(self: PackedInt32Array; value: Int): bool =
  let argArr = [getPtr value]
  `has(PackedInt32Array Int)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: PackedInt32Array): void =
  `reverse(PackedInt32Array)`(addr self, nil, nil, 0)
proc slice*(self: PackedInt32Array; begin: Int; `end`: Int = 2147483647): PackedInt32Array =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedInt32Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedInt32Array): PackedByteArray =
  `toByteArray(PackedInt32Array)`(addr self, nil, addr result, 0)
proc sort*(self: PackedInt32Array): void =
  `sort(PackedInt32Array)`(addr self, nil, nil, 0)
proc bsearch*(self: PackedInt32Array; value: Int; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedInt32Array Int bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: PackedInt32Array): PackedInt32Array =
  `duplicate(PackedInt32Array)`(addr self, nil, addr result, 0)
proc find*(self: PackedInt32Array; value: Int; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedInt32Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedInt32Array; value: Int; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedInt32Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedInt32Array; value: Int): Int =
  let argArr = [getPtr value]
  `count(PackedInt32Array Int)`(addr self, addr argArr[0], addr result, 1)

proc load_PackedInt32Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedInt32Array Int)` = load(VariantType_PackedInt32Array, "get", 4103005248)
  `set(PackedInt32Array Int Int)` = load(VariantType_PackedInt32Array, "set", 3638975848)
  `size(PackedInt32Array)` = load(VariantType_PackedInt32Array, "size", 3173160232)
  `isEmpty(PackedInt32Array)` = load(VariantType_PackedInt32Array, "is_empty", 3918633141)
  `pushBack(PackedInt32Array Int)` = load(VariantType_PackedInt32Array, "push_back", 694024632)
  `append(PackedInt32Array Int)` = load(VariantType_PackedInt32Array, "append", 694024632)
  `appendArray(PackedInt32Array PackedInt32Array)` = load(VariantType_PackedInt32Array, "append_array", 1087733270)
  `removeAt(PackedInt32Array Int)` = load(VariantType_PackedInt32Array, "remove_at", 2823966027)
  `insert(PackedInt32Array Int Int)` = load(VariantType_PackedInt32Array, "insert", 1487112728)
  `fill(PackedInt32Array Int)` = load(VariantType_PackedInt32Array, "fill", 2823966027)
  `resize(PackedInt32Array Int)` = load(VariantType_PackedInt32Array, "resize", 848867239)
  `clear(PackedInt32Array)` = load(VariantType_PackedInt32Array, "clear", 3218959716)
  `has(PackedInt32Array Int)` = load(VariantType_PackedInt32Array, "has", 931488181)
  `reverse(PackedInt32Array)` = load(VariantType_PackedInt32Array, "reverse", 3218959716)
  `slice(PackedInt32Array Int Int)` = load(VariantType_PackedInt32Array, "slice", 1216021098)
  `toByteArray(PackedInt32Array)` = load(VariantType_PackedInt32Array, "to_byte_array", 247621236)
  `sort(PackedInt32Array)` = load(VariantType_PackedInt32Array, "sort", 3218959716)
  `bsearch(PackedInt32Array Int bool)` = load(VariantType_PackedInt32Array, "bsearch", 3380005890)
  `duplicate(PackedInt32Array)` = load(VariantType_PackedInt32Array, "duplicate", 1997843129)
  `find(PackedInt32Array Int Int)` = load(VariantType_PackedInt32Array, "find", 2984303840)
  `rfind(PackedInt32Array Int Int)` = load(VariantType_PackedInt32Array, "rfind", 2984303840)
  `count(PackedInt32Array Int)` = load(VariantType_PackedInt32Array, "count", 4103005248)