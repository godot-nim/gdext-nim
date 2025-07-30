# `==(Array Variant)`
# `!=(Array Variant)`
var `not(Array)`: PtrOperatorEvaluator
# `in(Array Dictionary)`
var `==(Array Array)`: PtrOperatorEvaluator
# `!=(Array Array)`
var `<(Array Array)`: PtrOperatorEvaluator
var `<=(Array Array)`: PtrOperatorEvaluator
# `>(Array Array)`
# `>=(Array Array)`
var `+(Array Array)`: PtrOperatorEvaluator
# `in(Array Array)`
func `not`*(left: Array): bool = {.noSideEffect.}: `not(Array)`(getPtr left, nil, addr result)
func `==`*(left: Array; right: Array): bool = {.noSideEffect.}: `==(Array Array)`(getPtr left, getPtr right, addr result)
func `<`*(left: Array; right: Array): bool = {.noSideEffect.}: `<(Array Array)`(getPtr left, getPtr right, addr result)
func `<=`*(left: Array; right: Array): bool = {.noSideEffect.}: `<=(Array Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: Array; right: Array): Array = {.noSideEffect.}: `+(Array Array)`(getPtr left, getPtr right, addr result)
proc load_Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Array)` = load(opNot, VariantType_Array, VariantType_Nil)
  `==(Array Array)` = load(opEqual, VariantType_Array, VariantType_Array)
  `<(Array Array)` = load(opLess, VariantType_Array, VariantType_Array)
  `<=(Array Array)` = load(opLessEqual, VariantType_Array, VariantType_Array)
  `+(Array Array)` = load(opAdd, VariantType_Array, VariantType_Array)

var `size(Array)`: PtrBuiltinMethod
var `isEmpty(Array)`: PtrBuiltinMethod
var `clear(Array)`: PtrBuiltinMethod
var `hash(Array)`: PtrBuiltinMethod
var `assign(Array Array)`: PtrBuiltinMethod
var `get(Array Int)`: PtrBuiltinMethod
var `set(Array Int Variant)`: PtrBuiltinMethod
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
var `findCustom(Array Callable Int)`: PtrBuiltinMethod
var `rfind(Array Variant Int)`: PtrBuiltinMethod
var `rfindCustom(Array Callable Int)`: PtrBuiltinMethod
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

proc size*(self: var Array): Int =
  nilCheck self
  `size(Array)`(addr self, nil, addr result, 0)
