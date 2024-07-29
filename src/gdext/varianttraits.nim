import gdextcore/dirty/gdextensioninterface
import gdextcore/commandindex
import gdextcore/builtinindex
import gdextcore/typeshift
import gdextcore/gdvariant

import std/hashes

export typeshift.variant

proc stringify*(v: Variant): String =
  interface_Variant_stringify(addr v, addr result)
proc `$`*(v: Variant): string = $v.stringify

proc `variantType`*(v: Variant): VariantType =
  interfaceVariantGetType(addr v)

proc evaluate*(op: VariantOperator; a, b: VariantPtr; ret: var Variant): bool =
  interface_Variant_evaluate(op, a, b, addr ret, addr result)


proc `==`*(self, other: Variant): bool =
  if self.variantType != other.variantType: return
  var res: Variant
  if evaluate(VariantOP_Equal, addr self, addr other, res):
    return res.get bool

proc `<`*(self, other: Variant): bool =
  if self.variantType != other.variantType:
    return self.variantType < other.variantType
  var res: Variant
  if evaluate(VariantOP_Less, addr self, addr other, res):
    return res.get bool

proc call*(self: Variant; `method`: StringName; err: var CallError; args: varargs[VariantPtr]): Variant =
  let head: ptr VariantPtr =
    if args.len == 0: nil
    else: addr args[0]
  interface_Variant_call(addr self, addr `method`, head, args.len, addr result, addr err)

proc callStatic*(_: typedesc[Variant]; T: VariantType; `method`: StringName; err: var CallError; args: varargs[VariantPtr]): Variant =
  let head: ptr VariantPtr =
    if args.len == 0: nil
    else: addr args[0]
  interface_Variant_callStatic(T, addr `method`, head, args.len, addr result, addr err)


template check_type(defect; mhd: string; v): untyped =
  if not isValid: raise newException(defect, mhd & " is invalid. Variant(" & $self.variantType & ") cannot contain Variant(" & $v.variantType & ").")
template check_bound(defect): untyped =
  if outOfBound: raise newException(defect, "Out of bound. Got index " & $index & ".")

proc set*(self: Variant; key: Variant; value: Variant; r_isValid: var bool) =
  interface_variant_set(addr self, addr key, addr value, addr r_isValid)
proc `[]=`*(self: Variant; key: Variant; value: Variant) =
  var isValid: bool
  self.set(key, value, isValid)
  check_type KeyError, "set[Variant]", value
  if not isValid: raise newException(IndexDefect, "")
proc get*(self: Variant; key: Variant; r_isValid: var bool): Variant =
  interface_variant_get(addr self, addr key, addr result, addr r_isValid)
proc `[]`*(self: Variant; key: Variant): Variant =
  var isValid: bool
  result = self.get(key, isValid)
  check_type KeyError, "get[Variant]", result

proc set_named*(self: Variant; name: StringName; value: Variant; r_isValid: var bool) =
  interface_variant_set_named(addr self, addr name, addr value, addr r_isValid)
proc `[]=`*(self: Variant; name: StringName; value: Variant) =
  var isValid: bool
  self.set_named(name, value, isValid)
  check_type KeyError, "set[StringName]", value
proc get_named*(self: Variant; name: StringName; r_isValid: var bool): Variant =
  interface_variant_get_named(addr self, addr name, addr result, addr r_isValid)
proc `[]`*(self: Variant; name: StringName): Variant =
  var isValid: bool
  result = self.get_named(name, isValid)
  check_type KeyError, "get[StringName]", result

proc set_indexed*(self: Variant; index: int; value: Variant; r_isValid, r_outOfBound: var bool) =
  interface_variant_set_indexed(addr self, index, addr value, addr r_isValid, addr r_outOfBound)
proc `[]=`*(self: Variant; index: int; value: Variant) =
  var isValid, outOfBound: bool
  self.set_indexed(index, value, isValid, outOfBound)
  check_type IndexDefect, "set[int]", value
  check_bound IndexDefect
proc get_indexed*(self: Variant; index: int; r_isValid, r_outOfBound: var bool): Variant =
  interface_variant_get_indexed(addr self, index, addr result, addr r_isValid, addr r_outOfBound)
proc `[]`*(self: Variant; index: int): Variant =
  var isValid, outOfBound: bool
  result = self.get_indexed(index, isValid, outOfBound)
  check_type IndexDefect, "get[int]", result
  check_bound IndexDefect

proc set_keyed*(self: Variant; key: Variant; value: Variant; r_isValid: var bool) =
  interface_variant_set_keyed(addr self, addr key, addr value, addr r_isValid)
# proc `[]=`*(self: Variant; key: Variant; value: Variant) =
#   var isValid: bool
#   self.set_keyed(key, value, isValid)
#   check_type KeyError, "set[Variant]", value
proc get_keyed*(self: Variant; key: Variant; r_isValid: var bool): Variant =
  interface_variant_get_keyed(addr self, addr key, addr result, addr r_isValid)
# proc `[]`*(self: Variant; key: Variant): Variant =
#   var isValid: bool
#   result = self.get_keyed(key, isValid)
#   check_type KeyError, "get[Variant]", result

