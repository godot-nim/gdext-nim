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

proc get*(self: PackedFloat64Array; index: Int): Float =
  let argArr = [getPtr index]
  `get(PackedFloat64Array Int)`(addr self, addr argArr[0], addr result, 1)
proc set*(self: PackedFloat64Array; index: Int; value: Float): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedFloat64Array Int Float)`(addr self, addr argArr[0], nil, 2)
proc size*(self: PackedFloat64Array): Int =
  `size(PackedFloat64Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedFloat64Array): bool =
  `isEmpty(PackedFloat64Array)`(addr self, nil, addr result, 0)
proc pushBack*(self: PackedFloat64Array; value: Float): bool =
  let argArr = [getPtr value]
  `pushBack(PackedFloat64Array Float)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: PackedFloat64Array; value: Float): bool =
  let argArr = [getPtr value]
  `append(PackedFloat64Array Float)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: PackedFloat64Array; array: PackedFloat64Array): void =
  let argArr = [getPtr array]
  `appendArray(PackedFloat64Array PackedFloat64Array)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: PackedFloat64Array; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedFloat64Array Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: PackedFloat64Array; atIndex: Int; value: Float): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedFloat64Array Int Float)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: PackedFloat64Array; value: Float): void =
  let argArr = [getPtr value]
  `fill(PackedFloat64Array Float)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: PackedFloat64Array; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedFloat64Array Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: PackedFloat64Array): void =
  `clear(PackedFloat64Array)`(addr self, nil, nil, 0)
proc has*(self: PackedFloat64Array; value: Float): bool =
  let argArr = [getPtr value]
  `has(PackedFloat64Array Float)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: PackedFloat64Array): void =
  `reverse(PackedFloat64Array)`(addr self, nil, nil, 0)
proc slice*(self: PackedFloat64Array; begin: Int; `end`: Int = 2147483647): PackedFloat64Array =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedFloat64Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedFloat64Array): PackedByteArray =
  `toByteArray(PackedFloat64Array)`(addr self, nil, addr result, 0)
proc sort*(self: PackedFloat64Array): void =
  `sort(PackedFloat64Array)`(addr self, nil, nil, 0)
proc bsearch*(self: PackedFloat64Array; value: Float; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedFloat64Array Float bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: PackedFloat64Array): PackedFloat64Array =
  `duplicate(PackedFloat64Array)`(addr self, nil, addr result, 0)
proc find*(self: PackedFloat64Array; value: Float; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedFloat64Array Float Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedFloat64Array; value: Float; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedFloat64Array Float Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedFloat64Array; value: Float): Int =
  let argArr = [getPtr value]
  `count(PackedFloat64Array Float)`(addr self, addr argArr[0], addr result, 1)

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
  `bsearch(PackedFloat64Array Float bool)` = load(VariantType_PackedFloat64Array, "bsearch", 1188816338)
  `duplicate(PackedFloat64Array)` = load(VariantType_PackedFloat64Array, "duplicate", 949266573)
  `find(PackedFloat64Array Float Int)` = load(VariantType_PackedFloat64Array, "find", 1343150241)
  `rfind(PackedFloat64Array Float Int)` = load(VariantType_PackedFloat64Array, "rfind", 1343150241)
  `count(PackedFloat64Array Float)` = load(VariantType_PackedFloat64Array, "count", 2859915090)