# `==(PackedVector4Array Variant)`
# `!=(PackedVector4Array Variant)`
var `not(PackedVector4Array)`: PtrOperatorEvaluator
# `in(PackedVector4Array Dictionary)`
# `in(PackedVector4Array Array)`
var `==(PackedVector4Array PackedVector4Array)`: PtrOperatorEvaluator
# `!=(PackedVector4Array PackedVector4Array)`
var `+(PackedVector4Array PackedVector4Array)`: PtrOperatorEvaluator
func `not`*(left: PackedVector4Array): bool = {.noSideEffect.}: `not(PackedVector4Array)`(getPtr left, nil, addr result)
func `==`*(left: PackedVector4Array; right: PackedVector4Array): bool = {.noSideEffect.}: `==(PackedVector4Array PackedVector4Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedVector4Array; right: PackedVector4Array): PackedVector4Array = {.noSideEffect.}: `+(PackedVector4Array PackedVector4Array)`(getPtr left, getPtr right, addr result)
proc load_PackedVector4Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedVector4Array)` = load(opNot, VariantType_PackedVector4Array, VariantType_Nil)
  `==(PackedVector4Array PackedVector4Array)` = load(opEqual, VariantType_PackedVector4Array, VariantType_PackedVector4Array)
  `+(PackedVector4Array PackedVector4Array)` = load(opAdd, VariantType_PackedVector4Array, VariantType_PackedVector4Array)

var `get(PackedVector4Array Int)`: PtrBuiltinMethod
var `set(PackedVector4Array Int Vector4)`: PtrBuiltinMethod
var `size(PackedVector4Array)`: PtrBuiltinMethod
var `isEmpty(PackedVector4Array)`: PtrBuiltinMethod
var `pushBack(PackedVector4Array Vector4)`: PtrBuiltinMethod
var `append(PackedVector4Array Vector4)`: PtrBuiltinMethod
var `appendArray(PackedVector4Array PackedVector4Array)`: PtrBuiltinMethod
var `removeAt(PackedVector4Array Int)`: PtrBuiltinMethod
var `insert(PackedVector4Array Int Vector4)`: PtrBuiltinMethod
var `fill(PackedVector4Array Vector4)`: PtrBuiltinMethod
var `resize(PackedVector4Array Int)`: PtrBuiltinMethod
var `clear(PackedVector4Array)`: PtrBuiltinMethod
var `has(PackedVector4Array Vector4)`: PtrBuiltinMethod
var `reverse(PackedVector4Array)`: PtrBuiltinMethod
var `slice(PackedVector4Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedVector4Array)`: PtrBuiltinMethod
var `sort(PackedVector4Array)`: PtrBuiltinMethod
var `bsearch(PackedVector4Array Vector4 bool)`: PtrBuiltinMethod
var `duplicate(PackedVector4Array)`: PtrBuiltinMethod
var `find(PackedVector4Array Vector4 Int)`: PtrBuiltinMethod
var `rfind(PackedVector4Array Vector4 Int)`: PtrBuiltinMethod
var `count(PackedVector4Array Vector4)`: PtrBuiltinMethod

proc get*(self: PackedVector4Array; index: Int): Vector4 =
  let argArr = [getPtr index]
  `get(PackedVector4Array Int)`(addr self, addr argArr[0], addr result, 1)
proc set*(self: PackedVector4Array; index: Int; value: Vector4): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedVector4Array Int Vector4)`(addr self, addr argArr[0], nil, 2)
proc size*(self: PackedVector4Array): Int =
  `size(PackedVector4Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedVector4Array): bool =
  `isEmpty(PackedVector4Array)`(addr self, nil, addr result, 0)
proc pushBack*(self: PackedVector4Array; value: Vector4): bool =
  let argArr = [getPtr value]
  `pushBack(PackedVector4Array Vector4)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: PackedVector4Array; value: Vector4): bool =
  let argArr = [getPtr value]
  `append(PackedVector4Array Vector4)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: PackedVector4Array; array: PackedVector4Array): void =
  let argArr = [getPtr array]
  `appendArray(PackedVector4Array PackedVector4Array)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: PackedVector4Array; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedVector4Array Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: PackedVector4Array; atIndex: Int; value: Vector4): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedVector4Array Int Vector4)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: PackedVector4Array; value: Vector4): void =
  let argArr = [getPtr value]
  `fill(PackedVector4Array Vector4)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: PackedVector4Array; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedVector4Array Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: PackedVector4Array): void =
  `clear(PackedVector4Array)`(addr self, nil, nil, 0)
