import gdext/private/gdinterface
import gdext/builtinindex
import gdext/stringtools

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
proc getAddr*[T: SomeBuiltins](v: Variant; _: typedesc[T]): ptr T =
  cast[ptr T](pointerFromVariant[variantType T](addr v))

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


convert_alternative AltString, String, gdstring, `$`

convert_alternative_autocast AltInt, Int

convert_alternative_autocast AltFloat, Float

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
proc getAddr*(v: Variant; T: typedesc[ObjectPtr]): ptr T =
  cast[ptr T](pointerFromVariant[VariantType_Object](addr v))

# Godot Object
# ============

template encoded*[T: Object](_: typedesc[T]): typedesc[ObjectPtr] = ObjectPtr
template encode*[T: Object](v: T; p: pointer) =
  encode(v.engineInstance, p)
proc decode*[T: Object](p: pointer; _: typedesc[T]): T =
  result = p.decode(ObjectPtr).getInstanceBinding(T)
proc variant*[T: Object](v: T): Variant =
  variant v.engineInstance
proc get*[T: Object](v: Variant; _: typedesc[T]): T =
  result = v.get(ObjectPtr).getInstanceBinding(T)


proc decode_result*(p: pointer; Type: typedesc): Type =
  p.decode(Type)

template encoded*[T: RefCounted](_: typedesc[GdRef[T]]): typedesc[ObjectPtr] = ObjectPtr
template encode*[T: RefCounted](v: GdRef[T]; p: pointer) =
  v.handle.encode(p)
proc decode*[T: RefCounted](p: pointer; Result: typedesc[GdRef[T]]): Result =
  p.decode(T).referenced
proc variant*[T: RefCounted](v: GdRef[T]): Variant =
  v.handle.variant
proc get*[T: RefCounted](v: Variant; Result: typedesc[GdRef[T]]): Result =
  v.get(T).referenced

proc decode_result*[T: RefCounted](p: pointer; Result: typedesc[GdRef[T]]): Result =
  p.decode_result(T).asGdRef

{.pop.}

template APIType*(T: typedesc[Object]): typedesc = T
template APIType*(T: typedesc[not Object]): typedesc = encoded T
