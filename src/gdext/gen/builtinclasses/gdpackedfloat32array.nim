{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

proc `[]`*(self: PackedFloat32Array; index: int): PackedFloat32Array.Item = self.data_unsafe[index]
proc `[]`*(self: var PackedFloat32Array; index: int): var PackedFloat32Array.Item = self.data_unsafe[index]
proc `[]=`*(self: var PackedFloat32Array; index: int; value: PackedFloat32Array.Item) = self.data_unsafe[index] = value

var `==(PackedFloat32Array Variant)`: PtrOperatorEvaluator
var `!=(PackedFloat32Array Variant)`: PtrOperatorEvaluator
var `not(PackedFloat32Array)`: PtrOperatorEvaluator
var `contains(PackedFloat32Array Dictionary)`: PtrOperatorEvaluator
var `contains(PackedFloat32Array Array)`: PtrOperatorEvaluator
var `==(PackedFloat32Array PackedFloat32Array)`: PtrOperatorEvaluator
var `!=(PackedFloat32Array PackedFloat32Array)`: PtrOperatorEvaluator
var `+(PackedFloat32Array PackedFloat32Array)`: PtrOperatorEvaluator
proc `==`*(left: PackedFloat32Array; right: Variant): bool = `==(PackedFloat32Array Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedFloat32Array; right: Variant): bool = `!=(PackedFloat32Array Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: PackedFloat32Array): bool = `not(PackedFloat32Array)`(getPtr left, nil, addr result)
proc contains*(left: Dictionary; right: PackedFloat32Array): bool = `contains(PackedFloat32Array Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: PackedFloat32Array): bool = `contains(PackedFloat32Array Array)`(getPtr right, getPtr left, addr result)
proc `==`*(left: PackedFloat32Array; right: PackedFloat32Array): bool = `==(PackedFloat32Array PackedFloat32Array)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedFloat32Array; right: PackedFloat32Array): bool = `!=(PackedFloat32Array PackedFloat32Array)`(getPtr left, getPtr right, addr result)
proc `+`*(left: PackedFloat32Array; right: PackedFloat32Array): PackedFloat32Array = `+(PackedFloat32Array PackedFloat32Array)`(getPtr left, getPtr right, addr result)
proc load_PackedFloat32Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(PackedFloat32Array Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedFloat32Array, VariantType_Nil)
  `!=(PackedFloat32Array Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedFloat32Array, VariantType_Nil)
  `not(PackedFloat32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_PackedFloat32Array, VariantType_Nil)
  `contains(PackedFloat32Array Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedFloat32Array, VariantType_Dictionary)
  `contains(PackedFloat32Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedFloat32Array, VariantType_Array)
  `==(PackedFloat32Array PackedFloat32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedFloat32Array, VariantType_PackedFloat32Array)
  `!=(PackedFloat32Array PackedFloat32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedFloat32Array, VariantType_PackedFloat32Array)
  `+(PackedFloat32Array PackedFloat32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_PackedFloat32Array, VariantType_PackedFloat32Array)

var `size(PackedFloat32Array)`: PtrBuiltinMethod
var `isEmpty(PackedFloat32Array)`: PtrBuiltinMethod
var `set(PackedFloat32Array Int Float)`: PtrBuiltinMethod
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

proc size*(self: PackedFloat32Array): Int =
  `size(PackedFloat32Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedFloat32Array): bool =
  `isEmpty(PackedFloat32Array)`(addr self, nil, addr result, 0)
proc set*(self: var PackedFloat32Array; index: Int; value: Float): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedFloat32Array Int Float)`(addr self, addr argArr[0], nil, 2)
proc pushBack*(self: var PackedFloat32Array; value: Float): bool =
  let argArr = [getPtr value]
  `pushBack(PackedFloat32Array Float)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: var PackedFloat32Array; value: Float): bool =
  let argArr = [getPtr value]
  `append(PackedFloat32Array Float)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: var PackedFloat32Array; array: PackedFloat32Array): void =
  let argArr = [getPtr array]
  `appendArray(PackedFloat32Array PackedFloat32Array)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: var PackedFloat32Array; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedFloat32Array Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: var PackedFloat32Array; atIndex: Int; value: Float): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedFloat32Array Int Float)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: var PackedFloat32Array; value: Float): void =
  let argArr = [getPtr value]
  `fill(PackedFloat32Array Float)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: var PackedFloat32Array; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedFloat32Array Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: var PackedFloat32Array): void =
  `clear(PackedFloat32Array)`(addr self, nil, nil, 0)
proc has*(self: PackedFloat32Array; value: Float): bool =
  let argArr = [getPtr value]
  `has(PackedFloat32Array Float)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: var PackedFloat32Array): void =
  `reverse(PackedFloat32Array)`(addr self, nil, nil, 0)
proc slice*(self: PackedFloat32Array; begin: Int; `end`: Int = 2147483647): PackedFloat32Array =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedFloat32Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedFloat32Array): PackedByteArray =
  `toByteArray(PackedFloat32Array)`(addr self, nil, addr result, 0)
proc sort*(self: var PackedFloat32Array): void =
  `sort(PackedFloat32Array)`(addr self, nil, nil, 0)
proc bsearch*(self: var PackedFloat32Array; value: Float; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedFloat32Array Float bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: var PackedFloat32Array): PackedFloat32Array =
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
  `size(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "size", 3173160232)
  `isEmpty(PackedFloat32Array)` = load(VariantType_PackedFloat32Array, "is_empty", 3918633141)
  `set(PackedFloat32Array Int Float)` = load(VariantType_PackedFloat32Array, "set", 1113000516)
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