{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(Signal Variant)`: PtrOperatorEvaluator
var `!=(Signal Variant)`: PtrOperatorEvaluator
var `not(Signal)`: PtrOperatorEvaluator
var `==(Signal Signal)`: PtrOperatorEvaluator
var `!=(Signal Signal)`: PtrOperatorEvaluator
var `contains(Signal Dictionary)`: PtrOperatorEvaluator
var `contains(Signal Array)`: PtrOperatorEvaluator
proc `==`*(left: Signal; right: Variant): bool = `==(Signal Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Signal; right: Variant): bool = `!=(Signal Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: Signal): bool = `not(Signal)`(getPtr left, nil, addr result)
proc `==`*(left: Signal; right: Signal): bool = `==(Signal Signal)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Signal; right: Signal): bool = `!=(Signal Signal)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Signal): bool = `contains(Signal Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Signal): bool = `contains(Signal Array)`(getPtr right, getPtr left, addr result)
proc load_Signal_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Signal Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Signal, VariantType_Nil)
  `!=(Signal Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Signal, VariantType_Nil)
  `not(Signal)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Signal, VariantType_Nil)
  `==(Signal Signal)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Signal, VariantType_Signal)
  `!=(Signal Signal)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Signal, VariantType_Signal)
  `contains(Signal Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Signal, VariantType_Dictionary)
  `contains(Signal Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Signal, VariantType_Array)

var `isNull(Signal)`: PtrBuiltinMethod
var `getObject(Signal)`: PtrBuiltinMethod
var `getObjectId(Signal)`: PtrBuiltinMethod
var `getName(Signal)`: PtrBuiltinMethod
var `connect(Signal Callable Int)`: PtrBuiltinMethod
var `disconnect(Signal Callable)`: PtrBuiltinMethod
var `isConnected(Signal Callable)`: PtrBuiltinMethod
var `getConnections(Signal)`: PtrBuiltinMethod
var `emit(Signal Variant)`: PtrBuiltinMethod

proc isNull*(self: Signal): bool =
  `isNull(Signal)`(addr self, nil, addr result, 0)
proc getObject*(self: Signal): Object =
  `getObject(Signal)`(addr self, nil, addr result, 0)
proc getObjectId*(self: Signal): Int =
  `getObjectId(Signal)`(addr self, nil, addr result, 0)
proc getName*(self: Signal): StringName =
  `getName(Signal)`(addr self, nil, addr result, 0)
proc connect*(self: var Signal; callable: Callable; flags: Int = 0): Int =
  let argArr = [getPtr callable, getPtr flags]
  `connect(Signal Callable Int)`(addr self, addr argArr[0], addr result, 2)
proc disconnect*(self: var Signal; callable: Callable): void =
  let argArr = [getPtr callable]
  `disconnect(Signal Callable)`(addr self, addr argArr[0], nil, 1)
proc isConnected*(self: Signal; callable: Callable): bool =
  let argArr = [getPtr callable]
  `isConnected(Signal Callable)`(addr self, addr argArr[0], addr result, 1)
proc getConnections*(self: Signal): Array =
  `getConnections(Signal)`(addr self, nil, addr result, 0)

proc load_Signal_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `isNull(Signal)` = load(VariantType_Signal, "is_null", 3918633141)
  `getObject(Signal)` = load(VariantType_Signal, "get_object", 4008621732)
  `getObjectId(Signal)` = load(VariantType_Signal, "get_object_id", 3173160232)
  `getName(Signal)` = load(VariantType_Signal, "get_name", 1825232092)
  `connect(Signal Callable Int)` = load(VariantType_Signal, "connect", 979702392)
  `disconnect(Signal Callable)` = load(VariantType_Signal, "disconnect", 3470848906)
  `isConnected(Signal Callable)` = load(VariantType_Signal, "is_connected", 4129521963)
  `getConnections(Signal)` = load(VariantType_Signal, "get_connections", 4144163970)
  `emit(Signal Variant)` = load(VariantType_Signal, "emit", 3286317445)