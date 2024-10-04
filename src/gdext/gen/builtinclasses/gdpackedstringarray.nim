{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

proc `[]`*(self: PackedStringArray; index: int): PackedStringArray.Item = self.data_unsafe[index]
proc `[]`*(self: var PackedStringArray; index: int): var PackedStringArray.Item = self.data_unsafe[index]
proc `[]=`*(self: var PackedStringArray; index: int; value: PackedStringArray.Item) = self.data_unsafe[index] = value

var `==(PackedStringArray Variant)`: PtrOperatorEvaluator
var `!=(PackedStringArray Variant)`: PtrOperatorEvaluator
var `not(PackedStringArray)`: PtrOperatorEvaluator
var `contains(PackedStringArray Dictionary)`: PtrOperatorEvaluator
var `contains(PackedStringArray Array)`: PtrOperatorEvaluator
var `==(PackedStringArray PackedStringArray)`: PtrOperatorEvaluator
var `!=(PackedStringArray PackedStringArray)`: PtrOperatorEvaluator
var `+(PackedStringArray PackedStringArray)`: PtrOperatorEvaluator
proc `==`*(left: PackedStringArray; right: Variant): bool = `==(PackedStringArray Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedStringArray; right: Variant): bool = `!=(PackedStringArray Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: PackedStringArray): bool = `not(PackedStringArray)`(getPtr left, nil, addr result)
proc contains*(left: Dictionary; right: PackedStringArray): bool = `contains(PackedStringArray Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: PackedStringArray): bool = `contains(PackedStringArray Array)`(getPtr right, getPtr left, addr result)
proc `==`*(left: PackedStringArray; right: PackedStringArray): bool = `==(PackedStringArray PackedStringArray)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedStringArray; right: PackedStringArray): bool = `!=(PackedStringArray PackedStringArray)`(getPtr left, getPtr right, addr result)
proc `+`*(left: PackedStringArray; right: PackedStringArray): PackedStringArray = `+(PackedStringArray PackedStringArray)`(getPtr left, getPtr right, addr result)
proc load_PackedStringArray_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(PackedStringArray Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedStringArray, VariantType_Nil)
  `!=(PackedStringArray Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedStringArray, VariantType_Nil)
  `not(PackedStringArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_PackedStringArray, VariantType_Nil)
  `contains(PackedStringArray Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedStringArray, VariantType_Dictionary)
  `contains(PackedStringArray Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedStringArray, VariantType_Array)
  `==(PackedStringArray PackedStringArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedStringArray, VariantType_PackedStringArray)
  `!=(PackedStringArray PackedStringArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedStringArray, VariantType_PackedStringArray)
  `+(PackedStringArray PackedStringArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_PackedStringArray, VariantType_PackedStringArray)

var `size(PackedStringArray)`: PtrBuiltinMethod
var `isEmpty(PackedStringArray)`: PtrBuiltinMethod
var `set(PackedStringArray Int String)`: PtrBuiltinMethod
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

proc size*(self: PackedStringArray): Int =
  `size(PackedStringArray)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedStringArray): bool =
  `isEmpty(PackedStringArray)`(addr self, nil, addr result, 0)
proc set*(self: var PackedStringArray; index: Int; value: String): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedStringArray Int String)`(addr self, addr argArr[0], nil, 2)
proc pushBack*(self: var PackedStringArray; value: String): bool =
  let argArr = [getPtr value]
  `pushBack(PackedStringArray String)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: var PackedStringArray; value: String): bool =
  let argArr = [getPtr value]
  `append(PackedStringArray String)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: var PackedStringArray; array: PackedStringArray): void =
  let argArr = [getPtr array]
  `appendArray(PackedStringArray PackedStringArray)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: var PackedStringArray; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedStringArray Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: var PackedStringArray; atIndex: Int; value: String): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedStringArray Int String)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: var PackedStringArray; value: String): void =
  let argArr = [getPtr value]
  `fill(PackedStringArray String)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: var PackedStringArray; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedStringArray Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: var PackedStringArray): void =
  `clear(PackedStringArray)`(addr self, nil, nil, 0)
proc has*(self: PackedStringArray; value: String): bool =
  let argArr = [getPtr value]
  `has(PackedStringArray String)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: var PackedStringArray): void =
  `reverse(PackedStringArray)`(addr self, nil, nil, 0)
proc slice*(self: PackedStringArray; begin: Int; `end`: Int = 2147483647): PackedStringArray =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedStringArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc toByteArray*(self: PackedStringArray): PackedByteArray =
  `toByteArray(PackedStringArray)`(addr self, nil, addr result, 0)
proc sort*(self: var PackedStringArray): void =
  `sort(PackedStringArray)`(addr self, nil, nil, 0)
proc bsearch*(self: var PackedStringArray; value: String; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedStringArray String bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: var PackedStringArray): PackedStringArray =
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
  `size(PackedStringArray)` = load(VariantType_PackedStringArray, "size", 3173160232)
  `isEmpty(PackedStringArray)` = load(VariantType_PackedStringArray, "is_empty", 3918633141)
  `set(PackedStringArray Int String)` = load(VariantType_PackedStringArray, "set", 725585539)
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