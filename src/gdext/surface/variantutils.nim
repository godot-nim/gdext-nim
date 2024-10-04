import gdext/dirty/gdextensioninterface
import gdext/core/commandindex
import gdext/core/builtinindex
import gdext/core/typeshift
import gdext/core/varianttools

import std/[hashes, strformat, sequtils]

type VariantTypeDefect* = object of CatchableError
type VariantCallError* = object of CatchableError

proc `$`*(v: Variant): string = $v.stringify

proc variantType*(v: Variant): VariantType =
  interfaceVariantGetType(addr v)

const OpName: array[VariantOperator, string] = [
  "==",
  "!=",
  "<",
  "<=",
  ">",
  ">=",
  "+",
  "-",
  "*",
  "/",
  "+",
  "-",
  "mod",
  "power",
  "shl",
  "shr",
  "and",
  "or",
  "xor",
  "not",
  "and",
  "or",
  "xor",
  "not",
  "contains",
]
const ErrorName: array[CallErrorType, string] = [
  "ok",
  "invalid method",
  "invalid argument",
  "too many argument",
  "too few argument",
  "instance is nil",
  "method not const",
]

proc newVariantTypeDefect(op: VariantOperator; a, b: ptr Variant): ref VariantTypeDefect =
  newException(VariantTypeDefect,
    if b.isNil:
      &"{OpName[op]} {variantType a[]} is invalid operation; type mismatch"
    else:
      &"{variantType a[]} {OpName[op]} {variantType b[]} is invalid operation; type mismatch")
proc evaluate*(op: VariantOperator; a, b: ptr Variant; valid: var bool): Variant =
  interface_Variant_evaluate(op, cast[VariantPtr](a), cast[VariantPtr](b), addr result, addr valid)
proc evaluate*(op: VariantOperator; a, b: ptr Variant): Variant =
  var valid: bool
  result = evaluate(op, a, b, valid)
  if not valid: raise newVariantTypeDefect(op, a, b)


proc `==`*(self, other: Variant): bool =
  var valid: bool
  let res = evaluate(VariantOP_Equal, addr self, addr other, valid)
  if not valid: self.variantType == other.variantType
  else: res.get bool
proc `!=`*(self, other: Variant): bool =
  var valid: bool
  let res = evaluate(VariantOP_NotEqual, addr self, addr other, valid)
  if not valid: self.variantType != other.variantType
  else: res.get bool

proc `<`*(self, other: Variant): bool =
  evaluate(VariantOP_Less, addr self, addr other).get bool
proc `<=`*(self, other: Variant): bool =
  evaluate(VariantOP_LessEqual, addr self, addr other).get bool
proc `>`*(self, other: Variant): bool =
  evaluate(VariantOP_Greater, addr self, addr other).get bool
proc `>=`*(self, other: Variant): bool =
  evaluate(VariantOP_GreaterEqual, addr self, addr other).get bool

proc contains*(self: Variant; index: Variant): bool =
  evaluate(VariantOpIn, addr index, addr self).get bool

proc call*(self: Variant; `method`: StringName; err: var CallError; args: varargs[Variant, variant]): Variant {.discardable.} =
  if args.len == 0:
    interface_Variant_call(addr self, addr `method`, nil, 0, addr result, addr err)
  else:
    let args = args.mapIt(cast[pointer](addr it))
    interface_Variant_call(addr self, addr `method`, addr args[0], args.len, addr result, addr err)

proc callStatic*(T: VariantType; `method`: StringName; err: var CallError; args: varargs[Variant, variant]): Variant {.discardable.} =
  if args.len == 0:
    interface_Variant_callStatic(T, addr `method`, nil, 0, addr result, addr err)
  else:
    let args = args.mapIt(cast[pointer](addr it))
    interface_Variant_callStatic(T, addr `method`, addr args[0], args.len, addr result, addr err)

proc call*(self: Variant; `method`: StringName; args: varargs[Variant, variant]): Variant {.discardable.} =
  var err: CallError
  result = self.call(`method`, err, args)
  if err.error != CallOk:
    raise newException(VariantCallError, ErrorName[err.error])

proc callStatic*(T: VariantType; `method`: StringName; args: varargs[Variant, variant]): Variant {.discardable.} =
  var err: CallError
  result = callStatic(T, `method`, err, args)
  if err.error != CallOk:
    raise newException(VariantCallError, ErrorName[err.error])

template check_type(defect; mhd: string; v): untyped =
  if not isValid: raise newException(defect, mhd & " is invalid. Variant(" & $self.variantType & ") cannot contain Variant(" & $v.variantType & ").")
