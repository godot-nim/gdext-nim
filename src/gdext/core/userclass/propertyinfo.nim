import std/macros

import gdext/gdinterface/[ native, extracommands ]
import gdext/core/builtinindex
import gdext/core/gdclass
import gdext/core/gdrefs
import gdext/core/gdtypedarray
import gdext/core/typeshift
import gdext/gen/globalenums except VariantType

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

type SomeIntProperty* = concept type t
  t is SomeInteger|PackedByteArray|PackedInt32Array|PackedInt64Array|TypedArray[Int]

type SomeFloatProperty* = concept type t
  t is SomeFloat|PackedFloat32Array|PackedFloat64Array|TypedArray[Float]

type SomeNumericProperty* = concept type t
  t is SomeIntProperty|SomeFloatProperty

type SomeStringProperty* = concept type t
  t is string|String|PackedStringArray|TypedArray[String]

type SomeColorProperty* = concept type t
  t is Color|PackedColorArray|TypedArray[Color]

proc defaultUnit*[S: SomeFloatProperty](_: typedesc[S]): float =
  # TODO: This value should be read at runtime, not hard-coded.
  # EditorSettings.getSetting("interface/inspector/default_float_step")
  0.001
proc defaultUnit*[S: SomeIntProperty](_: typedesc[S]): int = 1

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
      if Meta(T).className == default(StringName):
        raise newException(GodotUnboundSymbolDefect,
          "cannot make propertyInfo of " & $T & "; call (registerEnum/registerBitField)(YourClass, YourEnum) to bind the enum to the class.")
      Meta(T).className
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