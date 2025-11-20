# `==(NodePath Variant)`
# `!=(NodePath Variant)`
var `not(NodePath)`: PtrOperatorEvaluator
var `==(NodePath NodePath)`: PtrOperatorEvaluator
# `!=(NodePath NodePath)`
# `in(NodePath Dictionary)`
# `in(NodePath Array)`
func `not`*(left: NodePath): bool = {.noSideEffect.}: `not(NodePath)`(getPtr left, nil, addr result)
func `==`*(left: NodePath; right: NodePath): bool = {.noSideEffect.}: `==(NodePath NodePath)`(getPtr left, getPtr right, addr result)
proc load_NodePath_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(NodePath)` = load(opNot, VariantType_NodePath, VariantType_Nil)
  `==(NodePath NodePath)` = load(opEqual, VariantType_NodePath, VariantType_NodePath)

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
  `isAbsolute(NodePath)`.call(addr self, [], addr result)
proc getNameCount*(self: NodePath): Int =
  `getNameCount(NodePath)`.call(addr self, [], addr result)
proc getName*(self: NodePath; idx: Int): StringName =
  `getName(NodePath Int)`.call(addr self, [getPtr idx], addr result)
proc getSubnameCount*(self: NodePath): Int =
  `getSubnameCount(NodePath)`.call(addr self, [], addr result)
proc hash*(self: NodePath): Hash =
  `hash(NodePath)`.call(addr self, [], addr result)
proc getSubname*(self: NodePath; idx: Int): StringName =
  `getSubname(NodePath Int)`.call(addr self, [getPtr idx], addr result)
proc getConcatenatedNames*(self: NodePath): StringName =
  `getConcatenatedNames(NodePath)`.call(addr self, [], addr result)
proc getConcatenatedSubnames*(self: NodePath): StringName =
  `getConcatenatedSubnames(NodePath)`.call(addr self, [], addr result)
proc slice*(self: NodePath; begin: Int; `end`: Int = 2147483647): NodePath =
  `slice(NodePath Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc getAsPropertyPath*(self: NodePath): NodePath =
  `getAsPropertyPath(NodePath)`.call(addr self, [], addr result)
proc isEmpty*(self: NodePath): bool =
  `isEmpty(NodePath)`.call(addr self, [], addr result)

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
