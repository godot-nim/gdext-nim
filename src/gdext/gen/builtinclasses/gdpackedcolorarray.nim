{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

proc `[]`*(self: PackedColorArray; index: int): PackedColorArray.Item = self.data_unsafe[index]
proc `[]`*(self: var PackedColorArray; index: int): var PackedColorArray.Item = self.data_unsafe[index]
proc `[]=`*(self: var PackedColorArray; index: int; value: PackedColorArray.Item) = self.data_unsafe[index] = value

var `==(PackedColorArray Variant)`: PtrOperatorEvaluator
var `!=(PackedColorArray Variant)`: PtrOperatorEvaluator
var `not(PackedColorArray)`: PtrOperatorEvaluator
var `contains(PackedColorArray Dictionary)`: PtrOperatorEvaluator
var `contains(PackedColorArray Array)`: PtrOperatorEvaluator
var `==(PackedColorArray PackedColorArray)`: PtrOperatorEvaluator
var `!=(PackedColorArray PackedColorArray)`: PtrOperatorEvaluator
var `+(PackedColorArray PackedColorArray)`: PtrOperatorEvaluator
proc `==`*(left: PackedColorArray; right: Variant): bool = `==(PackedColorArray Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedColorArray; right: Variant): bool = `!=(PackedColorArray Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: PackedColorArray): bool = `not(PackedColorArray)`(getPtr left, nil, addr result)
proc contains*(left: Dictionary; right: PackedColorArray): bool = `contains(PackedColorArray Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: PackedColorArray): bool = `contains(PackedColorArray Array)`(getPtr right, getPtr left, addr result)
proc `==`*(left: PackedColorArray; right: PackedColorArray): bool = `==(PackedColorArray PackedColorArray)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedColorArray; right: PackedColorArray): bool = `!=(PackedColorArray PackedColorArray)`(getPtr left, getPtr right, addr result)
proc `+`*(left: PackedColorArray; right: PackedColorArray): PackedColorArray = `+(PackedColorArray PackedColorArray)`(getPtr left, getPtr right, addr result)
proc load_PackedColorArray_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(PackedColorArray Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedColorArray, VariantType_Nil)
  `!=(PackedColorArray Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedColorArray, VariantType_Nil)
  `not(PackedColorArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_PackedColorArray, VariantType_Nil)
  `contains(PackedColorArray Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedColorArray, VariantType_Dictionary)
  `contains(PackedColorArray Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedColorArray, VariantType_Array)
  `==(PackedColorArray PackedColorArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedColorArray, VariantType_PackedColorArray)
  `!=(PackedColorArray PackedColorArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedColorArray, VariantType_PackedColorArray)
  `+(PackedColorArray PackedColorArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_PackedColorArray, VariantType_PackedColorArray)

var `size(PackedColorArray)`: PtrBuiltinMethod
var `isEmpty(PackedColorArray)`: PtrBuiltinMethod
var `set(PackedColorArray Int Color)`: PtrBuiltinMethod
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

proc size*(self: PackedColorArray): Int =
  `size(PackedColorArray)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedColorArray): bool =
  `isEmpty(PackedColorArray)`(addr self, nil, addr result, 0)
proc set*(self: var PackedColorArray; index: Int; value: Color): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedColorArray Int Color)`(addr self, addr argArr[0], nil, 2)
proc pushBack*(self: var PackedColorArray; value: Color): bool =
  let argArr = [getPtr value]
  `pushBack(PackedColorArray Color)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: var PackedColorArray; value: Color): bool =
  let argArr = [getPtr value]
  `append(PackedColorArray Color)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: var PackedColorArray; array: PackedColorArray): void =
  let argArr = [getPtr array]
  `appendArray(PackedColorArray PackedColorArray)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: var PackedColorArray; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedColorArray Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: var PackedColorArray; atIndex: Int; value: Color): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedColorArray Int Color)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: var PackedColorArray; value: Color): void =
  let argArr = [getPtr value]
  `fill(PackedColorArray Color)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: var PackedColorArray; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedColorArray Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: var PackedColorArray): void =
  `clear(PackedColorArray)`(addr self, nil, nil, 0)
proc has*(self: PackedColorArray; value: Color): bool =
  let argArr = [getPtr value]
  `has(PackedColorArray Color)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: var PackedColorArray): void =
  `reverse(PackedColorArray)`(addr self, nil, nil, 0)
proc slice*(self: PackedColorArray; begin: Int; `end`: Int = 2147483647): PackedColorArray =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedColorArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedColorArray): PackedByteArray =
  `toByteArray(PackedColorArray)`(addr self, nil, addr result, 0)
proc sort*(self: var PackedColorArray): void =
  `sort(PackedColorArray)`(addr self, nil, nil, 0)
proc bsearch*(self: var PackedColorArray; value: Color; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedColorArray Color bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: var PackedColorArray): PackedColorArray =
  `duplicate(PackedColorArray)`(addr self, nil, addr result, 0)
proc find*(self: PackedColorArray; value: Color; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedColorArray Color Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedColorArray; value: Color; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedColorArray Color Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedColorArray; value: Color): Int =
  let argArr = [getPtr value]
  `count(PackedColorArray Color)`(addr self, addr argArr[0], addr result, 1)

proc load_PackedColorArray_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `size(PackedColorArray)` = load(VariantType_PackedColorArray, "size", 3173160232)
  `isEmpty(PackedColorArray)` = load(VariantType_PackedColorArray, "is_empty", 3918633141)
  `set(PackedColorArray Int Color)` = load(VariantType_PackedColorArray, "set", 1444096570)
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
  `bsearch(PackedColorArray Color bool)` = load(VariantType_PackedColorArray, "bsearch", 314143821)
  `duplicate(PackedColorArray)` = load(VariantType_PackedColorArray, "duplicate", 1011903421)
  `find(PackedColorArray Color Int)` = load(VariantType_PackedColorArray, "find", 3156095363)
  `rfind(PackedColorArray Color Int)` = load(VariantType_PackedColorArray, "rfind", 3156095363)
  `count(PackedColorArray Color)` = load(VariantType_PackedColorArray, "count", 1682108616)