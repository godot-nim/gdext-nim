# `==(Dictionary Variant)`
# `!=(Dictionary Variant)`
var `not(Dictionary)`: PtrOperatorEvaluator
var `==(Dictionary Dictionary)`: PtrOperatorEvaluator
# `!=(Dictionary Dictionary)`
# `in(Dictionary Dictionary)`
# `in(Dictionary Array)`
func `not`*(left: Dictionary[Variant, Variant]): bool = {.noSideEffect.}:
  nilCheck left
  `not(Dictionary)`(getPtr left, nil, addr result)
func `==`*(left: Dictionary[Variant, Variant]; right: Dictionary[Variant, Variant]): bool = {.noSideEffect.}:
  nilCheck left
  nilCheck right
  `==(Dictionary Dictionary)`(getPtr left, getPtr right, addr result)
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
var `duplicateDeep(Dictionary Int)`: PtrBuiltinMethod
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

proc size*(self: Dictionary[Variant, Variant]): Int =
  nilCheck self
  `size(Dictionary)`.call(addr self, [], addr result)
proc isEmpty*(self: Dictionary[Variant, Variant]): bool =
  nilCheck self
  `isEmpty(Dictionary)`.call(addr self, [], addr result)
proc clear*(self: var Dictionary[Variant, Variant]): void =
  nilCheck self
  `clear(Dictionary)`.call(addr self, [])
proc assign*(self: var Dictionary[Variant, Variant]; dictionary: Dictionary[Variant, Variant]): void =
  nilCheck self
  nilCheck dictionary
  `assign(Dictionary Dictionary)`.call(addr self, [getPtr dictionary])
proc sort*(self: var Dictionary[Variant, Variant]): void =
  nilCheck self
  `sort(Dictionary)`.call(addr self, [])
proc merge*(self: var Dictionary[Variant, Variant]; dictionary: Dictionary[Variant, Variant]; overwrite: bool = false): void =
  nilCheck self
  nilCheck dictionary
  `merge(Dictionary Dictionary bool)`.call(addr self, [getPtr dictionary, getPtr overwrite])
proc merged*(self: Dictionary[Variant, Variant]; dictionary: Dictionary[Variant, Variant]; overwrite: bool = false): Dictionary[Variant, Variant] =
  nilCheck self
  nilCheck dictionary
  `merged(Dictionary Dictionary bool)`.call(addr self, [getPtr dictionary, getPtr overwrite], addr result)
proc has*(self: Dictionary[Variant, Variant]; key: Variant): bool =
  nilCheck self
  `has(Dictionary Variant)`.call(addr self, [getPtr key], addr result)
proc hasAll*(self: Dictionary[Variant, Variant]; keys: Array[Variant]): bool =
  nilCheck self
  nilCheck keys
  `hasAll(Dictionary Array)`.call(addr self, [getPtr keys], addr result)