proc has*(self: PackedVector4Array; value: Vector4): bool =
  let argArr = [getPtr value]
  `has(PackedVector4Array Vector4)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: PackedVector4Array): void =
  `reverse(PackedVector4Array)`(addr self, nil, nil, 0)
proc slice*(self: PackedVector4Array; begin: Int; `end`: Int = 2147483647): PackedVector4Array =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedVector4Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedVector4Array): PackedByteArray =
  `toByteArray(PackedVector4Array)`(addr self, nil, addr result, 0)
proc sort*(self: PackedVector4Array): void =
  `sort(PackedVector4Array)`(addr self, nil, nil, 0)
proc bsearch*(self: PackedVector4Array; value: Vector4; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedVector4Array Vector4 bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: PackedVector4Array): PackedVector4Array =
  `duplicate(PackedVector4Array)`(addr self, nil, addr result, 0)
proc find*(self: PackedVector4Array; value: Vector4; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedVector4Array Vector4 Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedVector4Array; value: Vector4; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedVector4Array Vector4 Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedVector4Array; value: Vector4): Int =
  let argArr = [getPtr value]
  `count(PackedVector4Array Vector4)`(addr self, addr argArr[0], addr result, 1)

proc load_PackedVector4Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedVector4Array Int)` = load(VariantType_PackedVector4Array, "get", 1227817084)
  `set(PackedVector4Array Int Vector4)` = load(VariantType_PackedVector4Array, "set", 1350366223)
  `size(PackedVector4Array)` = load(VariantType_PackedVector4Array, "size", 3173160232)
  `isEmpty(PackedVector4Array)` = load(VariantType_PackedVector4Array, "is_empty", 3918633141)
  `pushBack(PackedVector4Array Vector4)` = load(VariantType_PackedVector4Array, "push_back", 3289167688)
  `append(PackedVector4Array Vector4)` = load(VariantType_PackedVector4Array, "append", 3289167688)
  `appendArray(PackedVector4Array PackedVector4Array)` = load(VariantType_PackedVector4Array, "append_array", 537428395)
  `removeAt(PackedVector4Array Int)` = load(VariantType_PackedVector4Array, "remove_at", 2823966027)
  `insert(PackedVector4Array Int Vector4)` = load(VariantType_PackedVector4Array, "insert", 11085009)
  `fill(PackedVector4Array Vector4)` = load(VariantType_PackedVector4Array, "fill", 3761353134)
  `resize(PackedVector4Array Int)` = load(VariantType_PackedVector4Array, "resize", 848867239)
  `clear(PackedVector4Array)` = load(VariantType_PackedVector4Array, "clear", 3218959716)
  `has(PackedVector4Array Vector4)` = load(VariantType_PackedVector4Array, "has", 88913544)
  `reverse(PackedVector4Array)` = load(VariantType_PackedVector4Array, "reverse", 3218959716)
  `slice(PackedVector4Array Int Int)` = load(VariantType_PackedVector4Array, "slice", 2942803855)
  `toByteArray(PackedVector4Array)` = load(VariantType_PackedVector4Array, "to_byte_array", 247621236)
  `sort(PackedVector4Array)` = load(VariantType_PackedVector4Array, "sort", 3218959716)
  `bsearch(PackedVector4Array Vector4 bool)` = load(VariantType_PackedVector4Array, "bsearch", 735671678)
  `duplicate(PackedVector4Array)` = load(VariantType_PackedVector4Array, "duplicate", 3186305013)
  `find(PackedVector4Array Vector4 Int)` = load(VariantType_PackedVector4Array, "find", 3091171314)
  `rfind(PackedVector4Array Vector4 Int)` = load(VariantType_PackedVector4Array, "rfind", 3091171314)
  `count(PackedVector4Array Vector4)` = load(VariantType_PackedVector4Array, "count", 3956594488)