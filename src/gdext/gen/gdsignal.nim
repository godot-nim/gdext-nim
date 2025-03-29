# `==(Signal Variant)`
# `!=(Signal Variant)`
var `not(Signal)`: PtrOperatorEvaluator
var `==(Signal Signal)`: PtrOperatorEvaluator
# `!=(Signal Signal)`
# `in(Signal Dictionary)`
# `in(Signal Array)`
func `not`*(left: Signal): bool = {.noSideEffect.}: `not(Signal)`(getPtr left, nil, addr result)
func `==`*(left: Signal; right: Signal): bool = {.noSideEffect.}: `==(Signal Signal)`(getPtr left, getPtr right, addr result)
proc load_Signal_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Signal)` = load(opNot, VariantType_Signal, VariantType_Nil)
  `==(Signal Signal)` = load(opEqual, VariantType_Signal, VariantType_Signal)

var `isNull(Signal)`: PtrBuiltinMethod
var `getObject(Signal)`: PtrBuiltinMethod
var `getObjectId(Signal)`: PtrBuiltinMethod
var `getName(Signal)`: PtrBuiltinMethod
var `connect(Signal Callable Int)`: PtrBuiltinMethod
var `disconnect(Signal Callable)`: PtrBuiltinMethod
var `isConnected(Signal Callable)`: PtrBuiltinMethod
var `getConnections(Signal)`: PtrBuiltinMethod
var `hasConnections(Signal)`: PtrBuiltinMethod
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
proc hasConnections*(self: Signal): bool =
  `hasConnections(Signal)`(addr self, nil, addr result, 0)
proc emit*(self: Signal; args: varargs[Variant]): void =
  if args.len == 0:
    `emit(Signal Variant)`(addr self, nil, nil, 0)
  else:
    let argArr = getptr args
    `emit(Signal Variant)`(addr self, addr argArr[0], nil, cint args.len)

proc load_Signal_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `isNull(Signal)` = load(VariantType_Signal, "is_null", 3918633141)
  `getObject(Signal)` = load(VariantType_Signal, "get_object", 4008621732)
  `getObjectId(Signal)` = load(VariantType_Signal, "get_object_id", 3173160232)
  `getName(Signal)` = load(VariantType_Signal, "get_name", 1825232092)
  `connect(Signal Callable Int)` = load(VariantType_Signal, "connect", 979702392)
  `disconnect(Signal Callable)` = load(VariantType_Signal, "disconnect", 3470848906)
  `isConnected(Signal Callable)` = load(VariantType_Signal, "is_connected", 4129521963)
  `getConnections(Signal)` = load(VariantType_Signal, "get_connections", 4144163970)
  `hasConnections(Signal)` = load(VariantType_Signal, "has_connections", 3918633141)
  `emit(Signal Variant)` = load(VariantType_Signal, "emit", 3286317445)
