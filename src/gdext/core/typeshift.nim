import gdext/gdinterface/[native, extracommands]
import gdext/core/builtinindex
import gdext/core/gdclass
import gdext/core/gdrefs
import gdext/core/gdtypedarray

var
  variantFromType: array[Variant_Type, VariantFromTypeConstructorFunc]
  typeFromVariant: array[Variant_Type, TypeFromVariantConstructorFunc]

proc load* =
  for i in (VariantType_Nil.succ)..<Variant_Type.high:
    variantFromType[i] = interface_getVariantFromTypeConstructor(Variant_Type i)
    typeFromVariant[i] = interface_getVariantToTypeConstructor(Variant_Type i)

type AltInt* = int|int32|int16|int8|uint64|uint32|uint16|uint8
type AltFloat* = float32
type AltString* = string

template variantType*(_: typedesc[Bool]): VariantType = VariantType_Bool
template variantType*(_: typedesc[Int]): VariantType = VariantType_Int
template variantType*(_: typedesc[Float]): VariantType = VariantType_Float
template variantType*(_: typedesc[Vector2]): VariantType = VariantType_Vector2
template variantType*(_: typedesc[Vector3]): VariantType = VariantType_Vector3
template variantType*(_: typedesc[Vector4]): VariantType = VariantType_Vector4
template variantType*(_: typedesc[Vector2i]): VariantType = VariantType_Vector2i
template variantType*(_: typedesc[Vector3i]): VariantType = VariantType_Vector3i
template variantType*(_: typedesc[Vector4i]): VariantType = VariantType_Vector4i
template variantType*(_: typedesc[Rect2]): VariantType = VariantType_Rect2
template variantType*(_: typedesc[Rect2i]): VariantType = VariantType_Rect2i
template variantType*(_: typedesc[Transform2D]): VariantType = VariantType_Transform2d
template variantType*(_: typedesc[Plane]): VariantType = VariantType_Plane
template variantType*(_: typedesc[Quaternion]): VariantType = VariantType_Quaternion
template variantType*(_: typedesc[AABB]): VariantType = VariantType_AABB
template variantType*(_: typedesc[Basis]): VariantType = VariantType_Basis
template variantType*(_: typedesc[Transform3D]): VariantType = VariantType_Transform3d
template variantType*(_: typedesc[Projection]): VariantType = VariantType_Projection
template variantType*(_: typedesc[Color]): VariantType = VariantType_Color
template variantType*(_: typedesc[RID]): VariantType = VariantType_RID
template variantType*(_: typedesc[String]): VariantType = VariantType_String
template variantType*(_: typedesc[StringName]): VariantType = VariantType_StringName
template variantType*(_: typedesc[NodePath]): VariantType = VariantType_NodePath
template variantType*(_: typedesc[Callable]): VariantType = VariantType_Callable
template variantType*(_: typedesc[Signal]): VariantType = VariantType_Signal
template variantType*(_: typedesc[Dictionary]): VariantType = VariantType_Dictionary
template variantType*(_: typedesc[Array]): VariantType = VariantType_Array
template variantType*(_: typedesc[PackedByteArray]): VariantType = VariantType_PackedByteArray
template variantType*(_: typedesc[PackedInt32Array]): VariantType = VariantType_PackedInt32Array
template variantType*(_: typedesc[PackedInt64Array]): VariantType = VariantType_PackedInt64Array
template variantType*(_: typedesc[PackedFloat32Array]): VariantType = VariantType_PackedFloat32Array
template variantType*(_: typedesc[PackedFloat64Array]): VariantType = VariantType_PackedFloat64Array
template variantType*(_: typedesc[PackedStringArray]): VariantType = VariantType_PackedStringArray
template variantType*(_: typedesc[PackedVector2Array]): VariantType = VariantType_PackedVector2Array
template variantType*(_: typedesc[PackedVector3Array]): VariantType = VariantType_PackedVector3Array
template variantType*(_: typedesc[PackedVector4Array]): VariantType = VariantType_PackedVector4Array
template variantType*(_: typedesc[PackedColorArray]): VariantType = VariantType_PackedColorArray

