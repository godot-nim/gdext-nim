import std/macros

import gdext/dirty/gdextensioninterface
import gdext/core/builtinindex
import gdext/core/extracommands
import gdext/core/gdclass
import gdext/core/gdrefs
import gdext/core/typeshift
import gdext/core/gdtypedarray
import gdextgen/globalenums except VariantType

type
  GodotUnboundSymbolDefect* = object of Defect
  GodotEnumMeta* = object
    className*: StringName
proc Meta*[T: enum](_: typedesc[T]): var GodotEnumMeta =
  var instance {.global.} : GodotEnumMeta
  instance

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

type SomeProperty* = concept type t
  t.variantType is VariantType
  t.uniqueUsage is set[PropertyUsageFlags]

type SomeObject* = concept type t
  t is SomeProperty
  t isnot GdRef
  t.variantType == VariantType_Object

type SomeInt* = concept type t
  t is int|Int|PackedByteArray|PackedInt32Array|PackedInt64Array|TypedArray[Int]

type SomeFloat* = concept type t
  t is float|Float|PackedFloat32Array|PackedFloat64Array|TypedArray[Float]

type SomeString* = concept type t
  t is string|String|PackedStringArray|TypedArray[String]

type SomeColor* = concept type t
  t is Color|PackedColorArray|TypedArray[Color]

proc propertyInfo*(typ: VariantType;
      name: ptr StringName = addr StringName.empty;
      class_name: ptr StringName = addr StringName.empty;
      hint: PropertyHint = propertyHint_None;
      hint_string: ptr String = addr String.empty;
      usage: system.set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): PropertyInfo =
  PropertyInfo(
    type: typ,
    name: name,
    class_name: class_name,
    hint: uint32 hint,
    hint_string: hint_string,
    usage: cast[uint32](usage),
  )
proc propertyInfo*[T: SomeProperty](_: typedesc[T];
      name: ptr StringName = addr StringName.empty;
      hint: PropertyHint = propertyHint_None;
      hint_string: ptr String = addr String.empty;
      usage: system.set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): PropertyInfo =
  propertyInfo(
    T.variantType,
    name,
    (when T is GodotClass:
      addr className T
    elif T is GdRef:
      addr className T.RefCounted
    elif T is enum:
      if Meta(T).className == default(StringName):
        raise newException(GodotUnboundSymbolDefect,
          "cannot make propertyInfo of " & $T & "; call (registerEnum/registerBitField)(YourClass, YourEnum) to bind the enum to the class.")
      addr Meta(T).className
    else:
      addr StringName.empty),
    hint,
    hint_string,
    usage + T.uniqueUsage,
  )