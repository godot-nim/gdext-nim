{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

proc `[]`*(self: PackedVector3Array; index: int): PackedVector3Array.Item = self.data_unsafe[index]
proc `[]`*(self: var PackedVector3Array; index: int): var PackedVector3Array.Item = self.data_unsafe[index]
proc `[]=`*(self: var PackedVector3Array; index: int; value: PackedVector3Array.Item) = self.data_unsafe[index] = value

var `==(PackedVector3Array Variant)`: PtrOperatorEvaluator
var `!=(PackedVector3Array Variant)`: PtrOperatorEvaluator
var `not(PackedVector3Array)`: PtrOperatorEvaluator
var `*(PackedVector3Array Transform3D)`: PtrOperatorEvaluator
var `contains(PackedVector3Array Dictionary)`: PtrOperatorEvaluator
var `contains(PackedVector3Array Array)`: PtrOperatorEvaluator
var `==(PackedVector3Array PackedVector3Array)`: PtrOperatorEvaluator
var `!=(PackedVector3Array PackedVector3Array)`: PtrOperatorEvaluator
var `+(PackedVector3Array PackedVector3Array)`: PtrOperatorEvaluator
proc `==`*(left: PackedVector3Array; right: Variant): bool = `==(PackedVector3Array Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedVector3Array; right: Variant): bool = `!=(PackedVector3Array Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: PackedVector3Array): bool = `not(PackedVector3Array)`(getPtr left, nil, addr result)
proc `*`*(left: PackedVector3Array; right: Transform3D): PackedVector3Array = `*(PackedVector3Array Transform3D)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: PackedVector3Array): bool = `contains(PackedVector3Array Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: PackedVector3Array): bool = `contains(PackedVector3Array Array)`(getPtr right, getPtr left, addr result)
proc `==`*(left: PackedVector3Array; right: PackedVector3Array): bool = `==(PackedVector3Array PackedVector3Array)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedVector3Array; right: PackedVector3Array): bool = `!=(PackedVector3Array PackedVector3Array)`(getPtr left, getPtr right, addr result)
proc `+`*(left: PackedVector3Array; right: PackedVector3Array): PackedVector3Array = `+(PackedVector3Array PackedVector3Array)`(getPtr left, getPtr right, addr result)
proc load_PackedVector3Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(PackedVector3Array Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedVector3Array, VariantType_Nil)
  `!=(PackedVector3Array Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedVector3Array, VariantType_Nil)
  `not(PackedVector3Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_PackedVector3Array, VariantType_Nil)
  `*(PackedVector3Array Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_PackedVector3Array, VariantType_Transform3D)
  `contains(PackedVector3Array Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedVector3Array, VariantType_Dictionary)
  `contains(PackedVector3Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedVector3Array, VariantType_Array)
  `==(PackedVector3Array PackedVector3Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedVector3Array, VariantType_PackedVector3Array)
  `!=(PackedVector3Array PackedVector3Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedVector3Array, VariantType_PackedVector3Array)
  `+(PackedVector3Array PackedVector3Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_PackedVector3Array, VariantType_PackedVector3Array)

var `size(PackedVector3Array)`: PtrBuiltinMethod
var `isEmpty(PackedVector3Array)`: PtrBuiltinMethod
var `set(PackedVector3Array Int Vector3)`: PtrBuiltinMethod
var `pushBack(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `append(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `appendArray(PackedVector3Array PackedVector3Array)`: PtrBuiltinMethod
var `removeAt(PackedVector3Array Int)`: PtrBuiltinMethod
var `insert(PackedVector3Array Int Vector3)`: PtrBuiltinMethod
var `fill(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `resize(PackedVector3Array Int)`: PtrBuiltinMethod
var `clear(PackedVector3Array)`: PtrBuiltinMethod
var `has(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `reverse(PackedVector3Array)`: PtrBuiltinMethod
var `slice(PackedVector3Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedVector3Array)`: PtrBuiltinMethod
var `sort(PackedVector3Array)`: PtrBuiltinMethod
var `bsearch(PackedVector3Array Vector3 bool)`: PtrBuiltinMethod
var `duplicate(PackedVector3Array)`: PtrBuiltinMethod
var `find(PackedVector3Array Vector3 Int)`: PtrBuiltinMethod
var `rfind(PackedVector3Array Vector3 Int)`: PtrBuiltinMethod
var `count(PackedVector3Array Vector3)`: PtrBuiltinMethod

proc size*(self: PackedVector3Array): Int =
  `size(PackedVector3Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedVector3Array): bool =
  `isEmpty(PackedVector3Array)`(addr self, nil, addr result, 0)
proc set*(self: var PackedVector3Array; index: Int; value: Vector3): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedVector3Array Int Vector3)`(addr self, addr argArr[0], nil, 2)
proc pushBack*(self: var PackedVector3Array; value: Vector3): bool =
  let argArr = [getPtr value]
  `pushBack(PackedVector3Array Vector3)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: var PackedVector3Array; value: Vector3): bool =
  let argArr = [getPtr value]
  `append(PackedVector3Array Vector3)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: var PackedVector3Array; array: PackedVector3Array): void =
  let argArr = [getPtr array]
  `appendArray(PackedVector3Array PackedVector3Array)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: var PackedVector3Array; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedVector3Array Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: var PackedVector3Array; atIndex: Int; value: Vector3): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedVector3Array Int Vector3)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: var PackedVector3Array; value: Vector3): void =
  let argArr = [getPtr value]
  `fill(PackedVector3Array Vector3)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: var PackedVector3Array; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedVector3Array Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: var PackedVector3Array): void =
  `clear(PackedVector3Array)`(addr self, nil, nil, 0)
proc has*(self: PackedVector3Array; value: Vector3): bool =
  let argArr = [getPtr value]
  `has(PackedVector3Array Vector3)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: var PackedVector3Array): void =
  `reverse(PackedVector3Array)`(addr self, nil, nil, 0)