template variantType*(_: typedesc[TypedArray]): VariantType = VariantType_Array

# Object

template variantType*(Type: typedesc[ObjectPtr]): Variant_Type = VariantType_Object
template variantType*(Type: typedesc[Object]): Variant_Type = VariantType_Object

template variantType*(Type: typedesc[GdRef]): Variant_Type = VariantType_Object

# Variant

template variantType*(Type: typedesc[Variant]): Variant_Type = VariantType_Nil

# Alternatives

template variantType*(Type: typedesc[AltInt]): Variant_Type = VariantType_Int
template variantType*(Type: typedesc[AltFloat]): Variant_Type = VariantType_Float
template variantType*(Type: typedesc[AltString]): Variant_Type = VariantType_String
template variantType*(Type: typedesc[enum]): Variant_Type = VariantType_Int
template variantType*[E: enum](Type: typedesc[set[E]]): Variant_Type = VariantType_Int

template variantType*(Type: typedesc[ptr Variant]): Variant_Type = VariantType_Nil

# General
# =======

{.push, inline.}

proc decode*[T](p: ptr T; _: typedesc[T]): T = p[]

template encoded*[T: SomeBuiltins](_: typedesc[T]): typedesc[T] = T
template encode*[T: SomeBuiltins](v: T; p: pointer) =
  cast[ptr T](p)[] = v
proc decode*[T: SomeBuiltins](p: pointer; _: typedesc[T]): T =
  cast[ptr T](p)[]
proc variant*[T: SomeBuiltins](v: T): Variant =
  variantFromType[variantType T](addr result, addr v)
proc get*[T: SomeBuiltins](v: Variant; _: typedesc[T]): T =
  typeFromVariant[variantType T](addr result, addr v)

# Specific
# ========

template convert_alternative(Decoded, Encoded, encoder, decoder): untyped =
  template encoded*(T: typedesc[Decoded]): typedesc[Encoded] = Encoded
  template encode*(v: Decoded; p: pointer) =
    encode(encoder(v), p)
  proc decode*(p: pointer; _: typedesc[Decoded]): Decoded =
    decoder(p.decode(Encoded))
  proc variant*(v: Decoded): Variant =
    variant encoder(v)
  proc get*(v: Variant; _: typedesc[Decoded]): Decoded =
    decoder(v.get(Encoded))

template convert_alternative_autocast(Decoded, Encoded): untyped =
  template encoded*(T: typedesc[Decoded]): typedesc[Encoded] = Encoded
  template encode*(v: Decoded; p: pointer) =
    encode(Encoded(v), p)
  proc decode*(p: pointer; D: typedesc[Decoded]): D =
    D(p.decode(Encoded))
  proc variant*(v: Decoded): Variant =
    variant Encoded(v)
  proc get*(v: Variant; D: typedesc[Decoded]): D =
    D(v.get(Encoded))

template convert_generics_forcecast(Decoded, Encoded): untyped =
  template encoded*[T: Decoded](_: typedesc[T]): typedesc[Encoded] = Encoded
  template encode*[T: Decoded](v: T; p: pointer) =
    encode(cast[Encoded](v), p)
  proc decode*[T: Decoded](p: pointer; _: typedesc[T]): T =
    cast[T](p.decode(Encoded))
  proc variant*[T: Decoded](v: T): Variant =
    variant cast[Encoded](v)
  proc get*[T: Decoded](v: Variant; _: typedesc[T]): T =
    cast[T](v.get(Encoded))

template convert_generic_params_forcecast(Decoded, Encoded): untyped =
  template encoded*[T](_: typedesc[Decoded[T]]): typedesc[Encoded] = Encoded
  template encode*[T](v: Decoded[T]; p: pointer) =
    encode(cast[Encoded](v), p)
  proc decode*[T](p: pointer; _: typedesc[Decoded[T]]): Decoded[T] =
    cast[Decoded[T]](p.decode(Encoded))
  proc variant*[T](v: Decoded[T]): Variant =
    variant cast[Encoded](v)
  proc get*[T](v: Variant; _: typedesc[Decoded[T]]): Decoded[T] =
    cast[Decoded[T]](v.get(Encoded))


