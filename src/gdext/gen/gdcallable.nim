# `==(Callable Variant)`
# `!=(Callable Variant)`
var `not(Callable)`: PtrOperatorEvaluator
var `==(Callable Callable)`: PtrOperatorEvaluator
# `!=(Callable Callable)`
# `in(Callable Dictionary)`
# `in(Callable Array)`
func `not`*(left: Callable): bool = {.noSideEffect.}: `not(Callable)`(getPtr left, nil, addr result)
func `==`*(left: Callable; right: Callable): bool = {.noSideEffect.}: `==(Callable Callable)`(getPtr left, getPtr right, addr result)
proc load_Callable_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Callable)` = load(opNot, VariantType_Callable, VariantType_Nil)
  `==(Callable Callable)` = load(opEqual, VariantType_Callable, VariantType_Callable)

var `create(Callable Variant StringName)`: PtrBuiltinMethod
var `callv(Callable Array)`: PtrBuiltinMethod
var `isNull(Callable)`: PtrBuiltinMethod
var `isCustom(Callable)`: PtrBuiltinMethod
var `isStandard(Callable)`: PtrBuiltinMethod
var `isValid(Callable)`: PtrBuiltinMethod
var `getObject(Callable)`: PtrBuiltinMethod
var `getObjectId(Callable)`: PtrBuiltinMethod
var `getMethod(Callable)`: PtrBuiltinMethod
var `getArgumentCount(Callable)`: PtrBuiltinMethod
var `getBoundArgumentsCount(Callable)`: PtrBuiltinMethod
var `getBoundArguments(Callable)`: PtrBuiltinMethod
var `getUnboundArgumentsCount(Callable)`: PtrBuiltinMethod
var `hash(Callable)`: PtrBuiltinMethod
var `bindv(Callable Array)`: PtrBuiltinMethod
var `unbind(Callable Int)`: PtrBuiltinMethod
var `call(Callable Variant)`: PtrBuiltinMethod
var `callDeferred(Callable Variant)`: PtrBuiltinMethod
var `rpc(Callable Variant)`: PtrBuiltinMethod
var `rpcId(Callable Int Variant)`: PtrBuiltinMethod
var `bind(Callable Variant)`: PtrBuiltinMethod

proc create*(_: typedesc[Callable]; variant: Variant; `method`: StringName): Callable =
  `create(Callable Variant StringName)`.call([getPtr variant, getPtr `method`], addr result)
proc callv*(self: Callable; arguments: Array): Variant =
  nilCheck arguments
  `callv(Callable Array)`.call(addr self, [getPtr arguments], addr result)
proc isNull*(self: Callable): bool =
  `isNull(Callable)`.call(addr self, [], addr result)
proc isCustom*(self: Callable): bool =
  `isCustom(Callable)`.call(addr self, [], addr result)
proc isStandard*(self: Callable): bool =
  `isStandard(Callable)`.call(addr self, [], addr result)
proc isValid*(self: Callable): bool =
  `isValid(Callable)`.call(addr self, [], addr result)
proc getObject*(self: Callable): Object =
  `getObject(Callable)`.call(addr self, [], addr result)
proc getObjectId*(self: Callable): Int =
  `getObjectId(Callable)`.call(addr self, [], addr result)
proc getMethod*(self: Callable): StringName =
  `getMethod(Callable)`.call(addr self, [], addr result)
proc getArgumentCount*(self: Callable): Int =
  `getArgumentCount(Callable)`.call(addr self, [], addr result)
proc getBoundArgumentsCount*(self: Callable): Int =
  `getBoundArgumentsCount(Callable)`.call(addr self, [], addr result)
proc getBoundArguments*(self: Callable): Array =
  `getBoundArguments(Callable)`.call(addr self, [], addr result)
proc getUnboundArgumentsCount*(self: Callable): Int =
  `getUnboundArgumentsCount(Callable)`.call(addr self, [], addr result)
proc hash*(self: Callable): Hash =
  `hash(Callable)`.call(addr self, [], addr result)
proc bindv*(self: var Callable; arguments: Array): Callable =
  nilCheck arguments
  `bindv(Callable Array)`.call(addr self, [getPtr arguments], addr result)
proc unbind*(self: Callable; argcount: Int): Callable =
  `unbind(Callable Int)`.call(addr self, [getPtr argcount], addr result)
proc call*(self: Callable; args: varargs[Variant, variant]): Variant =
  `call(Callable Variant)`.call(addr self, getPtr args, addr result)
proc callDeferred*(self: Callable; args: varargs[Variant, variant]): void =
  `callDeferred(Callable Variant)`.call(addr self, getPtr args)
proc rpc*(self: Callable; args: varargs[Variant, variant]): void =
  `rpc(Callable Variant)`.call(addr self, getPtr args)
proc rpcId*(self: Callable; peerId: Int; args: varargs[Variant, variant]): void =
  `rpcId(Callable Int Variant)`.call(addr self, @[getPtr peerId] & getPtr args)
proc `bind`*(self: Callable; args: varargs[Variant, variant]): Callable =
  `bind(Callable Variant)`.call(addr self, getPtr args, addr result)

proc load_Callable_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `create(Callable Variant StringName)` = load(VariantType_Callable, "create", 1709381114)
  `callv(Callable Array)` = load(VariantType_Callable, "callv", 413578926)
  `isNull(Callable)` = load(VariantType_Callable, "is_null", 3918633141)
  `isCustom(Callable)` = load(VariantType_Callable, "is_custom", 3918633141)
  `isStandard(Callable)` = load(VariantType_Callable, "is_standard", 3918633141)
  `isValid(Callable)` = load(VariantType_Callable, "is_valid", 3918633141)
  `getObject(Callable)` = load(VariantType_Callable, "get_object", 4008621732)
  `getObjectId(Callable)` = load(VariantType_Callable, "get_object_id", 3173160232)
  `getMethod(Callable)` = load(VariantType_Callable, "get_method", 1825232092)
  `getArgumentCount(Callable)` = load(VariantType_Callable, "get_argument_count", 3173160232)
  `getBoundArgumentsCount(Callable)` = load(VariantType_Callable, "get_bound_arguments_count", 3173160232)
  `getBoundArguments(Callable)` = load(VariantType_Callable, "get_bound_arguments", 4144163970)
  `getUnboundArgumentsCount(Callable)` = load(VariantType_Callable, "get_unbound_arguments_count", 3173160232)
  `hash(Callable)` = load(VariantType_Callable, "hash", 3173160232)
  `bindv(Callable Array)` = load(VariantType_Callable, "bindv", 3564560322)
  `unbind(Callable Int)` = load(VariantType_Callable, "unbind", 755001590)
  `call(Callable Variant)` = load(VariantType_Callable, "call", 3643564216)
  `callDeferred(Callable Variant)` = load(VariantType_Callable, "call_deferred", 3286317445)
  `rpc(Callable Variant)` = load(VariantType_Callable, "rpc", 3286317445)
  `rpcId(Callable Int Variant)` = load(VariantType_Callable, "rpc_id", 2270047679)
  `bind(Callable Variant)` = load(VariantType_Callable, "bind", 3224143119)