proc slice*(self: PackedVector3Array; begin: Int; `end`: Int = 2147483647): PackedVector3Array =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedVector3Array Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedVector3Array): PackedByteArray =
  `toByteArray(PackedVector3Array)`(addr self, nil, addr result, 0)
proc sort*(self: var PackedVector3Array): void =
  `sort(PackedVector3Array)`(addr self, nil, nil, 0)
proc bsearch*(self: var PackedVector3Array; value: Vector3; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedVector3Array Vector3 bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: var PackedVector3Array): PackedVector3Array =
  `duplicate(PackedVector3Array)`(addr self, nil, addr result, 0)
proc find*(self: PackedVector3Array; value: Vector3; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedVector3Array Vector3 Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedVector3Array; value: Vector3; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedVector3Array Vector3 Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedVector3Array; value: Vector3): Int =
  let argArr = [getPtr value]
  `count(PackedVector3Array Vector3)`(addr self, addr argArr[0], addr result, 1)

proc load_PackedVector3Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `size(PackedVector3Array)` = load(VariantType_PackedVector3Array, "size", 3173160232)
  `isEmpty(PackedVector3Array)` = load(VariantType_PackedVector3Array, "is_empty", 3918633141)
  `set(PackedVector3Array Int Vector3)` = load(VariantType_PackedVector3Array, "set", 3975343409)
  `pushBack(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "push_back", 3295363524)
  `append(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "append", 3295363524)
  `appendArray(PackedVector3Array PackedVector3Array)` = load(VariantType_PackedVector3Array, "append_array", 203538016)
  `removeAt(PackedVector3Array Int)` = load(VariantType_PackedVector3Array, "remove_at", 2823966027)
  `insert(PackedVector3Array Int Vector3)` = load(VariantType_PackedVector3Array, "insert", 3892262309)
  `fill(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "fill", 3726392409)
  `resize(PackedVector3Array Int)` = load(VariantType_PackedVector3Array, "resize", 848867239)
  `clear(PackedVector3Array)` = load(VariantType_PackedVector3Array, "clear", 3218959716)
  `has(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "has", 1749054343)
  `reverse(PackedVector3Array)` = load(VariantType_PackedVector3Array, "reverse", 3218959716)
  `slice(PackedVector3Array Int Int)` = load(VariantType_PackedVector3Array, "slice", 2086131305)
  `toByteArray(PackedVector3Array)` = load(VariantType_PackedVector3Array, "to_byte_array", 247621236)
  `sort(PackedVector3Array)` = load(VariantType_PackedVector3Array, "sort", 3218959716)
  `bsearch(PackedVector3Array Vector3 bool)` = load(VariantType_PackedVector3Array, "bsearch", 219263630)
  `duplicate(PackedVector3Array)` = load(VariantType_PackedVector3Array, "duplicate", 2754175465)
  `find(PackedVector3Array Vector3 Int)` = load(VariantType_PackedVector3Array, "find", 3718155780)
  `rfind(PackedVector3Array Vector3 Int)` = load(VariantType_PackedVector3Array, "rfind", 3718155780)
  `count(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "count", 194580386)