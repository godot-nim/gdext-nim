# `==(PackedVector3Array Variant)`
# `!=(PackedVector3Array Variant)`
var `not(PackedVector3Array)`: PtrOperatorEvaluator
var `*(PackedVector3Array Transform3D)`: PtrOperatorEvaluator
# `in(PackedVector3Array Dictionary)`
# `in(PackedVector3Array Array)`
var `==(PackedVector3Array PackedVector3Array)`: PtrOperatorEvaluator
# `!=(PackedVector3Array PackedVector3Array)`
var `+(PackedVector3Array PackedVector3Array)`: PtrOperatorEvaluator
func `not`*(left: PackedVector3Array): bool = {.noSideEffect.}: `not(PackedVector3Array)`(getPtr left, nil, addr result)
func `*`*(left: PackedVector3Array; right: Transform3D): PackedVector3Array = {.noSideEffect.}: `*(PackedVector3Array Transform3D)`(getPtr left, getPtr right, addr result)
func `==`*(left: PackedVector3Array; right: PackedVector3Array): bool = {.noSideEffect.}: `==(PackedVector3Array PackedVector3Array)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedVector3Array; right: PackedVector3Array): PackedVector3Array = {.noSideEffect.}: `+(PackedVector3Array PackedVector3Array)`(getPtr left, getPtr right, addr result)
proc load_PackedVector3Array_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedVector3Array)` = load(opNot, VariantType_PackedVector3Array, VariantType_Nil)
  `*(PackedVector3Array Transform3D)` = load(opMultiply, VariantType_PackedVector3Array, VariantType_Transform3D)
  `==(PackedVector3Array PackedVector3Array)` = load(opEqual, VariantType_PackedVector3Array, VariantType_PackedVector3Array)
  `+(PackedVector3Array PackedVector3Array)` = load(opAdd, VariantType_PackedVector3Array, VariantType_PackedVector3Array)