convert_alternative string, String, gdstring, `$`

convert_alternative_autocast int, Int
convert_alternative_autocast int32, Int
convert_alternative_autocast int16, Int
convert_alternative_autocast int8, Int
convert_alternative_autocast uint64, Int
convert_alternative_autocast uint32, Int
convert_alternative_autocast uint16, Int
convert_alternative_autocast uint8, Int

convert_alternative_autocast float32, Float

convert_generics_forcecast enum, Int

convert_generic_params_forcecast set, Int
convert_generic_params_forcecast TypedArray, Array

# Variant
# =======
template encoded*(T: typedesc[Variant]): typedesc[Variant] = Variant
template encode*(v: Variant; p: pointer) =
  cast[ptr Variant](p)[] = v
template decode*(p: pointer; T: typedesc[Variant]): T =
  cast[ptr Variant](p)[]
template variant*(v: Variant): Variant = v
template get*(v: Variant; T: typedesc[Variant]): T = v


# pointer
# =======
template encoded*(_: typedesc[pointer]): typedesc[pointer] = pointer
template encode*(v: pointer; p: pointer) =
  cast[ptr pointer](p)[] = v
proc decode*(p: pointer; _: typedesc[pointer]): pointer =
  p

template encoded*[T](_: typedesc[ptr T]): typedesc[pointer] = pointer
template encode*[T](v: ptr T; p: pointer) =
  cast[ptr ptr T](p)[] = v
proc decode*[T](p: pointer; _: typedesc[ptr T]): ptr T =
  cast[ptr T](p)

# ObjectPtr
# =========

template encoded*(T: typedesc[ObjectPtr]): typedesc[ObjectPtr] = ObjectPtr
template encode*(v: ObjectPtr; p: pointer) =
  cast[ptr ObjectPtr](p)[] = v
proc decode*(p: pointer; T: typedesc[ObjectPtr]): T =
  cast[ptr ObjectPtr](p)[]

proc variant*(v: ObjectPtr): Variant =
  variantFromType[VariantType_Object](addr result, addr v)
proc get*(v: Variant; T: typedesc[ObjectPtr]): T =
  typeFromVariant[VariantType_Object](addr result, addr v)

# Godot Object
# ============

template encoded*[T: Object](_: typedesc[T]): typedesc[ObjectPtr] = ObjectPtr
template encode*[T: Object](v: T; p: pointer) =
  encode(CLASS_getObjectPtr v, p)
proc decode*[T: Object](p: pointer; _: typedesc[T]): T =
  result = p.decode(ObjectPtr).getInstance(T)
proc variant*[T: Object](v: T): Variant =
  variant CLASS_getObjectPtr v
proc get*[T: Object](v: Variant; _: typedesc[T]): T =
  result = v.get(ObjectPtr).getInstance(T)


proc decode_result*(p: pointer; Type: typedesc): Type =
  p.decode(Type)

template encoded*[T: RefCounted](_: typedesc[GdRef[T]]): typedesc[ObjectPtr] = ObjectPtr
template encode*[T: RefCounted](v: GdRef[T]; p: pointer) =
  v.unwrapped.encode(p)
proc decode*[T: RefCounted](p: pointer; Result: typedesc[GdRef[T]]): Result =
  p.decode(T).referenced
proc variant*[T: RefCounted](v: GdRef[T]): Variant =
  v.unwrapped.variant
proc get*[T: RefCounted](v: Variant; Result: typedesc[GdRef[T]]): Result =
  v.get(T).referenced

proc decode_result*[T: RefCounted](p: pointer; Result: typedesc[GdRef[T]]): Result =
  p.decode_result(T).asGdRef

{.pop.}
