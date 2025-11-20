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
func `not`*(left: Array): bool = {.noSideEffect.}:
  nilCheck left
  `not(Array)`(getPtr left, nil, addr result)
func `==`*(left: Array; right: Array): bool = {.noSideEffect.}:
  nilCheck left
  nilCheck right
  `==(Array Array)`(getPtr left, getPtr right, addr result)
func `<`*(left: Array; right: Array): bool = {.noSideEffect.}:
  nilCheck left
  nilCheck right
  `<(Array Array)`(getPtr left, getPtr right, addr result)
func `<=`*(left: Array; right: Array): bool = {.noSideEffect.}:
  nilCheck left
  nilCheck right
  `<=(Array Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: Array; right: Array): Array = {.noSideEffect.}:
  nilCheck left
  nilCheck right
  `+(Array Array)`(getPtr left, getPtr right, addr result)
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
var `duplicateDeep(Array Int)`: PtrBuiltinMethod
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
  nilCheck self
  `size(Array)`.call(addr self, [], addr result)
proc isEmpty*(self: Array): bool =
  nilCheck self
  `isEmpty(Array)`.call(addr self, [], addr result)
proc clear*(self: var Array): void =
  nilCheck self
  `clear(Array)`.call(addr self, [])
proc hash*(self: Array): Hash =
  nilCheck self
  `hash(Array)`.call(addr self, [], addr result)
proc assign*(self: var Array; array: Array): void =
  nilCheck self
  nilCheck array
  `assign(Array Array)`.call(addr self, [getPtr array])
proc get*(self: Array; index: Int): Variant =
  nilCheck self
  `get(Array Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var Array; index: Int; value: Variant): void =
  nilCheck self
  `set(Array Int Variant)`.call(addr self, [getPtr index, getPtr value])
proc pushBack*(self: var Array; value: Variant): void =
  nilCheck self
  `pushBack(Array Variant)`.call(addr self, [getPtr value])
proc pushFront*(self: var Array; value: Variant): void =
  nilCheck self
  `pushFront(Array Variant)`.call(addr self, [getPtr value])
proc append*(self: var Array; value: Variant): void =
  nilCheck self
  `append(Array Variant)`.call(addr self, [getPtr value])
proc appendArray*(self: var Array; array: Array): void =
  nilCheck self
  nilCheck array
  `appendArray(Array Array)`.call(addr self, [getPtr array])
proc resize*(self: var Array; size: Int): Int =
  nilCheck self
  `resize(Array Int)`.call(addr self, [getPtr size], addr result)
proc insert*(self: var Array; position: Int; value: Variant): Int =
  nilCheck self
  `insert(Array Int Variant)`.call(addr self, [getPtr position, getPtr value], addr result)
proc removeAt*(self: var Array; position: Int): void =
  nilCheck self
  `removeAt(Array Int)`.call(addr self, [getPtr position])
proc fill*(self: var Array; value: Variant): void =
  nilCheck self
  `fill(Array Variant)`.call(addr self, [getPtr value])
proc erase*(self: var Array; value: Variant): void =
  nilCheck self
  `erase(Array Variant)`.call(addr self, [getPtr value])
proc front*(self: Array): Variant =
  nilCheck self
  `front(Array)`.call(addr self, [], addr result)
proc back*(self: Array): Variant =
  nilCheck self
  `back(Array)`.call(addr self, [], addr result)
proc pickRandom*(self: Array): Variant =
  nilCheck self
  `pickRandom(Array)`.call(addr self, [], addr result)
proc find*(self: Array; what: Variant; `from`: Int = 0): Int =
  nilCheck self
  `find(Array Variant Int)`.call(addr self, [getPtr what, getPtr `from`], addr result)
proc findCustom*(self: Array; `method`: Callable; `from`: Int = 0): Int =
  nilCheck self
  `findCustom(Array Callable Int)`.call(addr self, [getPtr `method`, getPtr `from`], addr result)
proc rfind*(self: Array; what: Variant; `from`: Int = -1): Int =
  nilCheck self
  `rfind(Array Variant Int)`.call(addr self, [getPtr what, getPtr `from`], addr result)
proc rfindCustom*(self: Array; `method`: Callable; `from`: Int = -1): Int =
  nilCheck self
  `rfindCustom(Array Callable Int)`.call(addr self, [getPtr `method`, getPtr `from`], addr result)
