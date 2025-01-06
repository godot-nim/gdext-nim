import gdext/gdinterface/[variants, exceptions, extracommands]

import gdext/core/[typeshift, builtinindex]
import std/[strformat]

export variants.evaluate
export variants.call
export variants.callStatic
export variants.hasMethod
export variants.hasMember
export variants.hash
export variants.recursiveHash
export variants.hashCompare
export variants.booleanize
export variants.duplicate
export variants.canConvert
export variants.canConvertStrict
export variants.getType
export variants.variant
export variants.copy
export variants.clear

proc `$`*(v: Variant): string = $v.stringify

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
  let res = evaluate(VariantOP_Equal, addr self, addr other, valid)
  if not valid: self.getType == other.getType
  else: res.get bool
proc `!=`*(self, other: Variant): bool =
  var valid: bool
  let res = evaluate(VariantOP_NotEqual, addr self, addr other, valid)
  if not valid: self.getType != other.getType
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
