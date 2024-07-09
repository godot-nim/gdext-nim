import std/macros

import godotcore/dirty/gdextension_interface
import godotcore/builtinindex
import godotcore/extracommands
import godotcore/Variant
import godotcore/typeshift

type PropertyHint* {.size: sizeof(cuint).} = enum
  propertyHintNone = 0
  propertyHintRange = 1
  propertyHintEnum = 2
  propertyHintEnumSuggestion = 3
  propertyHintExpEasing = 4
  propertyHintLink = 5
  propertyHintFlags = 6
  propertyHintLayers2DRender = 7
  propertyHintLayers2DPhysics = 8
  propertyHintLayers2DNavigation = 9
  propertyHintLayers3DRender = 10
  propertyHintLayers3DPhysics = 11
  propertyHintLayers3DNavigation = 12
  propertyHintFile = 13
  propertyHintDir = 14
  propertyHintGlobalFile = 15
  propertyHintGlobalDir = 16
  propertyHintResourceType = 17
  propertyHintMultilineText = 18
  propertyHintExpression = 19
  propertyHintPlaceholderText = 20
  propertyHintColorNoAlpha = 21
  propertyHintObjectId = 22
  propertyHintTypeString = 23
  propertyHintNodePathToEditedNode = 24
  propertyHintObjectTooBig = 25
  propertyHintNodePathValidTypes = 26
  propertyHintSaveFile = 27
  propertyHintGlobalSaveFile = 28
  propertyHintIntIsObjectid = 29
  propertyHintIntIsPointer = 30
  propertyHintArrayType = 31
  propertyHintLocaleId = 32
  propertyHintLocalizableString = 33
  propertyHintNodeType = 34
  propertyHintHideQuaternionEdit = 35
  propertyHintPassword = 36
  propertyHintLayersAvoidance = 37
  propertyHintMax = 38

type PropertyUsageFlags* {.size: sizeof(cuint).} = enum
  # propertyUsageNone = 0
  `--Padding-Min--` = 0 # To align size-of set[PropertyUsageFlags] to size-of cuint.
  propertyUsageStorage = 1
  propertyUsageEditor = 2
  propertyUsageInternal = 3
  propertyUsageCheckable = 4
  propertyUsageChecked = 5
  propertyUsageGroup = 6
  propertyUsageCategory = 7
  propertyUsageSubgroup = 8
  propertyUsageClassIsBitfield = 9
  propertyUsageNoInstanceState = 10
  propertyUsageRestartIfChanged = 11
  propertyUsageScriptVariable = 12
  propertyUsageStoreIfNull = 13
  propertyUsageUpdateAllIfModified = 14
  propertyUsageScriptDefaultValue = 15
  propertyUsageClassIsEnum = 16
  propertyUsageNilIsVariant = 17
  propertyUsageArray = 18
  propertyUsageAlwaysDuplicate = 19
  propertyUsageNeverDuplicate = 20
  propertyUsageHighEndGfx = 21
  propertyUsageNodePathFromSceneRoot = 22
  propertyUsageResourceNotPersistent = 23
  propertyUsageKeyingIncrements = 24
  propertyUsageDeferredSetResource = 25
  propertyUsageEditorInstantiateObject = 26
  propertyUsageEditorBasicSetting = 27
  propertyUsageReadOnly = 28
  propertyUsageSecret = 29
  `--Padding-Max--` = 31 # To align size-of set[PropertyUsageFlags] to size-of cuint.
template propertyUsageNoEditor*[T: PropertyUsageFlags](_: typedesc[T]): T = T(1)
template propertyUsageDefault*[T: PropertyUsageFlags](_: typedesc[T]): set[T] = cast[set[T]](6)

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

proc new[T: String|StringName](s: T): ref T =
  new result
  result[] = s


type
  PropertyInfoGlue* = object
    `type`*: Variant_Type
    name*: ref StringName
    class_name*: ref StringName
    hint*: PropertyHint
    hint_string*: ref String
    usage*: set[PropertyUsageFlags]

converter native*(p: ref PropertyInfoGlue): ptr PropertyInfo =
  cast[ptr PropertyInfo](p)
converter native*(p: PropertyInfoGlue): PropertyInfo =
  cast[PropertyInfo](p)
converter native*(a: openArray[PropertyInfoGlue]): ptr PropertyInfo =
  cast[ptr PropertyInfo](addr a[0])

template uniqueUsage*(T: typedesc): set[PropertyUsageFlags] = {}
template uniqueUsage*(T: typedesc[Variant]): set[PropertyUsageFlags] = {propertyUsageNilIsVariant}

type SomeProperty* = concept type t
  t.variantType is VariantType
  t.uniqueUsage is set[PropertyUsageFlags]

proc propertyInfo*[T: SomeProperty](_: typedesc[T];
      name: StringName = stringname"";
      class_name: StringName = stringname"";
      hint: PropertyHint = propertyHint_None;
      hint_string: String = gdstring"";
      usage: system.set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault
    ): ref PropertyInfoGlue =
  (ref PropertyInfoGlue)(
    type: T.variantType,
    name: new name,
    class_name: new class_name,
    hint: hint,
    hint_string: new hint_string,
    usage: usage + T.uniqueUsage,
  )