proc count*(self: Array; value: Variant): Int =
  nilCheck self
  `count(Array Variant)`.call(addr self, [getPtr value], addr result)
proc has*(self: Array; value: Variant): bool =
  nilCheck self
  `has(Array Variant)`.call(addr self, [getPtr value], addr result)
proc popBack*(self: var Array): Variant =
  nilCheck self
  `popBack(Array)`.call(addr self, [], addr result)
proc popFront*(self: var Array): Variant =
  nilCheck self
  `popFront(Array)`.call(addr self, [], addr result)
proc popAt*(self: var Array; position: Int): Variant =
  nilCheck self
  `popAt(Array Int)`.call(addr self, [getPtr position], addr result)
proc sort*(self: var Array): void =
  nilCheck self
  `sort(Array)`.call(addr self, [])
proc sortCustom*(self: var Array; `func`: Callable): void =
  nilCheck self
  `sortCustom(Array Callable)`.call(addr self, [getPtr `func`])
proc shuffle*(self: var Array): void =
  nilCheck self
  `shuffle(Array)`.call(addr self, [])
proc bsearch*(self: Array; value: Variant; before: bool = true): Int =
  nilCheck self
  `bsearch(Array Variant bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc bsearchCustom*(self: Array; value: Variant; `func`: Callable; before: bool = true): Int =
  nilCheck self
  `bsearchCustom(Array Variant Callable bool)`.call(addr self, [getPtr value, getPtr `func`, getPtr before], addr result)
proc reverse*(self: var Array): void =
  nilCheck self
  `reverse(Array)`.call(addr self, [])
proc duplicate*(self: Array; deep: bool = false): Array =
  nilCheck self
  `duplicate(Array bool)`.call(addr self, [getPtr deep], addr result)
proc duplicateDeep*(self: Array; deepSubresourcesMode: Int = 1): Array =
  nilCheck self
  `duplicateDeep(Array Int)`.call(addr self, [getPtr deepSubresourcesMode], addr result)
proc slice*(self: Array; begin: Int; `end`: Int = 2147483647; step: Int = 1; deep: bool = false): Array =
  nilCheck self
  `slice(Array Int Int Int bool)`.call(addr self, [getPtr begin, getPtr `end`, getPtr step, getPtr deep], addr result)
proc filter*(self: Array; `method`: Callable): Array =
  nilCheck self
  `filter(Array Callable)`.call(addr self, [getPtr `method`], addr result)
proc map*(self: Array; `method`: Callable): Array =
  nilCheck self
  `map(Array Callable)`.call(addr self, [getPtr `method`], addr result)
proc reduce*(self: Array; `method`: Callable; accum: Variant = default(Variant)): Variant =
  nilCheck self
  `reduce(Array Callable Variant)`.call(addr self, [getPtr `method`, getPtr accum], addr result)
proc any*(self: Array; `method`: Callable): bool =
  nilCheck self
  `any(Array Callable)`.call(addr self, [getPtr `method`], addr result)
proc all*(self: Array; `method`: Callable): bool =
  nilCheck self
  `all(Array Callable)`.call(addr self, [getPtr `method`], addr result)
proc max*(self: Array): Variant =
  nilCheck self
  `max(Array)`.call(addr self, [], addr result)
proc min*(self: Array): Variant =
  nilCheck self
  `min(Array)`.call(addr self, [], addr result)
proc isTyped*(self: Array): bool =
  nilCheck self
  `isTyped(Array)`.call(addr self, [], addr result)
proc isSameTyped*(self: Array; array: Array): bool =
  nilCheck self
  nilCheck array
  `isSameTyped(Array Array)`.call(addr self, [getPtr array], addr result)
proc getTypedBuiltin*(self: Array): Int =
  nilCheck self
  `getTypedBuiltin(Array)`.call(addr self, [], addr result)
proc getTypedClassName*(self: Array): StringName =
  nilCheck self
  `getTypedClassName(Array)`.call(addr self, [], addr result)
proc getTypedScript*(self: Array): Variant =
  nilCheck self
  `getTypedScript(Array)`.call(addr self, [], addr result)
proc makeReadOnly*(self: var Array): void =
  nilCheck self
  `makeReadOnly(Array)`.call(addr self, [])
proc isReadOnly*(self: Array): bool =
  nilCheck self
  `isReadOnly(Array)`.call(addr self, [], addr result)

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
  `duplicateDeep(Array Int)` = load(VariantType_Array, "duplicate_deep", 1949240801)
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
