{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

proc `[]`*(self: Dictionary; key: Variant): Dictionary.Item = cast[ptr Dictionary.Item](interface_Dictionary_operatorIndexConst(addr self, addr key))[]
proc `[]`*(self: var Dictionary; key: Variant): var Dictionary.Item = cast[ptr Dictionary.Item](interface_Dictionary_operatorIndex(addr self, addr key))[]
proc `[]=`*(self: var Dictionary; key: Variant; value: Dictionary.Item) = cast[ptr Dictionary.Item](interface_Dictionary_operatorIndex(addr self, addr key))[] = value

var `==(Dictionary Variant)`: PtrOperatorEvaluator
var `!=(Dictionary Variant)`: PtrOperatorEvaluator
var `not(Dictionary)`: PtrOperatorEvaluator
var `==(Dictionary Dictionary)`: PtrOperatorEvaluator
var `!=(Dictionary Dictionary)`: PtrOperatorEvaluator
var `contains(Dictionary Dictionary)`: PtrOperatorEvaluator
var `contains(Dictionary Array)`: PtrOperatorEvaluator
proc `==`*(left: Dictionary; right: Variant): bool = `==(Dictionary Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Dictionary; right: Variant): bool = `!=(Dictionary Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: Dictionary): bool = `not(Dictionary)`(getPtr left, nil, addr result)
proc `==`*(left: Dictionary; right: Dictionary): bool = `==(Dictionary Dictionary)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Dictionary; right: Dictionary): bool = `!=(Dictionary Dictionary)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Dictionary): bool = `contains(Dictionary Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Dictionary): bool = `contains(Dictionary Array)`(getPtr right, getPtr left, addr result)
proc load_Dictionary_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Dictionary Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Dictionary, VariantType_Nil)
  `!=(Dictionary Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Dictionary, VariantType_Nil)
  `not(Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Dictionary, VariantType_Nil)
  `==(Dictionary Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Dictionary, VariantType_Dictionary)
  `!=(Dictionary Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Dictionary, VariantType_Dictionary)
  `contains(Dictionary Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Dictionary, VariantType_Dictionary)
  `contains(Dictionary Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Dictionary, VariantType_Array)

var `size(Dictionary)`: PtrBuiltinMethod
var `isEmpty(Dictionary)`: PtrBuiltinMethod
var `clear(Dictionary)`: PtrBuiltinMethod
var `merge(Dictionary Dictionary bool)`: PtrBuiltinMethod
var `merged(Dictionary Dictionary bool)`: PtrBuiltinMethod
var `has(Dictionary Variant)`: PtrBuiltinMethod
var `hasAll(Dictionary Array)`: PtrBuiltinMethod
var `findKey(Dictionary Variant)`: PtrBuiltinMethod
var `erase(Dictionary Variant)`: PtrBuiltinMethod
var `hash(Dictionary)`: PtrBuiltinMethod
var `keys(Dictionary)`: PtrBuiltinMethod
var `values(Dictionary)`: PtrBuiltinMethod
var `duplicate(Dictionary bool)`: PtrBuiltinMethod
var `get(Dictionary Variant Variant)`: PtrBuiltinMethod
var `getOrAdd(Dictionary Variant Variant)`: PtrBuiltinMethod
var `makeReadOnly(Dictionary)`: PtrBuiltinMethod
var `isReadOnly(Dictionary)`: PtrBuiltinMethod
var `recursiveEqual(Dictionary Dictionary Int)`: PtrBuiltinMethod

proc size*(self: Dictionary): Int =
  `size(Dictionary)`(addr self, nil, addr result, 0)
proc isEmpty*(self: Dictionary): bool =
  `isEmpty(Dictionary)`(addr self, nil, addr result, 0)
proc clear*(self: var Dictionary): void =
  `clear(Dictionary)`(addr self, nil, nil, 0)
proc merge*(self: var Dictionary; dictionary: Dictionary; overwrite: bool = false): void =
  let argArr = [getPtr dictionary, getPtr overwrite]
  `merge(Dictionary Dictionary bool)`(addr self, addr argArr[0], nil, 2)
proc merged*(self: Dictionary; dictionary: Dictionary; overwrite: bool = false): Dictionary =
  let argArr = [getPtr dictionary, getPtr overwrite]
  `merged(Dictionary Dictionary bool)`(addr self, addr argArr[0], addr result, 2)
proc has*(self: Dictionary; key: Variant): bool =
  let argArr = [getPtr key]
  `has(Dictionary Variant)`(addr self, addr argArr[0], addr result, 1)
proc hasAll*(self: Dictionary; keys: Array): bool =
  let argArr = [getPtr keys]
  `hasAll(Dictionary Array)`(addr self, addr argArr[0], addr result, 1)
proc findKey*(self: Dictionary; value: Variant): Variant =
  let argArr = [getPtr value]
  `findKey(Dictionary Variant)`(addr self, addr argArr[0], addr result, 1)
proc erase*(self: var Dictionary; key: Variant): bool =
  let argArr = [getPtr key]
  `erase(Dictionary Variant)`(addr self, addr argArr[0], addr result, 1)
proc hash*(self: Dictionary): Int =
  `hash(Dictionary)`(addr self, nil, addr result, 0)
proc keys*(self: Dictionary): Array =
  `keys(Dictionary)`(addr self, nil, addr result, 0)
proc values*(self: Dictionary): Array =
  `values(Dictionary)`(addr self, nil, addr result, 0)
proc duplicate*(self: Dictionary; deep: bool = false): Dictionary =
  let argArr = [getPtr deep]
  `duplicate(Dictionary bool)`(addr self, addr argArr[0], addr result, 1)
proc get*(self: Dictionary; key: Variant; default: Variant = default(Variant)): Variant =
  let argArr = [getPtr key, getPtr default]
  `get(Dictionary Variant Variant)`(addr self, addr argArr[0], addr result, 2)
proc getOrAdd*(self: var Dictionary; key: Variant; default: Variant = default(Variant)): Variant =
  let argArr = [getPtr key, getPtr default]
  `getOrAdd(Dictionary Variant Variant)`(addr self, addr argArr[0], addr result, 2)
proc makeReadOnly*(self: var Dictionary): void =
  `makeReadOnly(Dictionary)`(addr self, nil, nil, 0)
proc isReadOnly*(self: Dictionary): bool =
  `isReadOnly(Dictionary)`(addr self, nil, addr result, 0)
proc recursiveEqual*(self: Dictionary; dictionary: Dictionary; recursionCount: Int): bool =
  let argArr = [getPtr dictionary, getPtr recursionCount]
  `recursiveEqual(Dictionary Dictionary Int)`(addr self, addr argArr[0], addr result, 2)

proc load_Dictionary_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `size(Dictionary)` = load(VariantType_Dictionary, "size", 3173160232)
  `isEmpty(Dictionary)` = load(VariantType_Dictionary, "is_empty", 3918633141)
  `clear(Dictionary)` = load(VariantType_Dictionary, "clear", 3218959716)
  `merge(Dictionary Dictionary bool)` = load(VariantType_Dictionary, "merge", 2079548978)
  `merged(Dictionary Dictionary bool)` = load(VariantType_Dictionary, "merged", 2271165639)
  `has(Dictionary Variant)` = load(VariantType_Dictionary, "has", 3680194679)
  `hasAll(Dictionary Array)` = load(VariantType_Dictionary, "has_all", 2988181878)
  `findKey(Dictionary Variant)` = load(VariantType_Dictionary, "find_key", 1988825835)
  `erase(Dictionary Variant)` = load(VariantType_Dictionary, "erase", 1776646889)
  `hash(Dictionary)` = load(VariantType_Dictionary, "hash", 3173160232)
  `keys(Dictionary)` = load(VariantType_Dictionary, "keys", 4144163970)
  `values(Dictionary)` = load(VariantType_Dictionary, "values", 4144163970)
  `duplicate(Dictionary bool)` = load(VariantType_Dictionary, "duplicate", 830099069)
  `get(Dictionary Variant Variant)` = load(VariantType_Dictionary, "get", 2205440559)
  `getOrAdd(Dictionary Variant Variant)` = load(VariantType_Dictionary, "get_or_add", 1052551076)
  `makeReadOnly(Dictionary)` = load(VariantType_Dictionary, "make_read_only", 3218959716)
  `isReadOnly(Dictionary)` = load(VariantType_Dictionary, "is_read_only", 3918633141)
  `recursiveEqual(Dictionary Dictionary Int)` = load(VariantType_Dictionary, "recursive_equal", 1404404751)