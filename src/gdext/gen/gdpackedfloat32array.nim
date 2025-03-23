# `==(PackedFloat32Array Variant)`
# `!=(PackedFloat32Array Variant)`
var `not(PackedFloat32Array)`: PtrOperatorEvaluator
# `in(PackedFloat32Array Dictionary)`
# `in(PackedFloat32Array Array)`
var `==(PackedFloat32Array PackedFloat32Array)`: PtrOperatorEvaluator
# `!=(PackedFloat32Array PackedFloat32Array)`
var `+(PackedFloat32Array PackedFloat32Array)`: PtrOperatorEvaluator
func `not`*(left: PackedFloat32Array): bool = {.noSideEffect.}: `not(PackedFloat32Array)`(getPtr left, nil, addr result)
func `==`*(left: PackedFloat32Array; right: PackedFloat32Array): bool = {.noSideEffect.}: `==(PackedFloat32Array PackedFloat32Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedFloat32Array; right: PackedFloat32Array): PackedFloat32Array = {.noSideEffect.}: `+(PackedFloat32Array PackedFloat32Array)`(getPtr left, getPtr right, addr result)
proc load_PackedFloat32Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedFloat32Array)` = load(opNot, VariantType_PackedFloat32Array, VariantType_Nil)
  `==(PackedFloat32Array PackedFloat32Array)` = load(opEqual, VariantType_PackedFloat32Array, VariantType_PackedFloat32Array)
  `+(PackedFloat32Array PackedFloat32Array)` = load(opAdd, VariantType_PackedFloat32Array, VariantType_PackedFloat32Array)

var `get(PackedFloat32Array Int)`: PtrBuiltinMethod
var `set(PackedFloat32Array Int Float)`: PtrBuiltinMethod
var `size(PackedFloat32Array)`: PtrBuiltinMethod
var `isEmpty(PackedFloat32Array)`: PtrBuiltinMethod
var `pushBack(PackedFloat32Array Float)`: PtrBuiltinMethod
var `append(PackedFloat32Array Float)`: PtrBuiltinMethod
var `appendArray(PackedFloat32Array PackedFloat32Array)`: PtrBuiltinMethod
var `removeAt(PackedFloat32Array Int)`: PtrBuiltinMethod
var `insert(PackedFloat32Array Int Float)`: PtrBuiltinMethod
var `fill(PackedFloat32Array Float)`: PtrBuiltinMethod
var `resize(PackedFloat32Array Int)`: PtrBuiltinMethod
var `clear(PackedFloat32Array)`: PtrBuiltinMethod
var `has(PackedFloat32Array Float)`: PtrBuiltinMethod
var `reverse(PackedFloat32Array)`: PtrBuiltinMethod
var `slice(PackedFloat32Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedFloat32Array)`: PtrBuiltinMethod
var `sort(PackedFloat32Array)`: PtrBuiltinMethod
var `bsearch(PackedFloat32Array Float bool)`: PtrBuiltinMethod
var `duplicate(PackedFloat32Array)`: PtrBuiltinMethod
var `find(PackedFloat32Array Float Int)`: PtrBuiltinMethod
var `rfind(PackedFloat32Array Float Int)`: PtrBuiltinMethod
var `count(PackedFloat32Array Float)`: PtrBuiltinMethod

proc get*(self: PackedFloat32Array; index: Int): Float =
  let argArr = [getPtr index]
  `get(PackedFloat32Array Int)`(addr self, addr argArr[0], addr result, 1)
proc set*(self: PackedFloat32Array; index: Int; value: Float): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedFloat32Array Int Float)`(addr self, addr argArr[0], nil, 2)
proc size*(self: PackedFloat32Array): Int =
  `size(PackedFloat32Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedFloat32Array): bool =
  `isEmpty(PackedFloat32Array)`(addr self, nil, addr result, 0)
