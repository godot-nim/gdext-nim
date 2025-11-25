import std/[strformat, hashes, sequtils]

import gdext/builtinindex
import gdext/arraytools
import gdext/dicttools
import gdext/private/[gdinterface, typeshift, propertyinfo]

import gdext/classes/gdClassDB

proc iterInit(self: Variant; r_iter: var Variant; r_valid: var bool): bool =
  interfaceVariantIterInit(addr self, addr r_iter, addr r_valid)

proc iterNext(self: Variant; r_iter: var Variant; r_valid: var bool): bool =
  interfaceVariantIterNext(addr self, addr r_iter, addr r_valid)

# proc iterGet(self: Variant; r_iter: var Variant; r_valid: var bool): Variant =
#   interfaceVariantIterGet(addr self, addr r_iter, addr result, addr r_valid)

proc getNamed*(self: Variant; name: StringName; r_isValid: var bool): Variant =
  interfaceVariantGetNamed(addr self, addr name, addr result, addr r_isValid)
proc setNamed*(self: Variant; name: StringName; value: Variant; r_isValid: var bool) =
  interfaceVariantSetNamed(addr self, addr name, addr value, addr r_isValid)

proc getIndexed*(self: Variant; index: int; r_isValid, r_outOfBound: var bool): Variant =
  interfaceVariantGetIndexed(addr self, index, addr result, addr r_isValid, addr r_outOfBound)
proc setIndexed*(self: Variant; index: int; value: Variant; r_isValid, r_outOfBound: var bool) =
  interfaceVariantSetIndexed(addr self, index, addr value, addr r_isValid, addr r_outOfBound)

proc setKeyed*(self: Variant; key: Variant; value: Variant; r_isValid: var bool) =
  interfaceVariantSetKeyed(addr self, addr key, addr value, addr r_isValid)
proc getKeyed*(self: Variant; key: Variant; r_isValid: var bool): Variant =
  interfaceVariantGetKeyed(addr self, addr key, addr result, addr r_isValid)

proc get*(self: Variant; key: Variant; r_isValid: var bool): Variant =
  interfaceVariantGet(addr self, addr key, addr result, addr r_isValid)
proc set*(self: Variant; key: Variant; value: Variant; r_isValid: var bool) =
  interfaceVariantSet(addr self, addr key, addr value, addr r_isValid)

proc evaluate*(op: VariantOperator; a, b: ptr Variant; valid: var bool): Variant =
  interfaceVariantEvaluate(op, cast[VariantPtr](a), cast[VariantPtr](b), addr result, addr valid)

proc call*(self: Variant; `method`: StringName; err: var CallError; args: varargs[Variant, variant]): Variant {.discardable.} =
  if args.len == 0:
    interfaceVariantCall(addr self, addr `method`, nil, 0, addr result, addr err)
  else:
    let args = args.mapIt(cast[pointer](addr it))
    interfaceVariantCall(addr self, addr `method`, addr args[0], args.len, addr result, addr err)

proc callStatic*(T: VariantType; `method`: StringName; err: var CallError; args: varargs[Variant, variant]): Variant {.discardable.} =
  if args.len == 0:
    interfaceVariantCallStatic(T, addr `method`, nil, 0, addr result, addr err)
  else:
    let args = args.mapIt(cast[pointer](addr it))
    interfaceVariantCallStatic(T, addr `method`, addr args[0], args.len, addr result, addr err)

proc hasMethod*(self: Variant; metho: StringName): bool =
  interfaceVariantHasMethod(addr self, addr metho)

proc hasMember*(typ: VariantType; member: StringName): bool =
  interfaceVariantHasMember(typ, addr member)

proc hash*(self: Variant): Hash =
  hash interfaceVariantHash(addr self)

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

proc getType*(v: Variant): VariantType =
  interfaceVariantGetType(addr v)

proc variant*: Variant =
  interfaceVariantNewNil(addr result)