var `get(PackedVector3Array Int)`: PtrBuiltinMethod
var `set(PackedVector3Array Int Vector3)`: PtrBuiltinMethod
var `size(PackedVector3Array)`: PtrBuiltinMethod
var `isEmpty(PackedVector3Array)`: PtrBuiltinMethod
var `pushBack(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `append(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `appendArray(PackedVector3Array PackedVector3Array)`: PtrBuiltinMethod
var `removeAt(PackedVector3Array Int)`: PtrBuiltinMethod
var `insert(PackedVector3Array Int Vector3)`: PtrBuiltinMethod
var `fill(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `resize(PackedVector3Array Int)`: PtrBuiltinMethod
var `clear(PackedVector3Array)`: PtrBuiltinMethod
var `has(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `reverse(PackedVector3Array)`: PtrBuiltinMethod
var `slice(PackedVector3Array Int Int)`: PtrBuiltinMethod
var `toByteArray(PackedVector3Array)`: PtrBuiltinMethod
var `sort(PackedVector3Array)`: PtrBuiltinMethod
var `bsearch(PackedVector3Array Vector3 bool)`: PtrBuiltinMethod
var `duplicate(PackedVector3Array)`: PtrBuiltinMethod
var `find(PackedVector3Array Vector3 Int)`: PtrBuiltinMethod
var `rfind(PackedVector3Array Vector3 Int)`: PtrBuiltinMethod
var `count(PackedVector3Array Vector3)`: PtrBuiltinMethod
var `erase(PackedVector3Array Vector3)`: PtrBuiltinMethod

proc get*(self: PackedVector3Array; index: Int): Vector3 =
  `get(PackedVector3Array Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var PackedVector3Array; index: Int; value: Vector3): void =
  `set(PackedVector3Array Int Vector3)`.call(addr self, [getPtr index, getPtr value])
proc size*(self: PackedVector3Array): Int =
  `size(PackedVector3Array)`.call(addr self, [], addr result)
proc isEmpty*(self: PackedVector3Array): bool =
  `isEmpty(PackedVector3Array)`.call(addr self, [], addr result)
proc pushBack*(self: var PackedVector3Array; value: Vector3): bool =
  `pushBack(PackedVector3Array Vector3)`.call(addr self, [getPtr value], addr result)
proc append*(self: var PackedVector3Array; value: Vector3): bool =
  `append(PackedVector3Array Vector3)`.call(addr self, [getPtr value], addr result)
proc appendArray*(self: var PackedVector3Array; array: PackedVector3Array): void =
  `appendArray(PackedVector3Array PackedVector3Array)`.call(addr self, [getPtr array])
proc removeAt*(self: var PackedVector3Array; index: Int): void =
  `removeAt(PackedVector3Array Int)`.call(addr self, [getPtr index])
proc insert*(self: var PackedVector3Array; atIndex: Int; value: Vector3): Int =
  `insert(PackedVector3Array Int Vector3)`.call(addr self, [getPtr atIndex, getPtr value], addr result)
proc fill*(self: var PackedVector3Array; value: Vector3): void =
  `fill(PackedVector3Array Vector3)`.call(addr self, [getPtr value])
proc resize*(self: var PackedVector3Array; newSize: Int): Int =
  `resize(PackedVector3Array Int)`.call(addr self, [getPtr newSize], addr result)
proc clear*(self: var PackedVector3Array): void =
  `clear(PackedVector3Array)`.call(addr self, [])
proc has*(self: PackedVector3Array; value: Vector3): bool =
  `has(PackedVector3Array Vector3)`.call(addr self, [getPtr value], addr result)
proc reverse*(self: var PackedVector3Array): void =
  `reverse(PackedVector3Array)`.call(addr self, [])
proc slice*(self: PackedVector3Array; begin: Int; `end`: Int = 2147483647): PackedVector3Array =
  `slice(PackedVector3Array Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc toByteArray*(self: PackedVector3Array): PackedByteArray =
  `toByteArray(PackedVector3Array)`.call(addr self, [], addr result)
proc sort*(self: var PackedVector3Array): void =
  `sort(PackedVector3Array)`.call(addr self, [])
proc bsearch*(self: PackedVector3Array; value: Vector3; before: bool = true): Int =
  `bsearch(PackedVector3Array Vector3 bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc duplicate*(self: PackedVector3Array): PackedVector3Array =
  `duplicate(PackedVector3Array)`.call(addr self, [], addr result)
proc find*(self: PackedVector3Array; value: Vector3; `from`: Int = 0): Int =
  `find(PackedVector3Array Vector3 Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc rfind*(self: PackedVector3Array; value: Vector3; `from`: Int = -1): Int =
  `rfind(PackedVector3Array Vector3 Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc count*(self: PackedVector3Array; value: Vector3): Int =
  `count(PackedVector3Array Vector3)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var PackedVector3Array; value: Vector3): bool =
  `erase(PackedVector3Array Vector3)`.call(addr self, [getPtr value], addr result)

proc load_PackedVector3Array_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedVector3Array Int)` = load(VariantType_PackedVector3Array, "get", 1394941017)
  `set(PackedVector3Array Int Vector3)` = load(VariantType_PackedVector3Array, "set", 3975343409)
  `size(PackedVector3Array)` = load(VariantType_PackedVector3Array, "size", 3173160232)
  `isEmpty(PackedVector3Array)` = load(VariantType_PackedVector3Array, "is_empty", 3918633141)
  `pushBack(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "push_back", 3295363524)
  `append(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "append", 3295363524)
  `appendArray(PackedVector3Array PackedVector3Array)` = load(VariantType_PackedVector3Array, "append_array", 203538016)
  `removeAt(PackedVector3Array Int)` = load(VariantType_PackedVector3Array, "remove_at", 2823966027)
  `insert(PackedVector3Array Int Vector3)` = load(VariantType_PackedVector3Array, "insert", 3892262309)
  `fill(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "fill", 3726392409)
  `resize(PackedVector3Array Int)` = load(VariantType_PackedVector3Array, "resize", 848867239)
  `clear(PackedVector3Array)` = load(VariantType_PackedVector3Array, "clear", 3218959716)
  `has(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "has", 1749054343)
  `reverse(PackedVector3Array)` = load(VariantType_PackedVector3Array, "reverse", 3218959716)
  `slice(PackedVector3Array Int Int)` = load(VariantType_PackedVector3Array, "slice", 2086131305)
  `toByteArray(PackedVector3Array)` = load(VariantType_PackedVector3Array, "to_byte_array", 247621236)
  `sort(PackedVector3Array)` = load(VariantType_PackedVector3Array, "sort", 3218959716)
  `bsearch(PackedVector3Array Vector3 bool)` = load(VariantType_PackedVector3Array, "bsearch", 1259277637)
  `duplicate(PackedVector3Array)` = load(VariantType_PackedVector3Array, "duplicate", 4171207452)
  `find(PackedVector3Array Vector3 Int)` = load(VariantType_PackedVector3Array, "find", 3718155780)
  `rfind(PackedVector3Array Vector3 Int)` = load(VariantType_PackedVector3Array, "rfind", 3718155780)
  `count(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "count", 194580386)
  `erase(PackedVector3Array Vector3)` = load(VariantType_PackedVector3Array, "erase", 3295363524)