proc size*(self: Array): Int =
  nilCheck self
  `size(Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: var Array): bool =
  nilCheck self
  `isEmpty(Array)`(addr self, nil, addr result, 0)
proc isEmpty*(self: Array): bool =
  nilCheck self
  `isEmpty(Array)`(addr self, nil, addr result, 0)
proc clear*(self: var Array): void =
  nilCheck self
  `clear(Array)`(addr self, nil, nil, 0)
proc hash*(self: var Array): Hash =
  nilCheck self
  `hash(Array)`(addr self, nil, addr result, 0)
proc hash*(self: Array): Hash =
  nilCheck self
  `hash(Array)`(addr self, nil, addr result, 0)
proc assign*(self: var Array; array: Array): void =
  nilCheck self
  let argArr = [getPtr array]
  `assign(Array Array)`(addr self, addr argArr[0], nil, 1)
proc get*(self: var Array; index: Int): Variant =
  nilCheck self
  let argArr = [getPtr index]
  `get(Array Int)`(addr self, addr argArr[0], addr result, 1)
proc get*(self: Array; index: Int): Variant =
  nilCheck self
  let argArr = [getPtr index]
  `get(Array Int)`(addr self, addr argArr[0], addr result, 1)
proc set*(self: var Array; index: Int; value: Variant): void =
  nilCheck self
  let argArr = [getPtr index, getPtr value]
  `set(Array Int Variant)`(addr self, addr argArr[0], nil, 2)
proc pushBack*(self: var Array; value: Variant): void =
  nilCheck self
  let argArr = [getPtr value]
  `pushBack(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc pushFront*(self: var Array; value: Variant): void =
  nilCheck self
  let argArr = [getPtr value]
  `pushFront(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc append*(self: var Array; value: Variant): void =
  nilCheck self
  let argArr = [getPtr value]
  `append(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc appendArray*(self: var Array; array: Array): void =
  nilCheck self
  let argArr = [getPtr array]
  `appendArray(Array Array)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: var Array; size: Int): Int =
  nilCheck self
  let argArr = [getPtr size]
  `resize(Array Int)`(addr self, addr argArr[0], addr result, 1)
proc insert*(self: var Array; position: Int; value: Variant): Int =
  nilCheck self
  let argArr = [getPtr position, getPtr value]
  `insert(Array Int Variant)`(addr self, addr argArr[0], addr result, 2)
proc removeAt*(self: var Array; position: Int): void =
  nilCheck self
  let argArr = [getPtr position]
  `removeAt(Array Int)`(addr self, addr argArr[0], nil, 1)
proc fill*(self: var Array; value: Variant): void =
  nilCheck self
  let argArr = [getPtr value]
  `fill(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc erase*(self: var Array; value: Variant): void =
  nilCheck self
  let argArr = [getPtr value]
  `erase(Array Variant)`(addr self, addr argArr[0], nil, 1)
proc front*(self: var Array): Variant =
  nilCheck self
  `front(Array)`(addr self, nil, addr result, 0)
proc front*(self: Array): Variant =
  nilCheck self
  `front(Array)`(addr self, nil, addr result, 0)
proc back*(self: var Array): Variant =
  nilCheck self
  `back(Array)`(addr self, nil, addr result, 0)
proc back*(self: Array): Variant =
  nilCheck self
  `back(Array)`(addr self, nil, addr result, 0)
proc pickRandom*(self: var Array): Variant =
  nilCheck self
  `pickRandom(Array)`(addr self, nil, addr result, 0)
proc pickRandom*(self: Array): Variant =
  nilCheck self
  `pickRandom(Array)`(addr self, nil, addr result, 0)
proc find*(self: var Array; what: Variant; `from`: Int = 0): Int =
  nilCheck self
  let argArr = [getPtr what, getPtr `from`]
  `find(Array Variant Int)`(addr self, addr argArr[0], addr result, 2)
proc find*(self: Array; what: Variant; `from`: Int = 0): Int =
  nilCheck self
  let argArr = [getPtr what, getPtr `from`]
  `find(Array Variant Int)`(addr self, addr argArr[0], addr result, 2)
proc findCustom*(self: var Array; `method`: Callable; `from`: Int = 0): Int =
  nilCheck self
  let argArr = [getPtr `method`, getPtr `from`]
  `findCustom(Array Callable Int)`(addr self, addr argArr[0], addr result, 2)
proc findCustom*(self: Array; `method`: Callable; `from`: Int = 0): Int =
  nilCheck self
  let argArr = [getPtr `method`, getPtr `from`]
  `findCustom(Array Callable Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: var Array; what: Variant; `from`: Int = -1): Int =
  nilCheck self
  let argArr = [getPtr what, getPtr `from`]
  `rfind(Array Variant Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: Array; what: Variant; `from`: Int = -1): Int =
  nilCheck self
  let argArr = [getPtr what, getPtr `from`]
  `rfind(Array Variant Int)`(addr self, addr argArr[0], addr result, 2)
proc rfindCustom*(self: var Array; `method`: Callable; `from`: Int = -1): Int =
  nilCheck self
  let argArr = [getPtr `method`, getPtr `from`]
  `rfindCustom(Array Callable Int)`(addr self, addr argArr[0], addr result, 2)
proc rfindCustom*(self: Array; `method`: Callable; `from`: Int = -1): Int =
  nilCheck self
  let argArr = [getPtr `method`, getPtr `from`]
  `rfindCustom(Array Callable Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: var Array; value: Variant): Int =
  nilCheck self
  let argArr = [getPtr value]
  `count(Array Variant)`(addr self, addr argArr[0], addr result, 1)
proc count*(self: Array; value: Variant): Int =
  nilCheck self
  let argArr = [getPtr value]
  `count(Array Variant)`(addr self, addr argArr[0], addr result, 1)
proc has*(self: var Array; value: Variant): bool =
  nilCheck self
  let argArr = [getPtr value]
  `has(Array Variant)`(addr self, addr argArr[0], addr result, 1)
proc has*(self: Array; value: Variant): bool =
  nilCheck self
  let argArr = [getPtr value]
  `has(Array Variant)`(addr self, addr argArr[0], addr result, 1)
proc popBack*(self: var Array): Variant =
  nilCheck self
  `popBack(Array)`(addr self, nil, addr result, 0)
proc popFront*(self: var Array): Variant =
  nilCheck self
  `popFront(Array)`(addr self, nil, addr result, 0)
proc popAt*(self: var Array; position: Int): Variant =
  nilCheck self
  let argArr = [getPtr position]
  `popAt(Array Int)`(addr self, addr argArr[0], addr result, 1)
proc sort*(self: var Array): void =
  nilCheck self
  `sort(Array)`(addr self, nil, nil, 0)
proc sortCustom*(self: var Array; `func`: Callable): void =
  nilCheck self
  let argArr = [getPtr `func`]
  `sortCustom(Array Callable)`(addr self, addr argArr[0], nil, 1)
proc shuffle*(self: var Array): void =
  nilCheck self
  `shuffle(Array)`(addr self, nil, nil, 0)
proc bsearch*(self: var Array; value: Variant; before: bool = true): Int =
  nilCheck self
  let argArr = [getPtr value, getPtr before]
  `bsearch(Array Variant bool)`(addr self, addr argArr[0], addr result, 2)
proc bsearch*(self: Array; value: Variant; before: bool = true): Int =
  nilCheck self
  let argArr = [getPtr value, getPtr before]
  `bsearch(Array Variant bool)`(addr self, addr argArr[0], addr result, 2)
proc bsearchCustom*(self: var Array; value: Variant; `func`: Callable; before: bool = true): Int =
  nilCheck self
  let argArr = [getPtr value, getPtr `func`, getPtr before]
  `bsearchCustom(Array Variant Callable bool)`(addr self, addr argArr[0], addr result, 3)
proc bsearchCustom*(self: Array; value: Variant; `func`: Callable; before: bool = true): Int =
  nilCheck self
  let argArr = [getPtr value, getPtr `func`, getPtr before]
  `bsearchCustom(Array Variant Callable bool)`(addr self, addr argArr[0], addr result, 3)
proc reverse*(self: var Array): void =
  nilCheck self
  `reverse(Array)`(addr self, nil, nil, 0)
proc duplicate*(self: var Array; deep: bool = false): Array =
  nilCheck self
  let argArr = [getPtr deep]
  `duplicate(Array bool)`(addr self, addr argArr[0], addr result, 1)
proc duplicate*(self: Array; deep: bool = false): Array =
  nilCheck self
  let argArr = [getPtr deep]
  `duplicate(Array bool)`(addr self, addr argArr[0], addr result, 1)
proc slice*(self: var Array; begin: Int; `end`: Int = 2147483647; step: Int = 1; deep: bool = false): Array =
  nilCheck self
  let argArr = [getPtr begin, getPtr `end`, getPtr step, getPtr deep]
  `slice(Array Int Int Int bool)`(addr self, addr argArr[0], addr result, 4)
proc slice*(self: Array; begin: Int; `end`: Int = 2147483647; step: Int = 1; deep: bool = false): Array =
  nilCheck self
  let argArr = [getPtr begin, getPtr `end`, getPtr step, getPtr deep]
  `slice(Array Int Int Int bool)`(addr self, addr argArr[0], addr result, 4)
proc filter*(self: var Array; `method`: Callable): Array =
  nilCheck self
  let argArr = [getPtr `method`]
  `filter(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc filter*(self: Array; `method`: Callable): Array =
  nilCheck self
  let argArr = [getPtr `method`]
  `filter(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc map*(self: var Array; `method`: Callable): Array =
  nilCheck self
  let argArr = [getPtr `method`]
  `map(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc map*(self: Array; `method`: Callable): Array =
  nilCheck self
  let argArr = [getPtr `method`]
  `map(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc reduce*(self: var Array; `method`: Callable; accum: Variant = default(Variant)): Variant =
  nilCheck self
  let argArr = [getPtr `method`, getPtr accum]
  `reduce(Array Callable Variant)`(addr self, addr argArr[0], addr result, 2)
proc reduce*(self: Array; `method`: Callable; accum: Variant = default(Variant)): Variant =
  nilCheck self
  let argArr = [getPtr `method`, getPtr accum]
  `reduce(Array Callable Variant)`(addr self, addr argArr[0], addr result, 2)
proc any*(self: var Array; `method`: Callable): bool =
  nilCheck self
  let argArr = [getPtr `method`]
  `any(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc any*(self: Array; `method`: Callable): bool =
  nilCheck self
  let argArr = [getPtr `method`]
  `any(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc all*(self: var Array; `method`: Callable): bool =
  nilCheck self
  let argArr = [getPtr `method`]
  `all(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc all*(self: Array; `method`: Callable): bool =
  nilCheck self
  let argArr = [getPtr `method`]
  `all(Array Callable)`(addr self, addr argArr[0], addr result, 1)
proc max*(self: var Array): Variant =
  nilCheck self
  `max(Array)`(addr self, nil, addr result, 0)
proc max*(self: Array): Variant =
  nilCheck self
  `max(Array)`(addr self, nil, addr result, 0)
proc min*(self: var Array): Variant =
  nilCheck self
  `min(Array)`(addr self, nil, addr result, 0)
proc min*(self: Array): Variant =
  nilCheck self
  `min(Array)`(addr self, nil, addr result, 0)
proc isTyped*(self: var Array): bool =
  nilCheck self
  `isTyped(Array)`(addr self, nil, addr result, 0)
proc isTyped*(self: Array): bool =
  nilCheck self
  `isTyped(Array)`(addr self, nil, addr result, 0)
proc isSameTyped*(self: var Array; array: Array): bool =
  nilCheck self
  let argArr = [getPtr array]
  `isSameTyped(Array Array)`(addr self, addr argArr[0], addr result, 1)
proc isSameTyped*(self: Array; array: Array): bool =
  nilCheck self
  let argArr = [getPtr array]
  `isSameTyped(Array Array)`(addr self, addr argArr[0], addr result, 1)
proc getTypedBuiltin*(self: var Array): Int =
  nilCheck self
  `getTypedBuiltin(Array)`(addr self, nil, addr result, 0)
proc getTypedBuiltin*(self: Array): Int =
  nilCheck self
  `getTypedBuiltin(Array)`(addr self, nil, addr result, 0)
proc getTypedClassName*(self: var Array): StringName =
  nilCheck self
  `getTypedClassName(Array)`(addr self, nil, addr result, 0)
proc getTypedClassName*(self: Array): StringName =
  nilCheck self
  `getTypedClassName(Array)`(addr self, nil, addr result, 0)
proc getTypedScript*(self: var Array): Variant =
  nilCheck self
  `getTypedScript(Array)`(addr self, nil, addr result, 0)
proc getTypedScript*(self: Array): Variant =
  nilCheck self
  `getTypedScript(Array)`(addr self, nil, addr result, 0)
proc makeReadOnly*(self: var Array): void =
  nilCheck self
  `makeReadOnly(Array)`(addr self, nil, nil, 0)
proc isReadOnly*(self: var Array): bool =
  nilCheck self
  `isReadOnly(Array)`(addr self, nil, addr result, 0)
proc isReadOnly*(self: Array): bool =
  nilCheck self
  `isReadOnly(Array)`(addr self, nil, addr result, 0)

proc load_Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `size(Array)` = load(VariantType_Array, "size", 3173160232)
  `isEmpty(Array)` = load(VariantType_Array, "is_empty", 3918633141)
  `clear(Array)` = load(VariantType_Array, "clear", 3218959716)
  `hash(Array)` = load(VariantType_Array, "hash", 3173160232)
  `assign(Array Array)` = load(VariantType_Array, "assign", 2307260970)
  `get(Array Int)` = load(VariantType_Array, "get", 708700221)
  `set(Array Int Variant)` = load(VariantType_Array, "set", 3798478031)
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
  `findCustom(Array Callable Int)` = load(VariantType_Array, "find_custom", 2145562546)
  `rfind(Array Variant Int)` = load(VariantType_Array, "rfind", 2336346817)
  `rfindCustom(Array Callable Int)` = load(VariantType_Array, "rfind_custom", 2145562546)
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