proc findKey*(self: Dictionary[Variant, Variant]; value: Variant): Variant =
  nilCheck self
  `findKey(Dictionary Variant)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var Dictionary[Variant, Variant]; key: Variant): bool =
  nilCheck self
  `erase(Dictionary Variant)`.call(addr self, [getPtr key], addr result)
proc hash*(self: Dictionary[Variant, Variant]): Hash =
  nilCheck self
  `hash(Dictionary)`.call(addr self, [], addr result)
proc keys*(self: Dictionary[Variant, Variant]): Array[Variant] =
  nilCheck self
  `keys(Dictionary)`.call(addr self, [], addr result)
proc values*(self: Dictionary[Variant, Variant]): Array[Variant] =
  nilCheck self
  `values(Dictionary)`.call(addr self, [], addr result)
proc duplicate*(self: Dictionary[Variant, Variant]; deep: bool = false): Dictionary[Variant, Variant] =
  nilCheck self
  `duplicate(Dictionary bool)`.call(addr self, [getPtr deep], addr result)
proc duplicateDeep*(self: Dictionary[Variant, Variant]; deepSubresourcesMode: Int = 1): Dictionary[Variant, Variant] =
  nilCheck self
  `duplicateDeep(Dictionary Int)`.call(addr self, [getPtr deepSubresourcesMode], addr result)
proc get*(self: Dictionary[Variant, Variant]; key: Variant; default: Variant = default(Variant)): Variant =
  nilCheck self
  `get(Dictionary Variant Variant)`.call(addr self, [getPtr key, getPtr default], addr result)
proc getOrAdd*(self: var Dictionary[Variant, Variant]; key: Variant; default: Variant = default(Variant)): Variant =
  nilCheck self
  `getOrAdd(Dictionary Variant Variant)`.call(addr self, [getPtr key, getPtr default], addr result)
proc set*(self: var Dictionary[Variant, Variant]; key: Variant; value: Variant): bool =
  nilCheck self
  `set(Dictionary Variant Variant)`.call(addr self, [getPtr key, getPtr value], addr result)
proc isTyped*(self: Dictionary[Variant, Variant]): bool =
  nilCheck self
  `isTyped(Dictionary)`.call(addr self, [], addr result)
proc isTypedKey*(self: Dictionary[Variant, Variant]): bool =
  nilCheck self
  `isTypedKey(Dictionary)`.call(addr self, [], addr result)
proc isTypedValue*(self: Dictionary[Variant, Variant]): bool =
  nilCheck self
  `isTypedValue(Dictionary)`.call(addr self, [], addr result)
proc isSameTyped*(self: Dictionary[Variant, Variant]; dictionary: Dictionary[Variant, Variant]): bool =
  nilCheck self
  nilCheck dictionary
  `isSameTyped(Dictionary Dictionary)`.call(addr self, [getPtr dictionary], addr result)
proc isSameTypedKey*(self: Dictionary[Variant, Variant]; dictionary: Dictionary[Variant, Variant]): bool =
  nilCheck self
  nilCheck dictionary
  `isSameTypedKey(Dictionary Dictionary)`.call(addr self, [getPtr dictionary], addr result)
proc isSameTypedValue*(self: Dictionary[Variant, Variant]; dictionary: Dictionary[Variant, Variant]): bool =
  nilCheck self
  nilCheck dictionary
  `isSameTypedValue(Dictionary Dictionary)`.call(addr self, [getPtr dictionary], addr result)
proc getTypedKeyBuiltin*(self: Dictionary[Variant, Variant]): Int =
  nilCheck self
  `getTypedKeyBuiltin(Dictionary)`.call(addr self, [], addr result)
proc getTypedValueBuiltin*(self: Dictionary[Variant, Variant]): Int =
  nilCheck self
  `getTypedValueBuiltin(Dictionary)`.call(addr self, [], addr result)
proc getTypedKeyClassName*(self: Dictionary[Variant, Variant]): StringName =
  nilCheck self
  `getTypedKeyClassName(Dictionary)`.call(addr self, [], addr result)
proc getTypedValueClassName*(self: Dictionary[Variant, Variant]): StringName =
  nilCheck self
  `getTypedValueClassName(Dictionary)`.call(addr self, [], addr result)
proc getTypedKeyScript*(self: Dictionary[Variant, Variant]): Variant =
  nilCheck self
  `getTypedKeyScript(Dictionary)`.call(addr self, [], addr result)
proc getTypedValueScript*(self: Dictionary[Variant, Variant]): Variant =
  nilCheck self
  `getTypedValueScript(Dictionary)`.call(addr self, [], addr result)
proc makeReadOnly*(self: var Dictionary[Variant, Variant]): void =
  nilCheck self
  `makeReadOnly(Dictionary)`.call(addr self, [])
proc isReadOnly*(self: Dictionary[Variant, Variant]): bool =
  nilCheck self
  `isReadOnly(Dictionary)`.call(addr self, [], addr result)
proc recursiveEqual*(self: Dictionary[Variant, Variant]; dictionary: Dictionary[Variant, Variant]; recursionCount: Int): bool =
  nilCheck self
  nilCheck dictionary
  `recursiveEqual(Dictionary Dictionary Int)`.call(addr self, [getPtr dictionary, getPtr recursionCount], addr result)

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
  `duplicateDeep(Dictionary Int)` = load(VariantType_Dictionary, "duplicate_deep", 2160600714)
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