proc pushBack*(self: PackedFloat32Array; value: Float): bool =
  let argArr = [getPtr value]
  `pushBack(PackedFloat32Array Float)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: PackedFloat32Array; value: Float): bool =
  let argArr = [getPtr value]
  `append(PackedFloat32Array Float)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: PackedFloat32Array; array: PackedFloat32Array): void =
  let argArr = [getPtr array]
  `appendArray(PackedFloat32Array PackedFloat32Array)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: PackedFloat32Array; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedFloat32Array Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: PackedFloat32Array; atIndex: Int; value: Float): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedFloat32Array Int Float)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: PackedFloat32Array; value: Float): void =
  let argArr = [getPtr value]
  `fill(PackedFloat32Array Float)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: PackedFloat32Array; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedFloat32Array Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: PackedFloat32Array): void =
  `clear(PackedFloat32Array)`(addr self, nil, nil, 0)
proc has*(self: PackedFloat32Array; value: Float): bool =
  let argArr = [getPtr value]
  `has(PackedFloat32Array Float)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: PackedFloat32Array): void =
  `reverse(PackedFloat32Array)`(addr self, nil, nil, 0)
proc slice*(self: PackedFloat32Array; begin: Int; `end`: Int = 2147483647): PackedFloat32Array =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedFloat32Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedFloat32Array): PackedByteArray =
  `toByteArray(PackedFloat32Array)`(addr self, nil, addr result, 0)
proc sort*(self: PackedFloat32Array): void =
  `sort(PackedFloat32Array)`(addr self, nil, nil, 0)
proc bsearch*(self: PackedFloat32Array; value: Float; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedFloat32Array Float bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: PackedFloat32Array): PackedFloat32Array =
  `duplicate(PackedFloat32Array)`(addr self, nil, addr result, 0)
proc find*(self: PackedFloat32Array; value: Float; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedFloat32Array Float Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedFloat32Array; value: Float; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedFloat32Array Float Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedFloat32Array; value: Float): Int =
  let argArr = [getPtr value]
  `count(PackedFloat32Array Float)`(addr self, addr argArr[0], addr result, 1)

proc load_PackedFloat32Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedFloat32Array Int)` = load(VariantType_PackedFloat32Array, "get", 1401583798)
  `set(PackedFloat32Array Int Float)` = load(VariantType_PackedFloat32Array, "set", 1113000516)
  `size(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "size", 3173160232)
  `isEmpty(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "is_empty", 3918633141)
  `pushBack(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "push_back", 4094791666)
  `append(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "append", 4094791666)
  `appendArray(PackedFloat32Array PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "append_array", 2981316639)
  `removeAt(PackedFloat32Array Int)` = load(VariantType_PackedFloat32Array, "remove_at", 2823966027)
  `insert(PackedFloat32Array Int Float)` = load(VariantType_PackedFloat32Array, "insert", 1379903876)
  `fill(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "fill", 833936903)
  `resize(PackedFloat32Array Int)` = load(VariantType_PackedFloat32Array, "resize", 848867239)
  `clear(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "clear", 3218959716)
  `has(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "has", 1296369134)
  `reverse(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "reverse", 3218959716)
  `slice(PackedFloat32Array Int Int)` = load(VariantType_PackedFloat32Array, "slice", 1418229160)
  `toByteArray(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "to_byte_array", 247621236)
  `sort(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "sort", 3218959716)
  `bsearch(PackedFloat32Array Float bool)` = load(VariantType_PackedFloat32Array, "bsearch", 1188816338)
  `duplicate(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "duplicate", 831114784)
  `find(PackedFloat32Array Float Int)` = load(VariantType_PackedFloat32Array, "find", 1343150241)
  `rfind(PackedFloat32Array Float Int)` = load(VariantType_PackedFloat32Array, "rfind", 1343150241)
  `count(PackedFloat32Array Float)` = load(VariantType_PackedFloat32Array, "count", 2859915090)