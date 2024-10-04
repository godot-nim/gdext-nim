{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(NodePath Variant)`: PtrOperatorEvaluator
var `!=(NodePath Variant)`: PtrOperatorEvaluator
var `not(NodePath)`: PtrOperatorEvaluator
var `==(NodePath NodePath)`: PtrOperatorEvaluator
var `!=(NodePath NodePath)`: PtrOperatorEvaluator
var `contains(NodePath Dictionary)`: PtrOperatorEvaluator
var `contains(NodePath Array)`: PtrOperatorEvaluator
proc `==`*(left: NodePath; right: Variant): bool = `==(NodePath Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: NodePath; right: Variant): bool = `!=(NodePath Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: NodePath): bool = `not(NodePath)`(getPtr left, nil, addr result)
proc `==`*(left: NodePath; right: NodePath): bool = `==(NodePath NodePath)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: NodePath; right: NodePath): bool = `!=(NodePath NodePath)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: NodePath): bool = `contains(NodePath Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: NodePath): bool = `contains(NodePath Array)`(getPtr right, getPtr left, addr result)
proc load_NodePath_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(NodePath Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_NodePath, VariantType_Nil)
  `!=(NodePath Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_NodePath, VariantType_Nil)
  `not(NodePath)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_NodePath, VariantType_Nil)
  `==(NodePath NodePath)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_NodePath, VariantType_NodePath)
  `!=(NodePath NodePath)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_NodePath, VariantType_NodePath)
  `contains(NodePath Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_NodePath, VariantType_Dictionary)
  `contains(NodePath Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_NodePath, VariantType_Array)

var `isAbsolute(NodePath)`: PtrBuiltinMethod
var `getNameCount(NodePath)`: PtrBuiltinMethod
var `getName(NodePath Int)`: PtrBuiltinMethod
var `getSubnameCount(NodePath)`: PtrBuiltinMethod
var `hash(NodePath)`: PtrBuiltinMethod
var `getSubname(NodePath Int)`: PtrBuiltinMethod
var `getConcatenatedNames(NodePath)`: PtrBuiltinMethod
var `getConcatenatedSubnames(NodePath)`: PtrBuiltinMethod
var `slice(NodePath Int Int)`: PtrBuiltinMethod
var `getAsPropertyPath(NodePath)`: PtrBuiltinMethod
var `isEmpty(NodePath)`: PtrBuiltinMethod

proc isAbsolute*(self: NodePath): bool =
  `isAbsolute(NodePath)`(addr self, nil, addr result, 0)
proc getNameCount*(self: NodePath): Int =
  `getNameCount(NodePath)`(addr self, nil, addr result, 0)
proc getName*(self: NodePath; idx: Int): StringName =
  let argArr = [getPtr idx]
  `getName(NodePath Int)`(addr self, addr argArr[0], addr result, 1)
proc getSubnameCount*(self: NodePath): Int =
  `getSubnameCount(NodePath)`(addr self, nil, addr result, 0)
proc hash*(self: NodePath): Int =
  `hash(NodePath)`(addr self, nil, addr result, 0)
proc getSubname*(self: NodePath; idx: Int): StringName =
  let argArr = [getPtr idx]
  `getSubname(NodePath Int)`(addr self, addr argArr[0], addr result, 1)
proc getConcatenatedNames*(self: NodePath): StringName =
  `getConcatenatedNames(NodePath)`(addr self, nil, addr result, 0)
proc getConcatenatedSubnames*(self: NodePath): StringName =
  `getConcatenatedSubnames(NodePath)`(addr self, nil, addr result, 0)
proc slice*(self: NodePath; begin: Int; `end`: Int = 2147483647): NodePath =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(NodePath Int Int)`(addr self, addr argArr[0], addr result, 2)
proc getAsPropertyPath*(self: NodePath): NodePath =
  `getAsPropertyPath(NodePath)`(addr self, nil, addr result, 0)
proc isEmpty*(self: NodePath): bool =
  `isEmpty(NodePath)`(addr self, nil, addr result, 0)

proc load_NodePath_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `isAbsolute(NodePath)` = load(VariantType_NodePath, "is_absolute", 3918633141)
  `getNameCount(NodePath)` = load(VariantType_NodePath, "get_name_count", 3173160232)
  `getName(NodePath Int)` = load(VariantType_NodePath, "get_name", 2948586938)
  `getSubnameCount(NodePath)` = load(VariantType_NodePath, "get_subname_count", 3173160232)
  `hash(NodePath)` = load(VariantType_NodePath, "hash", 3173160232)
  `getSubname(NodePath Int)` = load(VariantType_NodePath, "get_subname", 2948586938)
  `getConcatenatedNames(NodePath)` = load(VariantType_NodePath, "get_concatenated_names", 1825232092)
  `getConcatenatedSubnames(NodePath)` = load(VariantType_NodePath, "get_concatenated_subnames", 1825232092)
  `slice(NodePath Int Int)` = load(VariantType_NodePath, "slice", 421628484)
  `getAsPropertyPath(NodePath)` = load(VariantType_NodePath, "get_as_property_path", 1598598043)
  `isEmpty(NodePath)` = load(VariantType_NodePath, "is_empty", 3918633141)