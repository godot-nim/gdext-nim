{.warning[Deprecated]:off.}
import std/macros
import std/os

import gdext/enums

macro gdcall*(someProc: untyped): untyped =
  someProc.addPragma ident do:
    when (defined windows): "stdcall"
    elif true or (defined linux) or (defined macosx): "cdecl"
  return someProc

type
  uint64_t* = uint64
  uint32_t* = uint32
  uint16_t* = uint16
  uint8_t* = uint8
  int64_t* = int64
  int32_t* = int32
  wchar_t* = Utf16Char

{.passC: ("-I" & currentSourcePath().parentDir().parentDir()/"gen").}
{.push, header: "gdextension_interface.h".}
include gdext/gen/gdextensioninterface
{.pop.}
proc isNil*(x: ObjectPtr): bool {.borrow.}
proc `==`*(x: ObjectPtr; y: pointer): bool {.borrow.}
include gdext/gen/gdextensioninterfaceapi


type
  ExtentEnvironment* = ref object
    getProcAddress*: InterfaceGetProcAddress
    library*: ClassLibraryPtr
    version*: GodotVersion2

var
  environment*: ExtentEnvironment

var
  RefCounted_reference*: MethodBindPtr
  RefCounted_unreference*: MethodBindPtr
  RefCounted_get_reference_count*: MethodBindPtr
  variantFromType*: array[Variant_Type, VariantFromTypeConstructorFunc]
  typeFromVariant*: array[Variant_Type, TypeFromVariantConstructorFunc]
  pointerFromVariant*: array[Variant_Type, VariantGetInternalPtrFunc]
  typeConstructor*: array[Variant_Type, PtrConstructor]
  typeDestructor*: array[Variant_Type, PtrDestructor]

proc init*(getProcAddress: InterfaceGetProcAddress; library: ClassLIbraryPtr) =
  new environment
  environment.getProcAddress = getProcAddress
  environment.library = library
  loadApi(environment.getProcAddress)
  interfaceGetGodotVersion2(addr environment.version)

  for i in (VariantType_Nil.succ)..Variant_Type.high:
    variantFromType[i] = interface_getVariantFromTypeConstructor(Variant_Type i)
    typeFromVariant[i] = interface_getVariantToTypeConstructor(Variant_Type i)
    pointerFromVariant[i] = interface_getVariantGetInternalPtrFunc(Variant_Type i)

  const
    constrs = [
      VariantTypeString,
      VariantTypeStringName,
      VariantTypeNodePath,
      VariantTypeRID,
      VariantTypeCallable,
      VariantTypeSignal,
      VariantTypeDictionary,
      VariantTypeArray,
      VariantTypePackedByteArray,
      VariantTypePackedInt32Array,
      VariantTypePackedInt64Array,
      VariantTypePackedFloat32Array,
      VariantTypePackedFloat64Array,
      VariantTypePackedStringArray,
      VariantTypePackedVector2Array,
      VariantTypePackedVector3Array,
      VariantTypePackedVector4Array,
      VariantTypePackedColorArray,
    ]
    destrs = [
      VariantTypeString,
      VariantTypeStringName,
      VariantTypeNodePath,
      VariantTypeCallable,
      VariantTypeSignal,
      VariantTypeDictionary,
      VariantTypeArray,
      VariantTypePackedByteArray,
      VariantTypePackedInt32Array,
      VariantTypePackedInt64Array,
      VariantTypePackedFloat32Array,
      VariantTypePackedFloat64Array,
      VariantTypePackedStringArray,
      VariantTypePackedVector2Array,
      VariantTypePackedVector3Array,
      VariantTypePackedVector4Array,
      VariantTypePackedColorArray,
    ]

  for variantType in constrs:
    typeConstructor[variantType] = interface_Variant_getPtrConstructor(variantType, 1)
  for variantType in destrs:
    typeDestructor[variantType] = interface_Variant_getPtrDestructor(variantType)

  var ClassName, MethodName: pointer

  # RefCounted
  interfaceStringNameNewWithLatin1Chars(addr ClassName, "RefCounted", false)

  interfaceStringNameNewWithLatin1Chars(addr MethodName, "reference", false)
  RefCounted_reference = interface_ClassDB_getMethodBind(addr ClassName, addr MethodName, 2240911060)
  typeDestructor[VariantType_StringName](addr MethodName)

  interfaceStringNameNewWithLatin1Chars(addr MethodName, "unreference", false)
  RefCounted_unreference = interface_ClassDB_getMethodBind(addr ClassName, addr MethodName, 2240911060)
  typeDestructor[VariantType_StringName](addr MethodName)

  interfaceStringNameNewWithLatin1Chars(addr MethodName, "get_reference_count", false)
  RefCounted_get_reference_count = interface_ClassDB_getMethodBind(addr ClassName, addr MethodName, 3905245786)
  typeDestructor[VariantType_StringName](addr MethodName)

  typeDestructor[VariantType_StringName](addr ClassName)
