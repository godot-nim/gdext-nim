{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

proc `[]`*(self: Array; index: int): Array.Item = cast[ptr Array.Item](interface_Array_operatorIndexConst(addr self, index))[]
proc `[]`*(self: var Array; index: int): var Array.Item = cast[ptr Array.Item](interface_Array_operatorIndex(addr self, index))[]
proc `[]=`*(self: var Array; index: int; value: Array.Item) = cast[ptr Array.Item](interface_Array_operatorIndex(addr self, index))[] = value

var `==(Array Variant)`: PtrOperatorEvaluator
var `!=(Array Variant)`: PtrOperatorEvaluator
var `not(Array)`: PtrOperatorEvaluator
var `contains(Array Dictionary)`: PtrOperatorEvaluator
var `==(Array Array)`: PtrOperatorEvaluator
var `!=(Array Array)`: PtrOperatorEvaluator
var `<(Array Array)`: PtrOperatorEvaluator
var `<=(Array Array)`: PtrOperatorEvaluator
var `>(Array Array)`: PtrOperatorEvaluator
var `>=(Array Array)`: PtrOperatorEvaluator
var `+(Array Array)`: PtrOperatorEvaluator
var `contains(Array Array)`: PtrOperatorEvaluator
proc `==`*(left: Array; right: Variant): bool = `==(Array Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Array; right: Variant): bool = `!=(Array Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: Array): bool = `not(Array)`(getPtr left, nil, addr result)
proc contains*(left: Dictionary; right: Array): bool = `contains(Array Dictionary)`(getPtr right, getPtr left, addr result)
proc `==`*(left: Array; right: Array): bool = `==(Array Array)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Array; right: Array): bool = `!=(Array Array)`(getPtr left, getPtr right, addr result)
proc `<`*(left: Array; right: Array): bool = `<(Array Array)`(getPtr left, getPtr right, addr result)
proc `<=`*(left: Array; right: Array): bool = `<=(Array Array)`(getPtr left, getPtr right, addr result)
proc `>`*(left: Array; right: Array): bool = `>(Array Array)`(getPtr left, getPtr right, addr result)
proc `>=`*(left: Array; right: Array): bool = `>=(Array Array)`(getPtr left, getPtr right, addr result)
proc `+`*(left: Array; right: Array): Array = `+(Array Array)`(getPtr left, getPtr right, addr result)
proc contains*(left: Array; right: Array): bool = `contains(Array Array)`(getPtr right, getPtr left, addr result)
proc load_Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Array Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Array, VariantType_Nil)
  `!=(Array Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Array, VariantType_Nil)
  `not(Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Array, VariantType_Nil)
  `contains(Array Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Array, VariantType_Dictionary)
  `==(Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Array, VariantType_Array)
  `!=(Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Array, VariantType_Array)
  `<(Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Less, VariantType_Array, VariantType_Array)
  `<=(Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_LessEqual, VariantType_Array, VariantType_Array)
  `>(Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Greater, VariantType_Array, VariantType_Array)
  `>=(Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_GreaterEqual, VariantType_Array, VariantType_Array)
  `+(Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_Array, VariantType_Array)
  `contains(Array Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Array, VariantType_Array)

var `size(Array)`: PtrBuiltinMethod
var `isEmpty(Array)`: PtrBuiltinMethod
var `clear(Array)`: PtrBuiltinMethod
var `hash(Array)`: PtrBuiltinMethod
var `assign(Array Array)`: PtrBuiltinMethod
var `pushBack(Array Variant)`: PtrBuiltinMethod
var `pushFront(Array Variant)`: PtrBuiltinMethod
var `append(Array Variant)`: PtrBuiltinMethod
var `appendArray(Array Array)`: PtrBuiltinMethod
var `resize(Array Int)`: PtrBuiltinMethod
var `insert(Array Int Variant)`: PtrBuiltinMethod
var `removeAt(Array Int)`: PtrBuiltinMethod
var `fill(Array Variant)`: PtrBuiltinMethod
var `erase(Array Variant)`: PtrBuiltinMethod
var `front(Array)`: PtrBuiltinMethod
var `back(Array)`: PtrBuiltinMethod
var `pickRandom(Array)`: PtrBuiltinMethod
var `find(Array Variant Int)`: PtrBuiltinMethod
var `rfind(Array Variant Int)`: PtrBuiltinMethod
var `count(Array Variant)`: PtrBuiltinMethod
var `has(Array Variant)`: PtrBuiltinMethod
var `popBack(Array)`: PtrBuiltinMethod
var `popFront(Array)`: PtrBuiltinMethod
var `popAt(Array Int)`: PtrBuiltinMethod
var `sort(Array)`: PtrBuiltinMethod
var `sortCustom(Array Callable)`: PtrBuiltinMethod
var `shuffle(Array)`: PtrBuiltinMethod
var `bsearch(Array Variant bool)`: PtrBuiltinMethod
var `bsearchCustom(Array Variant Callable bool)`: PtrBuiltinMethod
var `reverse(Array)`: PtrBuiltinMethod
var `duplicate(Array bool)`: PtrBuiltinMethod
var `slice(Array Int Int Int bool)`: PtrBuiltinMethod
var `filter(Array Callable)`: PtrBuiltinMethod
var `map(Array Callable)`: PtrBuiltinMethod
var `reduce(Array Callable Variant)`: PtrBuiltinMethod
var `any(Array Callable)`: PtrBuiltinMethod
var `all(Array Callable)`: PtrBuiltinMethod
var `max(Array)`: PtrBuiltinMethod
var `min(Array)`: PtrBuiltinMethod
var `isTyped(Array)`: PtrBuiltinMethod
var `isSameTyped(Array Array)`: PtrBuiltinMethod
var `getTypedBuiltin(Array)`: PtrBuiltinMethod
var `getTypedClassName(Array)`: PtrBuiltinMethod
var `getTypedScript(Array)`: PtrBuiltinMethod
var `makeReadOnly(Array)`: PtrBuiltinMethod
var `isReadOnly(Array)`: PtrBuiltinMethod

proc size*(self: Array): Int =
  `size(Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: Array): bool =
  `isEmpty(Array)`(addr self, nil, addr result, 0)
proc clear*(self: var Array): void =
  `clear(Array)`(addr self, nil, nil, 0)
proc hash*(self: Array): Int =
  `hash(Array)`(addr self, nil, addr result, 0)
proc assign*(self: var Array; array: Array): void =
  let argArr = [getPtr array]
  `assign(Array Array)`(addr self, addr argArr[0], nil, 1)
proc pushBack*(self: var Array; value: Variant): void =
  let argArr = [getPtr value]
  `pushBack(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc pushFront*(self: var Array; value: Variant): void =
  let argArr = [getPtr value]
  `pushFront(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc append*(self: var Array; value: Variant): void =
  let argArr = [getPtr value]
  `append(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc appendArray*(self: var Array; array: Array): void =
  let argArr = [getPtr array]
  `appendArray(Array Array)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: var Array; size: Int): Int =
  let argArr = [getPtr size]
  `resize(Array Int)`(addr self, addr argArr[0], addr result, 1)
proc insert*(self: var Array; position: Int; value: Variant): Int =
  let argArr = [getPtr position, getPtr value]
  `insert(Array Int Variant)`(addr self, addr argArr[0], addr result, 2)
proc removeAt*(self: var Array; position: Int): void =
  let argArr = [getPtr position]
  `removeAt(Array Int)`(addr self, addr argArr[0], nil, 1)
proc fill*(self: var Array; value: Variant): void =
  let argArr = [getPtr value]
  `fill(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc erase*(self: var Array; value: Variant): void =
  let argArr = [getPtr value]
  `erase(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc front*(self: Array): Variant =
  `front(Array)`(addr self, nil, addr result, 0)
proc back*(self: Array): Variant =
  `back(Array)`(addr self, nil, addr result, 0)
proc pickRandom*(self: Array): Variant =
  `pickRandom(Array)`(addr self, nil, addr result, 0)
proc find*(self: Array; what: Variant; `from`: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`]
  `find(Array Variant Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: Array; what: Variant; `from`: Int = -1): Int =
  let argArr = [getPtr what, getPtr `from`]
  `rfind(Array Variant Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: Array; value: Variant): Int =
  let argArr = [getPtr value]
  `count(Array Variant)`(addr self, addr argArr[0], addr result, 1)
proc has*(self: Array; value: Variant): bool =
  let argArr = [getPtr value]
  `has(Array Variant)`(addr self, addr argArr[0], addr result, 1)
proc popBack*(self: var Array): Variant =
  `popBack(Array)`(addr self, nil, addr result, 0)
proc popFront*(self: var Array): Variant =
  `popFront(Array)`(addr self, nil, addr result, 0)
proc popAt*(self: var Array; position: Int): Variant =
  let argArr = [getPtr position]
  `popAt(Array Int)`(addr self, addr argArr[0], addr result, 1)
proc sort*(self: var Array): void =
  `sort(Array)`(addr self, nil, nil, 0)
proc sortCustom*(self: var Array; `func`: Callable): void =
  let argArr = [getPtr `func`]
  `sortCustom(Array Callable)`(addr self, addr argArr[0], nil, 1)
proc shuffle*(self: var Array): void =
  `shuffle(Array)`(addr self, nil, nil, 0)
proc bsearch*(self: Array; value: Variant; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(Array Variant bool)`(addr self, addr argArr[0], addr result, 2)
proc bsearchCustom*(self: Array; value: Variant; `func`: Callable; before: bool = true): Int =
  let argArr = [getPtr value, getPtr `func`, getPtr before]
  `bsearchCustom(Array Variant Callable bool)`(addr self, addr argArr[0], addr result, 3)
proc reverse*(self: var Array): void =
  `reverse(Array)`(addr self, nil, nil, 0)
proc duplicate*(self: Array; deep: bool = false): Array =
  let argArr = [getPtr deep]
  `duplicate(Array bool)`(addr self, addr argArr[0], addr result, 1)
proc slice*(self: Array; begin: Int; `end`: Int = 2147483647; step: Int = 1; deep: bool = false): Array =
  let argArr = [getPtr begin, getPtr `end`, getPtr step, getPtr deep]
  `slice(Array Int Int Int bool)`(addr self, addr argArr[0], addr result, 4)
proc filter*(self: Array; `method`: Callable): Array =
  let argArr = [getPtr `method`]
  `filter(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc map*(self: Array; `method`: Callable): Array =
  let argArr = [getPtr `method`]
  `map(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc reduce*(self: Array; `method`: Callable; accum: Variant = default(Variant)): Variant =
  let argArr = [getPtr `method`, getPtr accum]
  `reduce(Array Callable Variant)`(addr self, addr argArr[0], addr result, 2)
proc any*(self: Array; `method`: Callable): bool =
  let argArr = [getPtr `method`]
  `any(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc all*(self: Array; `method`: Callable): bool =
  let argArr = [getPtr `method`]
  `all(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc max*(self: Array): Variant =
  `max(Array)`(addr self, nil, addr result, 0)
proc min*(self: Array): Variant =
  `min(Array)`(addr self, nil, addr result, 0)
proc isTyped*(self: Array): bool =
  `isTyped(Array)`(addr self, nil, addr result, 0)
proc isSameTyped*(self: Array; array: Array): bool =
  let argArr = [getPtr array]
  `isSameTyped(Array Array)`(addr self, addr argArr[0], addr result, 1)
proc getTypedBuiltin*(self: Array): Int =
  `getTypedBuiltin(Array)`(addr self, nil, addr result, 0)
proc getTypedClassName*(self: Array): StringName =
  `getTypedClassName(Array)`(addr self, nil, addr result, 0)
proc getTypedScript*(self: Array): Variant =
  `getTypedScript(Array)`(addr self, nil, addr result, 0)
proc makeReadOnly*(self: var Array): void =
  `makeReadOnly(Array)`(addr self, nil, nil, 0)
proc isReadOnly*(self: Array): bool =
  `isReadOnly(Array)`(addr self, nil, addr result, 0)

proc load_Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `size(Array)` = load(VariantType_Array, "size", 3173160232)
  `isEmpty(Array)` = load(VariantType_Array, "is_empty", 3918633141)
  `clear(Array)` = load(VariantType_Array, "clear", 3218959716)
  `hash(Array)` = load(VariantType_Array, "hash", 3173160232)
  `assign(Array Array)` = load(VariantType_Array, "assign", 2307260970)
  `pushBack(Array Variant)` = load(VariantType_Array, "push_back", 3316032543)
  `pushFront(Array Variant)` = load(VariantType_Array, "push_front", 3316032543)
  `append(Array Variant)` = load(VariantType_Array, "append", 3316032543)
  `appendArray(Array Array)` = load(VariantType_Array, "append_array", 2307260970)
  `resize(Array Int)` = load(VariantType_Array, "resize", 848867239)
  `insert(Array Int Variant)` = load(VariantType_Array, "insert", 3176316662)
  `removeAt(Array Int)` = load(VariantType_Array, "remove_at", 2823966027)
  `fill(Array Variant)` = load(VariantType_Array, "fill", 3316032543)
  `erase(Array Variant)` = load(VariantType_Array, "erase", 3316032543)
  `front(Array)` = load(VariantType_Array, "front", 1460142086)
  `back(Array)` = load(VariantType_Array, "back", 1460142086)
  `pickRandom(Array)` = load(VariantType_Array, "pick_random", 1460142086)
  `find(Array Variant Int)` = load(VariantType_Array, "find", 2336346817)
  `rfind(Array Variant Int)` = load(VariantType_Array, "rfind", 2336346817)
  `count(Array Variant)` = load(VariantType_Array, "count", 1481661226)
  `has(Array Variant)` = load(VariantType_Array, "has", 3680194679)
  `popBack(Array)` = load(VariantType_Array, "pop_back", 1321915136)
  `popFront(Array)` = load(VariantType_Array, "pop_front", 1321915136)
  `popAt(Array Int)` = load(VariantType_Array, "pop_at", 3518259424)
  `sort(Array)` = load(VariantType_Array, "sort", 3218959716)
  `sortCustom(Array Callable)` = load(VariantType_Array, "sort_custom", 3470848906)
  `shuffle(Array)` = load(VariantType_Array, "shuffle", 3218959716)
  `bsearch(Array Variant bool)` = load(VariantType_Array, "bsearch", 3372222236)
  `bsearchCustom(Array Variant Callable bool)` = load(VariantType_Array, "bsearch_custom", 161317131)
  `reverse(Array)` = load(VariantType_Array, "reverse", 3218959716)
  `duplicate(Array bool)` = load(VariantType_Array, "duplicate", 636440122)
  `slice(Array Int Int Int bool)` = load(VariantType_Array, "slice", 1393718243)
  `filter(Array Callable)` = load(VariantType_Array, "filter", 4075186556)
  `map(Array Callable)` = load(VariantType_Array, "map", 4075186556)
  `reduce(Array Callable Variant)` = load(VariantType_Array, "reduce", 4272450342)
  `any(Array Callable)` = load(VariantType_Array, "any", 4129521963)
  `all(Array Callable)` = load(VariantType_Array, "all", 4129521963)
  `max(Array)` = load(VariantType_Array, "max", 1460142086)
  `min(Array)` = load(VariantType_Array, "min", 1460142086)
  `isTyped(Array)` = load(VariantType_Array, "is_typed", 3918633141)
  `isSameTyped(Array Array)` = load(VariantType_Array, "is_same_typed", 2988181878)
  `getTypedBuiltin(Array)` = load(VariantType_Array, "get_typed_builtin", 3173160232)
  `getTypedClassName(Array)` = load(VariantType_Array, "get_typed_class_name", 1825232092)
  `getTypedScript(Array)` = load(VariantType_Array, "get_typed_script", 1460142086)
  `makeReadOnly(Array)` = load(VariantType_Array, "make_read_only", 3218959716)
  `isReadOnly(Array)` = load(VariantType_Array, "is_read_only", 3918633141)