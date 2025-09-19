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
  let argArr = [getPtr index]
  `get(PackedInt64Array Int)`(addr self, addr argArr[0], addr result, 1)
proc set*(self: var PackedInt64Array; index: Int; value: Int): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedInt64Array Int Int)`(addr self, addr argArr[0], nil, 2)
proc size*(self: PackedInt64Array): Int =
  `size(PackedInt64Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedInt64Array): bool =
  `isEmpty(PackedInt64Array)`(addr self, nil, addr result, 0)
proc pushBack*(self: var PackedInt64Array; value: Int): bool =
  let argArr = [getPtr value]
  `pushBack(PackedInt64Array Int)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: var PackedInt64Array; value: Int): bool =
  let argArr = [getPtr value]
  `append(PackedInt64Array Int)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: var PackedInt64Array; array: PackedInt64Array): void =
  let argArr = [getPtr array]
  `appendArray(PackedInt64Array PackedInt64Array)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: var PackedInt64Array; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedInt64Array Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: var PackedInt64Array; atIndex: Int; value: Int): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedInt64Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: var PackedInt64Array; value: Int): void =
  let argArr = [getPtr value]
  `fill(PackedInt64Array Int)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: var PackedInt64Array; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedInt64Array Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: var PackedInt64Array): void =
  `clear(PackedInt64Array)`(addr self, nil, nil, 0)
proc has*(self: PackedInt64Array; value: Int): bool =
  let argArr = [getPtr value]
  `has(PackedInt64Array Int)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: var PackedInt64Array): void =
  `reverse(PackedInt64Array)`(addr self, nil, nil, 0)
proc slice*(self: PackedInt64Array; begin: Int; `end`: Int = 2147483647): PackedInt64Array =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedInt64Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedInt64Array): PackedByteArray =
  `toByteArray(PackedInt64Array)`(addr self, nil, addr result, 0)
proc sort*(self: var PackedInt64Array): void =
  `sort(PackedInt64Array)`(addr self, nil, nil, 0)
proc bsearch*(self: var PackedInt64Array; value: Int; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedInt64Array Int bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: var PackedInt64Array): PackedInt64Array =
  `duplicate(PackedInt64Array)`(addr self, nil, addr result, 0)
proc find*(self: PackedInt64Array; value: Int; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedInt64Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedInt64Array; value: Int; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedInt64Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedInt64Array; value: Int): Int =
  let argArr = [getPtr value]
  `count(PackedInt64Array Int)`(addr self, addr argArr[0], addr result, 1)
proc erase*(self: var PackedInt64Array; value: Int): bool =
  let argArr = [getPtr value]
  `erase(PackedInt64Array Int)`(addr self, addr argArr[0], addr result, 1)

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
  `bsearch(PackedInt64Array Int bool)` = load(VariantType_PackedInt64Array, "bsearch", 3380005890)
  `duplicate(PackedInt64Array)` = load(VariantType_PackedInt64Array, "duplicate", 2376370016)
  `find(PackedInt64Array Int Int)` = load(VariantType_PackedInt64Array, "find", 2984303840)
  `rfind(PackedInt64Array Int Int)` = load(VariantType_PackedInt64Array, "rfind", 2984303840)
  `count(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "count", 4103005248)
  `erase(PackedInt64Array Int)` = load(VariantType_PackedInt64Array, "erase", 694024632)
