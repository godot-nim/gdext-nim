import std/[macros, strutils]

import gdext/gdinterface/[ native, extracommands ]
import gdext/core/builtinindex
import gdext/core/gdclass
import gdext/core/gdrefs
import gdext/core/typeshift
import gdext/gen/globalenums

type
  HeapPropertyInfo* = object
    `type`*: VariantType
    name*: ref StringName
    className*: ref Stringname
    hint*: PropertyHint
    hintString*: ref String
    usage*: set[PropertyUsageFlags]

  GodotEnumMeta* = object
    className*: StringName
    hintString*: String

proc Meta*[T: enum](_: typedesc[T|set[T]]): var GodotEnumMeta =
  var instance {.global.} : GodotEnumMeta
  instance

proc className*(E: typedesc[enum]): StringName =
  mixin EnumOwner
  once:
    Meta(E).className =
      when compiles(E.EnumOwner):
        stringName $className(E.EnumOwner) & "." & $E
      else:
        let s = ($E).split("_")
        if s.len == 2 and s[0][0].isUpperAscii and s[1][0].isUpperAscii:
          stringName s.join(".")
        else:
          stringName $E
  Meta(E).className

# Metadata
# ========

template metadata*(T: typedesc): ClassMethodArgumentMetadata = MethodArgumentMetadata_None

# Enum
# ----

template metadata*(T: typedesc[enum]): ClassMethodArgumentMetadata =
  when sizeof(T) <= 1:
    MethodArgumentMetadata_Int_is_Uint8
  elif sizeof(T) <= 2:
    MethodArgumentMetadata_Int_is_Uint16
  elif sizeof(T) <= 4:
    MethodArgumentMetadata_Int_is_Uint32
  else:
    MethodArgumentMetadata_Int_is_Uint64

template metadata*[E: enum](T: typedesc[set[E]]): ClassMethodArgumentMetadata =
  when sizeof(T) <= 1:
    MethodArgumentMetadata_Int_is_Uint8
  elif sizeof(T) <= 2:
    MethodArgumentMetadata_Int_is_Uint16
  elif sizeof(T) <= 4:
    MethodArgumentMetadata_Int_is_Uint32
  else:
    MethodArgumentMetadata_Int_is_Uint64

# Int
# ---
template metadata*(T: typedesc[int]): ClassMethodArgumentMetadata =
  when sizeof(int) == 8: MethodArgumentMetadata_Int_is_Int64
  else: MethodArgumentMetadata_Int_is_Int32
template metadata*(T: typedesc[uint]): ClassMethodArgumentMetadata =
  when sizeof(int) == 8: MethodArgumentMetadata_Int_is_Uint64
  else: MethodArgumentMetadata_Int_is_Uint32

template metadata*(T: typedesc[int64]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Int_is_Int64
template metadata*(T: typedesc[int32]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Int_is_Int32
template metadata*(T: typedesc[int16]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Int_is_Int32
template metadata*(T: typedesc[int8]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Int_is_Int8

template metadata*(T: typedesc[uint64]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Int_is_Uint64
template metadata*(T: typedesc[uint32]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Int_is_Uint32
template metadata*(T: typedesc[uint16]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Int_is_Uint32
template metadata*(T: typedesc[uint8]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Int_is_Uint8

# float
# -----
template metadata*(T: typedesc[float64]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Real_is_Double
template metadata*(T: typedesc[float32]): ClassMethodArgumentMetadata = MethodArgumentMetadata_Real_is_Float

# Property Info
# =============

template uniqueUsage*(T: typedesc): set[PropertyUsageFlags] = {}
template uniqueUsage*(T: typedesc[Variant]): set[PropertyUsageFlags] = {propertyUsageNilIsVariant}
template uniqueUsage*(T: typedesc[enum]): set[PropertyUsageFlags] = {propertyUsageClassIsEnum}
template uniqueUsage*[E: enum](T: typedesc[set[E]]): set[PropertyUsageFlags] = {propertyUsageClassIsBitfield}

type SomeProperty* = concept type t
  t.variantType is VariantType
  t.uniqueUsage is set[PropertyUsageFlags]

proc unheap*(info: HeapPropertyInfo): PropertyInfo =
  cast[ptr PropertyInfo](addr info)[]

proc new(x: String): ref String =
  new result
  result[] = x
proc new(x: StringName): ref StringName =
  new result
  result[] = x


proc propertyInfo*(typ: VariantType;
      name: StringName = StringName.empty;
      class_name: StringName = StringName.empty;
      hint: PropertyHint = propertyHint_None;
      hint_string: String = String.empty;
      usage: system.set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): HeapPropertyInfo =
  HeapPropertyInfo(
    type: typ,
    name: new name,
    class_name: new class_name,
    hint: hint,
    hint_string: new hint_string,
    usage: usage,
  )

proc propertyInfo*[T: SomeProperty](_: typedesc[T];
      name: StringName = StringName.empty;
      hint: PropertyHint = propertyHint_None;
      hint_string: String = String.empty;
      usage: system.set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): HeapPropertyInfo =
  propertyInfo(
    T.variantType,
    name,
    (when T is SomeClass:
      className T
    elif T is GdRef:
      className T.RefCounted
    elif T is enum:
      className T
    else:
      StringName.empty),
    hint,
    hint_string,
    usage + T.uniqueUsage,
  )

proc propertyInfo*[T: SomeProperty](_: typedesc[varargs[T]];
      name: StringName = StringName.empty;
      hint: PropertyHint = propertyHint_None;
      hint_string: String = String.empty;
      usage: system.set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): HeapPropertyInfo =
  propertyInfo(typedesc T, name, hint, hint_string, usage)