# bool Variant::in(const Variant &index, bool *r_valid) const {
#   Variant result;
#   bool valid;
#   evaluate(OP_IN, *this, index, result, valid);
#   if (r_valid) {
#     *r_valid = valid;
#   }
#   return result.operator bool();
# }

proc iter_init*(self: Variant; r_iter: var Variant; r_valid: var bool): bool =
  interface_Variant_iterInit(addr self, addr r_iter, addr r_valid)

proc iter_next*(self: Variant; r_iter: var Variant; r_valid: var bool): bool =
  interface_Variant_iterNext(addr self, addr r_iter, addr r_valid)

proc iter_get*(self: Variant; r_iter: var Variant; r_valid: var bool): Variant =
  interface_Variant_iterGet(addr self, addr r_iter, addr result, addr r_valid)

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

proc has_key*(self: Variant; key: Variant; r_valid: ptr bool = nil): bool =
  var valid: bool
  result = interface_Variant_hasKey(addr self, addr key, addr valid)
  if r_valid != nil: r_valid[] = valid

# bool Variant::has_method(const StringName &method) const {
#   GDExtensionBool has = internal::gdextension_interface_variant_has_method(_native_ptr(), method._native_ptr());
#   return PtrToArg<bool>::convert(&has);
# }

# bool Variant::has_member(Variant::Type type, const StringName &member) {
#   GDExtensionBool has = internal::gdextension_interface_variant_has_member(static_cast<GDExtensionVariantType>(type), member._native_ptr());
#   return PtrToArg<bool>::convert(&has);
# }

proc hash*(self: Variant): Hash = interface_Variant_hash(addr self)

# uint32_t Variant::recursive_hash(int recursion_count) const {
#   GDExtensionInt hash = internal::gdextension_interface_variant_recursive_hash(_native_ptr(), recursion_count);
#   return PtrToArg<uint32_t>::convert(&hash);
# }

# bool Variant::hash_compare(const Variant &variant) const {
#   GDExtensionBool compare = internal::gdextension_interface_variant_hash_compare(_native_ptr(), variant._native_ptr());
#   return PtrToArg<bool>::convert(&compare);
# }

# bool Variant::booleanize() const {
#   GDExtensionBool booleanized = internal::gdextension_interface_variant_booleanize(_native_ptr());
#   return PtrToArg<bool>::convert(&booleanized);
# }

# Variant Variant::duplicate(bool deep) const {
#   Variant result;
#   GDExtensionBool _deep;
#   PtrToArg<bool>::encode(deep, &_deep);
#   internal::gdextension_interface_variant_duplicate(_native_ptr(), result._native_ptr(), _deep);
#   return result;
# }

# String Variant::get_type_name(Variant::Type type) {
#   String result;
#   internal::gdextension_interface_variant_get_type_name(static_cast<GDExtensionVariantType>(type), result._native_ptr());
#   return result;
# }

# bool Variant::can_convert(Variant::Type from, Variant::Type to) {
#   GDExtensionBool can = internal::gdextension_interface_variant_can_convert(static_cast<GDExtensionVariantType>(from), static_cast<GDExtensionVariantType>(to));
#   return PtrToArg<bool>::convert(&can);
# }

# bool Variant::can_convert_strict(Variant::Type from, Variant::Type to) {
#   GDExtensionBool can = internal::gdextension_interface_variant_can_convert_strict(static_cast<GDExtensionVariantType>(from), static_cast<GDExtensionVariantType>(to));
#   return PtrToArg<bool>::convert(&can);
# }

# void Variant::clear() {
#   static const bool needs_deinit[Variant::VARIANT_MAX] = {
#     false, // NIL,
#     false, // BOOL,
#     false, // INT,
#     false, // FLOAT,
#     true, // STRING,
#     false, // VECTOR2,
#     false, // VECTOR2I,
#     false, // RECT2,
#     false, // RECT2I,
#     false, // VECTOR3,
#     false, // VECTOR3I,
#     true, // TRANSFORM2D,
#     false, // VECTOR4,
#     false, // VECTOR4I,
#     false, // PLANE,
#     false, // QUATERNION,
#     true, // AABB,
#     true, // BASIS,
#     true, // TRANSFORM3D,
#     true, // PROJECTION,

#     // misc types
#     false, // COLOR,
#     true, // STRING_NAME,
#     true, // NODE_PATH,
#     false, // RID,
#     true, // OBJECT,
#     true, // CALLABLE,
#     true, // SIGNAL,
#     true, // DICTIONARY,
#     true, // ARRAY,

#     // typed arrays
#     true, // PACKED_BYTE_ARRAY,
#     true, // PACKED_INT32_ARRAY,
#     true, // PACKED_INT64_ARRAY,
#     true, // PACKED_FLOAT32_ARRAY,
#     true, // PACKED_FLOAT64_ARRAY,
#     true, // PACKED_STRING_ARRAY,
#     true, // PACKED_VECTOR2_ARRAY,
#     true, // PACKED_VECTOR3_ARRAY,
#     true, // PACKED_COLOR_ARRAY,
#   };

#   if (unlikely(needs_deinit[get_type()])) { // Make it fast for types that don't need deinit.
#     internal::gdextension_interface_variant_destroy(_native_ptr());
#   }
#   internal::gdextension_interface_variant_new_nil(_native_ptr());
# }

# } // namespace godot