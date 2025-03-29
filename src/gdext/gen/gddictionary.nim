# `==(Dictionary Variant)`
# `!=(Dictionary Variant)`
var `not(Dictionary)`: PtrOperatorEvaluator
var `==(Dictionary Dictionary)`: PtrOperatorEvaluator
# `!=(Dictionary Dictionary)`
# `in(Dictionary Dictionary)`
# `in(Dictionary Array)`
func `not`*(left: Dictionary): bool = {.noSideEffect.}: `not(Dictionary)`(getPtr left, nil, addr result)
func `==`*(left: Dictionary; right: Dictionary): bool = {.noSideEffect.}: `==(Dictionary Dictionary)`(getPtr left, getPtr right, addr result)
proc load_Dictionary_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Dictionary)` = load(opNot, VariantType_Dictionary, VariantType_Nil)
  `==(Dictionary Dictionary)` = load(opEqual, VariantType_Dictionary, VariantType_Dictionary)

var `size(Dictionary)`: PtrBuiltinMethod
var `isEmpty(Dictionary)`: PtrBuiltinMethod
var `clear(Dictionary)`: PtrBuiltinMethod
var `assign(Dictionary Dictionary)`: PtrBuiltinMethod
var `sort(Dictionary)`: PtrBuiltinMethod
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
var `set(Dictionary Variant Variant)`: PtrBuiltinMethod
var `isTyped(Dictionary)`: PtrBuiltinMethod
var `isTypedKey(Dictionary)`: PtrBuiltinMethod
var `isTypedValue(Dictionary)`: PtrBuiltinMethod
var `isSameTyped(Dictionary Dictionary)`: PtrBuiltinMethod
var `isSameTypedKey(Dictionary Dictionary)`: PtrBuiltinMethod
var `isSameTypedValue(Dictionary Dictionary)`: PtrBuiltinMethod
var `getTypedKeyBuiltin(Dictionary)`: PtrBuiltinMethod
var `getTypedValueBuiltin(Dictionary)`: PtrBuiltinMethod
var `getTypedKeyClassName(Dictionary)`: PtrBuiltinMethod
var `getTypedValueClassName(Dictionary)`: PtrBuiltinMethod
var `getTypedKeyScript(Dictionary)`: PtrBuiltinMethod
var `getTypedValueScript(Dictionary)`: PtrBuiltinMethod
var `makeReadOnly(Dictionary)`: PtrBuiltinMethod
var `isReadOnly(Dictionary)`: PtrBuiltinMethod
var `recursiveEqual(Dictionary Dictionary Int)`: PtrBuiltinMethod

proc size*(self: Dictionary): Int =
  `size(Dictionary)`(addr self, nil, addr result, 0)
proc isEmpty*(self: Dictionary): bool =
  `isEmpty(Dictionary)`(addr self, nil, addr result, 0)
proc clear*(self: var Dictionary): void =
  `clear(Dictionary)`(addr self, nil, nil, 0)
proc assign*(self: var Dictionary; dictionary: Dictionary): void =
  let argArr = [getPtr dictionary]
  `assign(Dictionary Dictionary)`(addr self, addr argArr[0], nil, 1)
proc sort*(self: var Dictionary): void =
  `sort(Dictionary)`(addr self, nil, nil, 0)
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
proc set*(self: var Dictionary; key: Variant; value: Variant): bool =
  let argArr = [getPtr key, getPtr value]
  `set(Dictionary Variant Variant)`(addr self, addr argArr[0], addr result, 2)
proc isTyped*(self: Dictionary): bool =
  `isTyped(Dictionary)`(addr self, nil, addr result, 0)
proc isTypedKey*(self: Dictionary): bool =
  `isTypedKey(Dictionary)`(addr self, nil, addr result, 0)
proc isTypedValue*(self: Dictionary): bool =
  `isTypedValue(Dictionary)`(addr self, nil, addr result, 0)
proc isSameTyped*(self: Dictionary; dictionary: Dictionary): bool =
  let argArr = [getPtr dictionary]
  `isSameTyped(Dictionary Dictionary)`(addr self, addr argArr[0], addr result, 1)
proc isSameTypedKey*(self: Dictionary; dictionary: Dictionary): bool =
  let argArr = [getPtr dictionary]
  `isSameTypedKey(Dictionary Dictionary)`(addr self, addr argArr[0], addr result, 1)
proc isSameTypedValue*(self: Dictionary; dictionary: Dictionary): bool =
  let argArr = [getPtr dictionary]
  `isSameTypedValue(Dictionary Dictionary)`(addr self, addr argArr[0], addr result, 1)
proc getTypedKeyBuiltin*(self: Dictionary): Int =
  `getTypedKeyBuiltin(Dictionary)`(addr self, nil, addr result, 0)
proc getTypedValueBuiltin*(self: Dictionary): Int =
  `getTypedValueBuiltin(Dictionary)`(addr self, nil, addr result, 0)
proc getTypedKeyClassName*(self: Dictionary): StringName =
  `getTypedKeyClassName(Dictionary)`(addr self, nil, addr result, 0)
proc getTypedValueClassName*(self: Dictionary): StringName =
  `getTypedValueClassName(Dictionary)`(addr self, nil, addr result, 0)
proc getTypedKeyScript*(self: Dictionary): Variant =
  `getTypedKeyScript(Dictionary)`(addr self, nil, addr result, 0)
proc getTypedValueScript*(self: Dictionary): Variant =
  `getTypedValueScript(Dictionary)`(addr self, nil, addr result, 0)
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
  `assign(Dictionary Dictionary)` = load(VariantType_Dictionary, "assign", 3642266950)
  `sort(Dictionary)` = load(VariantType_Dictionary, "sort", 3218959716)
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
  `set(Dictionary Variant Variant)` = load(VariantType_Dictionary, "set", 2175348267)
  `isTyped(Dictionary)` = load(VariantType_Dictionary, "is_typed", 3918633141)
  `isTypedKey(Dictionary)` = load(VariantType_Dictionary, "is_typed_key", 3918633141)
  `isTypedValue(Dictionary)` = load(VariantType_Dictionary, "is_typed_value", 3918633141)
  `isSameTyped(Dictionary Dictionary)` = load(VariantType_Dictionary, "is_same_typed", 3471775634)
  `isSameTypedKey(Dictionary Dictionary)` = load(VariantType_Dictionary, "is_same_typed_key", 3471775634)
  `isSameTypedValue(Dictionary Dictionary)` = load(VariantType_Dictionary, "is_same_typed_value", 3471775634)
  `getTypedKeyBuiltin(Dictionary)` = load(VariantType_Dictionary, "get_typed_key_builtin", 3173160232)
  `getTypedValueBuiltin(Dictionary)` = load(VariantType_Dictionary, "get_typed_value_builtin", 3173160232)
  `getTypedKeyClassName(Dictionary)` = load(VariantType_Dictionary, "get_typed_key_class_name", 1825232092)
  `getTypedValueClassName(Dictionary)` = load(VariantType_Dictionary, "get_typed_value_class_name", 1825232092)
  `getTypedKeyScript(Dictionary)` = load(VariantType_Dictionary, "get_typed_key_script", 1460142086)
  `getTypedValueScript(Dictionary)` = load(VariantType_Dictionary, "get_typed_value_script", 1460142086)
  `makeReadOnly(Dictionary)` = load(VariantType_Dictionary, "make_read_only", 3218959716)
  `isReadOnly(Dictionary)` = load(VariantType_Dictionary, "is_read_only", 3918633141)
  `recursiveEqual(Dictionary Dictionary Int)` = load(VariantType_Dictionary, "recursive_equal", 1404404751)