proc copy*(src: Variant): Variant =
  interfaceVariantNewCopy(addr result, addr src)

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

  if unlikely(needs_deinit[self.getType]):
    interfaceVariantDestroy(addr self)
  interfaceVariantNewNil(addr self)

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
  "max",
]

proc newVariantTypeDefect(op: VariantOperator; a, b: ptr Variant): ref GodotVariantTypeDefect =
  newException(GodotVariantTypeDefect,
    if b.isNil:
      &"{OpName[op]} {a[].getType} is invalid operation; type mismatch"
    else:
      &"{a[].getType} {OpName[op]} {b[].getType} is invalid operation; type mismatch")

proc evaluate*(op: VariantOperator; a, b: ptr Variant): Variant =
  var valid: bool
  result = evaluate(op, a, b, valid)
  if not valid: raise newVariantTypeDefect(op, a, b)


proc `==`*(self, other: Variant): bool =
  var valid: bool
  let res = evaluate(opEqual, addr self, addr other, valid)
  if not valid: self.getType == other.getType
  else: res.get bool

proc `<`*(self, other: Variant): bool =
  evaluate(opLess, addr self, addr other).get bool
proc `<=`*(self, other: Variant): bool =
  evaluate(opLessEqual, addr self, addr other).get bool

proc contains*(self: Variant; index: Variant): bool =
  evaluate(opIn, addr index, addr self).get bool

proc call*(self: Variant; `method`: StringName; args: varargs[Variant, variant]): Variant {.discardable.} =
  var err: CallError
  result = self.call(`method`, err, args)
  check err

proc callStatic*(T: VariantType; `method`: StringName; args: varargs[Variant, variant]): Variant {.discardable.} =
  var err: CallError
  result = callStatic(T, `method`, err, args)
  check err

template check_type(defect; mhd: string; v): untyped =
  if not isValid: raise newException(defect, mhd & " is invalid. Variant(" & $self.getType & ") cannot contain Variant(" & $v.getType & ").")

proc `[]=`*(self: Variant; key: Variant; value: Variant) =
  var isValid: bool
  self.set(key, value, isValid)
  check_type KeyError, "set[Variant]", value
  if not isValid: raise newException(IndexDefect, "")
proc `[]`*(self: Variant; key: Variant): Variant =
  var isValid: bool
  result = self.get(key, isValid)
  check_type KeyError, "get[Variant]", result

proc `[]=`*[A, B](self: Variant; key: A; value: B) = self[variant key] = variant value
proc `[]`*[A](self: Variant; key: A): Variant = self[variant key]

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

proc `of`*[T: SomeProperty](a: Variant; b: typedesc[T]): bool =
  {.hint[CondTrue]: off.}
  result = if a.getType == b.variantType:
    when b is Object:
      (a as Object) of b
    elif b is Array:
      when b.T is Variant:
        true
      else:
        let typ = (a as Array[Variant]).getTypedBuiltin.VariantType
        case typ
        of VARIANT_TYPE_OBJECT:
          ClassDB.isParentClass((a as Array[Variant]).getTypedClassName, b.T.className)
        else:
          typ == b.T.variantType
    elif b is Dictionary:
      let matchA = when b.A is Variant:
        true
      else:
        let typA = (a as Dictionary[Variant, Variant]).getTypedKeyBuiltin.VariantType
        case typA
        of VARIANT_TYPE_OBJECT:
          ClassDB.isParentClass((a as Dictionary[Variant, Variant]).getTypedKeyClassName, b.A.className)
        else:
          typA == b.A.variantType
      let matchB = when b.B is Variant:
        true
      else:
        let typB = (a as Dictionary[Variant, Variant]).getTypedValueBuiltin.VariantType
        case typB
        of VARIANT_TYPE_OBJECT:
          ClassDB.isParentClass((a as Dictionary[Variant, Variant]).getTypedValueClassName, b.B.className)
        else:
          typB == b.B.variantType
      matchA and matchB
    else:
      true
  else:
    false
  {.hint[CondTrue]: on.}