template check_bound(defect): untyped =
  if outOfBound: raise newException(defect, "Out of bound. Got index " & $index & ".")

proc `[]=`*(self: Variant; key: Variant; value: Variant) =
  var isValid: bool
  self.set(key, value, isValid)
  check_type KeyError, "set[Variant]", value
  if not isValid: raise newException(IndexDefect, "")
proc `[]=`*(self: Variant; name: StringName; value: Variant) =
  var isValid: bool
  self.set_named(name, value, isValid)
  check_type KeyError, "set[StringName]", value
proc `[]=`*(self: Variant; index: int; value: Variant) =
  var isValid, outOfBound: bool
  self.set_indexed(index, value, isValid, outOfBound)
  check_type IndexDefect, "set[int]", value
  check_bound IndexDefect

proc `[]`*(self: Variant; key: Variant): Variant =
  var isValid: bool
  result = self.get(key, isValid)
  check_type KeyError, "get[Variant]", result
proc `[]`*(self: Variant; name: StringName): Variant =
  var isValid: bool
  result = self.get_named(name, isValid)
  check_type KeyError, "get[StringName]", result
proc `[]`*(self: Variant; index: int): Variant =
  var isValid, outOfBound: bool
  result = self.get_indexed(index, isValid, outOfBound)
  check_type IndexDefect, "get[int]", result
  check_bound IndexDefect

iterator keys*(self: Variant): Variant =
  var iter: Variant
  var valid: bool
  if self.iter_init(iter, valid) and valid:
    while true:
      yield iter
      if not (self.iter_next(iter, valid) and valid): break

iterator items*(self: Variant): Variant =
  for key in self.keys: yield self[key]
iterator pairs*(self: Variant): tuple[key, item: Variant] =
  for key in self.keys: yield (key, self[key])

proc hasMethod*(self: Variant; metho: StringName): bool =
  interfaceVariantHasMethod(addr self, addr metho)

proc hasMember*(typ: VariantType; member: StringName): bool =
  interfaceVariantHasMember(typ, addr member)

proc hash*(self: Variant): Hash = hash interface_Variant_hash(addr self)

proc recursiveHash*(self: Variant; recursion_count: int): Hash =
  hash interfaceVariantRecursiveHash(addr self, recursion_count)

proc hashCompare*(self, other: Variant): bool =
  interfaceVariantHashCompare(addr self, addr other)

proc booleanize*(self: Variant): bool =
  interfaceVariantBooleanize(addr self)

proc duplicate*(self: Variant): Variant =
  interfaceVariantDuplicate(addr self, addr result, true)

proc canConvert*(src, dst: VariantType): bool =
  interfaceVariantCanConvert(src, dst)

proc canConvertStrict*(src, dst: VariantType): bool =
  interfaceVariantCanConvertStrict(src, dst)

proc clear*(self: Variant) =
  const needs_deinit: array[VariantType, bool] = [
    false, # NIL,
    false, # BOOL,
    false, # INT,
    false, # FLOAT,
    true, # STRING,
    false, # VECTOR2,
    false, # VECTOR2I,
    false, # RECT2,
    false, # RECT2I,
    false, # VECTOR3,
    false, # VECTOR3I,
    true, # TRANSFORM2D,
    false, # VECTOR4,
    false, # VECTOR4I,
    false, # PLANE,
    false, # QUATERNION,
    true, # AABB,
    true, # BASIS,
    true, # TRANSFORM3D,
    true, # PROJECTION,

    # misc types
    false, # COLOR,
    true, # STRING_NAME,
    true, # NODE_PATH,
    false, # RID,
    true, # OBJECT,
    true, # CALLABLE,
    true, # SIGNAL,
    true, # DICTIONARY,
    true, # ARRAY,

    # typed arrays
    true, # PACKED_BYTE_ARRAY,
    true, # PACKED_INT32_ARRAY,
    true, # PACKED_INT64_ARRAY,
    true, # PACKED_FLOAT32_ARRAY,
    true, # PACKED_FLOAT64_ARRAY,
    true, # PACKED_STRING_ARRAY,
    true, # PACKED_VECTOR2_ARRAY,
    true, # PACKED_VECTOR3_ARRAY,
    true, # PACKED_COLOR_ARRAY,
    true, # PACKED_VECTOR4_ARRAY,
  ]

  if unlikely(needs_deinit[self.variantType]):
    interfaceVariantDestroy(addr self)
  interfaceVariantNewNil(addr self)