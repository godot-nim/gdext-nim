{.warning[Deprecated]:off.}
import std/macros

const
  TargetVersionMajor {.intdefine.} = 4
  TargetVersionMinor {.intdefine.} = 3
  TargetVersion* = (TargetVersionMajor, TargetVersionMinor)

macro gdcall*(someProc: untyped): untyped =
  someProc.addPragma ident do:
    when (defined windows): "stdcall"
    elif true or (defined linux) or (defined macosx): "cdecl"
  return someProc

macro deprecated_atLeast(version: static[(int, int)]; body): untyped =
  result = body
  if TargetVersion >= version:
    case body.kind
    of nnkTypeDef:
      result[0][1].add ident"deprecated"
    else:
      error lisprepr result, result

type
  uint64_t* = uint64
  uint32_t* = uint32
  uint16_t* = uint16
  uint8_t* = uint8
  int64_t* = int64
  int32_t* = int32
  wchar_t* = Utf16Char
  GodotInternalObject* = object

type
  char32_t* = uint32_t
  char16_t* = uint16_t

when TargetVersion in (4, 1)..(4, 2):
  type
    VariantType* {.size: sizeof(cuint).} = enum
      VariantType_Nil,
      VariantType_Bool, VariantType_Int,
      VariantType_Float, VariantType_String,
      VariantType_Vector2, VariantType_Vector2i,
      VariantType_Rect2, VariantType_Rect2i,
      VariantType_Vector3, VariantType_Vector3i,
      VariantType_Transform2d, VariantType_Vector4,
      VariantType_Vector4i, VariantType_Plane,
      VariantType_Quaternion, VariantType_AABB,
      VariantType_Basis, VariantType_Transform3d, VariantType_Projection,
      VariantType_Color, VariantType_StringName,
      VariantType_NodePath, VariantType_RID,
      VariantType_Object, VariantType_Callable,
      VariantType_Signal, VariantType_Dictionary, VariantType_Array,
      VariantType_PackedByteArray,
      VariantType_PackedInt32Array,
      VariantType_PackedInt64Array,
      VariantType_PackedFloat32Array,
      VariantType_PackedFloat64Array,
      VariantType_PackedStringArray,
      VariantType_PackedVector2Array,
      VariantType_PackedVector3Array,
      VariantType_PackedColorArray,
elif TargetVersion >= (4, 3):
  type
    VariantType* {.size: sizeof(cuint).} = enum
      VariantType_Nil,
      VariantType_Bool, VariantType_Int,
      VariantType_Float, VariantType_String,
      VariantType_Vector2, VariantType_Vector2i,
      VariantType_Rect2, VariantType_Rect2i,
      VariantType_Vector3, VariantType_Vector3i,
      VariantType_Transform2d, VariantType_Vector4,
      VariantType_Vector4i, VariantType_Plane,
      VariantType_Quaternion, VariantType_AABB,
      VariantType_Basis, VariantType_Transform3d, VariantType_Projection,
      VariantType_Color, VariantType_StringName,
      VariantType_NodePath, VariantType_RID,
      VariantType_Object, VariantType_Callable,
      VariantType_Signal, VariantType_Dictionary, VariantType_Array,
      VariantType_PackedByteArray,
      VariantType_PackedInt32Array,
      VariantType_PackedInt64Array,
      VariantType_PackedFloat32Array,
      VariantType_PackedFloat64Array,
      VariantType_PackedStringArray,
      VariantType_PackedVector2Array,
      VariantType_PackedVector3Array,
      VariantType_PackedColorArray,
      VariantType_PackedVector4Array,

when TargetVersion >= (4, 1):
  type
    VariantOperator* {.size: sizeof(cuint).} = enum
      VariantOP_Equal, VariantOP_NotEqual,
      VariantOP_Less, VariantOP_LessEqual,
      VariantOP_Greater, VariantOP_GreaterEqual,
      VariantOP_Add, VariantOP_Subtract,
      VariantOP_Multiply, VariantOP_Divide,
      VariantOP_Negate, VariantOP_Positive,
      VariantOP_Module, VariantOP_Power,
      VariantOP_ShiftLeft, VariantOP_ShiftRight,
      VariantOP_BitAnd, VariantOP_BitOr,
      VariantOP_BitXor, VariantOP_BitNegate,
      VariantOP_And, VariantOP_Or,
      VariantOP_Xor, VariantOP_Not,
      VariantOP_In
    VariantPtr* = pointer
    ConstVariantPtr* = pointer
    UninitializedVariantPtr* = pointer
    StringNamePtr* = pointer
    ConstStringNamePtr* = pointer
    UninitializedStringNamePtr* = pointer
    StringPtr* = pointer
    ConstStringPtr* = pointer
    UninitializedStringPtr* = pointer
    ObjectPtr* = ptr GodotInternalObject
    ConstObjectPtr* = pointer
    UninitializedObjectPtr* = pointer
    TypePtr* = pointer
    ConstTypePtr* = pointer
    UninitializedTypePtr* = pointer
    MethodBindPtr* = pointer
    Int* = int64_t
    Bool* = bool
    GDObjectInstanceID* = uint64_t
    RefPtr* = pointer
    ConstRefPtr* = pointer
    CallErrorType* {.size: sizeof(cuint).} = enum
      Call_OK, CallError_InvalidMethod, CallError_InvalidArgument,
      CallError_TooManyArguments,
      CallError_TooFewArguments,
      CallError_InstanceIsNull, CallError_MethodNotConst
    CallError* {.bycopy.} = object
      error*: CallErrorType
      argument*: int32_t
      expected*: int32_t
    VariantFromTypeConstructorFunc* = proc (a1: UninitializedVariantPtr; a2: TypePtr) {.gdcall.}
    TypeFromVariantConstructorFunc* = proc (a1: UninitializedTypePtr; a2: VariantPtr) {.gdcall.}
    PtrOperatorEvaluator* = proc (p_left: ConstTypePtr; p_right: ConstTypePtr; r_result: TypePtr) {.gdcall.}
    PtrBuiltInMethod* = proc (p_base: TypePtr; p_args: ptr ConstTypePtr; r_return: TypePtr; p_argument_count: cint) {.gdcall.}
    PtrConstructor* = proc (p_base: UninitializedTypePtr; p_args: ptr ConstTypePtr) {.gdcall.}
    PtrDestructor* = proc (p_base: TypePtr) {.gdcall.}
    PtrSetter* = proc (p_base: TypePtr; p_value: ConstTypePtr) {.gdcall.}
    PtrGetter* = proc (p_base: ConstTypePtr; r_value: TypePtr) {.gdcall.}
    PtrIndexedSetter* = proc (p_base: TypePtr; p_index: Int; p_value: ConstTypePtr) {.gdcall.}
    PtrIndexedGetter* = proc (p_base: ConstTypePtr; p_index: Int; r_value: TypePtr) {.gdcall.}
    PtrKeyedSetter* = proc (p_base: TypePtr; p_key: ConstTypePtr; p_value: ConstTypePtr) {.gdcall.}
    PtrKeyedGetter* = proc (p_base: ConstTypePtr; p_key: ConstTypePtr; r_value: TypePtr) {.gdcall.}
    PtrKeyedChecker* = proc (p_base: ConstVariantPtr; p_key: ConstVariantPtr): uint32_t {.gdcall.}
    PtrUtilityFunction* = proc (r_return: TypePtr; p_args: ptr ConstTypePtr; p_argument_count: cint) {.gdcall.}
    ClassConstructor* = proc (): ObjectPtr {.gdcall.}
    InstanceBindingCreateCallback* = proc (p_token: pointer; p_instance: pointer): pointer {.gdcall.}
    InstanceBindingFreeCallback* = proc (p_token: pointer; p_instance: pointer; p_binding: pointer) {.gdcall.}
    InstanceBindingReferenceCallback* = proc (p_token: pointer; p_binding: pointer; p_reference: Bool): Bool {.gdcall.}
    InstanceBindingCallbacks* {.bycopy.} = object
      create_callback*: InstanceBindingCreateCallback
      free_callback*: InstanceBindingFreeCallback
      reference_callback*: InstanceBindingReferenceCallback
    ClassInstancePtr* = pointer
    ClassSet* = proc (p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.gdcall.}
    ClassGet* = proc (p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.}
    ClassGetRID* = proc (p_instance: ClassInstancePtr): uint64_t {.gdcall.}
    PropertyInfo* {.bycopy.} = object
      `type`*: VariantType
      name*: StringNamePtr
      class_name*: StringNamePtr
      hint*: uint32_t

      hint_string*: StringPtr
      usage*: uint32_t

    MethodInfo* {.bycopy.} = object
      name*: StringNamePtr
      return_value*: PropertyInfo
      flags*: uint32_t

      id*: int32_t

      argument_count*: uint32_t
      arguments*: ptr PropertyInfo

      default_argument_count*: uint32_t
      default_arguments*: ptr VariantPtr
    ClassGetPropertyList* = proc (p_instance: ClassInstancePtr; r_count: ptr uint32_t): ptr PropertyInfo {.gdcall.}
    ClassFreePropertyList* {.deprecated_atLeast: (4, 3).} = proc (p_instance: ClassInstancePtr; p_list: ptr PropertyInfo) {.gdcall.}
    ClassPropertyCanRevert* = proc (p_instance: ClassInstancePtr; p_name: ConstStringNamePtr): Bool {.gdcall.}
    ClassPropertyGetRevert* = proc (p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.}

    ClassNotification* {.deprecated_atLeast: (4, 2).} = proc (p_instance: ClassInstancePtr; p_what: int32_t) {.gdcall.}
    ClassToString* = proc (p_instance: ClassInstancePtr; r_is_valid: ptr Bool; p_out: StringPtr) {.gdcall.}
    ClassReference* = proc (p_instance: ClassInstancePtr) {.gdcall.}
    ClassUnreference* = proc (p_instance: ClassInstancePtr) {.gdcall.}
    ClassCallVirtual* = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.}
    ClassCreateInstance* = proc (p_class_userdata: pointer): ObjectPtr {.gdcall.}
    ClassFreeInstance* = proc (p_class_userdata: pointer; p_instance: ClassInstancePtr) {.gdcall.}
    ClassGetVirtual* = proc (p_class_userdata: pointer; p_name: ConstStringNamePtr): ClassCallVirtual {.gdcall.}
    ClassCreationInfo* {.bycopy, deprecated_atLeast: (4, 2).} = object
      is_virtual*: Bool
      is_abstract*: Bool
      set_func*: ClassSet
      get_func*: ClassGet
      get_property_list_func*: ClassGetPropertyList
      free_property_list_func*: ClassFreePropertyList
      property_can_revert_func*: ClassPropertyCanRevert
      property_get_revert_func*: ClassPropertyGetRevert
      notification_func*: ClassNotification
      to_string_func*: ClassToString
      reference_func*: ClassReference
      unreference_func*: ClassUnreference
      create_instance_func*: ClassCreateInstance
      free_instance_func*: ClassFreeInstance
      get_virtual_func*: ClassGetVirtual
      get_rid_func*: ClassGetRID
      class_userdata*: pointer

when TargetVersion >= (4, 2):
  type
    ClassValidateProperty* = proc (p_instance: ClassInstancePtr; p_property: ptr PropertyInfo): Bool {.gdcall.}
    ClassNotification2* = proc (p_instance: ClassInstancePtr; p_what: int32_t; p_reversed: Bool) {.gdcall.}

    ClassRecreateInstance* = proc (p_class_userdata: pointer; p_object: ObjectPtr): ClassInstancePtr {.gdcall.}
    ClassGetVirtualCallData* = proc (p_class_userdata: pointer; p_name: ConstStringNamePtr): pointer {.gdcall.}
    ClassCallVirtualWithData* = proc (p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; p_virtual_call_userdata: pointer; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.}

    ClassCreationInfo2* {.deprecated_atLeast: (4, 3), bycopy.} = object
      is_virtual*: Bool
      is_abstract*: Bool
      is_exposed*: Bool
      set_func*: ClassSet
      get_func*: ClassGet
      get_property_list_func*: ClassGetPropertyList
      free_property_list_func*: ClassFreePropertyList
      property_can_revert_func*: ClassPropertyCanRevert
      property_get_revert_func*: ClassPropertyGetRevert
      validate_property_func*: ClassValidateProperty
      notification_func*: ClassNotification2
      to_string_func*: ClassToString
      reference_func*: ClassReference
      unreference_func*: ClassUnreference
      create_instance_func*: ClassCreateInstance
      free_instance_func*: ClassFreeInstance
      recreate_instance_func*: ClassRecreateInstance
      get_virtual_func*: ClassGetVirtual
      get_virtual_call_data_func*: ClassGetVirtualCallData
      call_virtual_with_data_func*: ClassCallVirtualWithData
      get_rid_func*: ClassGetRID
      class_userdata*: pointer
when TargetVersion >= (4, 3):
  type
    ClassFreePropertyList2* = proc(p_instance: ClassInstancePtr; p_list: ptr UncheckedArray[PropertyInfo]; p_count: uint32_t)
    ClassCreationInfo3* {.bycopy.} = object
      is_virtual*: Bool
      is_abstract*: Bool
      is_exposed*: Bool
      is_runtime*: Bool
      set_func*: ClassSet
      get_func*: ClassGet
      get_property_list_func*: ClassGetPropertyList
      free_property_list_func*: ClassFreePropertyList2
      property_can_revert_func*: ClassPropertyCanRevert
      property_get_revert_func*: ClassPropertyGetRevert
      validate_property_func*: ClassValidateProperty
      notification_func*: ClassNotification2
      to_string_func*: ClassToString
      reference_func*: ClassReference
      unreference_func*: ClassUnreference
      create_instance_func*: ClassCreateInstance
      free_instance_func*: ClassFreeInstance
      recreate_instance_func*: ClassRecreateInstance
      get_virtual_func*: ClassGetVirtual
      get_virtual_call_data_func*: ClassGetVirtualCallData
      call_virtual_with_data_func*: ClassCallVirtualWithData
      get_rid_func*: ClassGetRID
      class_userdata*: pointer

when TargetVersion >= (4, 1):
  type
    ClassLibraryPtr* = pointer
    ClassMethodFlags* {.size: sizeof(cuint).} = enum
      MethodFlag_Normal = 0
      MethodFlag_Editor = 1
      MethodFlag_Const = 2
      MethodFlag_Virtual = 3
      MethodFlag_Vararg = 4
      MethodFlag_Static = 5
      `--PADDING_MAX--` = 31 # To align size-of set[ClassMethodFlags] to size-of cuint.
    ClassMethodArgumentMetadata* {.size: sizeof(cuint).} = enum
      MethodArgumentMetadata_None
      MethodArgumentMetadata_Int_is_Int8
      MethodArgumentMetadata_Int_is_Int16
      MethodArgumentMetadata_Int_is_Int32
      MethodArgumentMetadata_Int_is_Int64
      MethodArgumentMetadata_Int_is_Uint8
      MethodArgumentMetadata_Int_is_Uint16
      MethodArgumentMetadata_Int_is_Uint32
      MethodArgumentMetadata_Int_is_Uint64
      MethodArgumentMetadata_Real_is_Float
      MethodArgumentMetadata_Real_is_Double
    ClassMethodCall* = proc (method_userdata: pointer; p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstVariantPtr]; p_argument_count: Int; r_return: VariantPtr; r_error: ptr CallError) {.gdcall.}
    ClassMethodValidatedCall* = proc (method_userdata: pointer; p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstVariantPtr]; r_return: VariantPtr) {.gdcall.}
    ClassMethodPtrCall* = proc (method_userdata: pointer; p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.}
    ClassMethodInfo* {.bycopy.} = object
      name*: StringNamePtr
      method_userdata*: pointer
      call_func*: ClassMethodCall
      ptrcall_func*: ClassMethodPtrCall
      method_flags*: uint32_t
      has_return_value*: Bool
      return_value_info*: ptr PropertyInfo
      return_value_metadata*: ClassMethodArgumentMetadata
      argument_count*: uint32_t
      arguments_info*: ptr PropertyInfo
      arguments_metadata*: ptr ClassMethodArgumentMetadata
      default_argument_count*: uint32_t
      default_arguments*: ptr VariantPtr

when TargetVersion >= (4, 2):
  type
    CallableCustomCall* = proc (callable_userdata: pointer; p_args: ptr UncheckedArray[ConstVariantPtr]; p_argument_count: Int; r_return: VariantPtr; r_error: ptr CallError) {.gdcall.}
    CallableCustomIsValid* = proc (callable_userdata: pointer): Bool {.gdcall.}
    CallableCustomFree* = proc (callable_userdata: pointer) {.gdcall.}
    CallableCustomHash* = proc (callable_userdata: pointer): uint32_t {.gdcall.}
    CallableCustomEqual* = proc (callable_userdata_a: pointer; callable_userdata_b: pointer): Bool {.gdcall.}
    CallableCustomLessThan* = proc (callable_userdata_a: pointer; callable_userdata_b: pointer): Bool {.gdcall.}
    CallableCustomToString* = proc (callable_userdata: pointer; r_is_valid: ptr Bool; r_out: StringPtr) {.gdcall.}

    CallableCustomInfo* {.deprecated_atLeast: (4, 3), bycopy.} = object
      callable_userdata*: pointer
      token*: pointer
      object_id*: GDObjectInstanceID
      call_func*: CallableCustomCall
      is_valid_func*: CallableCustomIsValid
      free_func*: CallableCustomFree
      hash_func*: CallableCustomHash
      equal_func*: CallableCustomEqual
      less_than_func*: CallableCustomLessThan
      to_string_func*: CallableCustomToString

when TargetVersion >= (4, 3):
  type
    ClassVirtualMethodInfo* {.bycopy.} = object
      name*: StringNamePtr
      method_flags*: uint32_t
      return_value*: PropertyInfo
      return_value_metadata*: ClassMethodArgumentMetadata
      argument_count*: uint32_t
      arguments*: ptr PropertyInfo
      arguments_metadata*: ptr ClassMethodArgumentMetadata

    CallableCustomGetArgumentCount* = proc (callable_userdata: pointer; r_is_valid: ptr Bool): Int
    CallableCustomInfo2* {.bycopy.} = object
      callable_userdata*: pointer
      token*: pointer
      object_id*: GDObjectInstanceID
      call_func*: CallableCustomCall
      is_valid_func*: CallableCustomIsValid
      free_func*: CallableCustomFree
      hash_func*: CallableCustomHash
      equal_func*: CallableCustomEqual
      less_than_func*: CallableCustomLessThan
      to_string_func*: CallableCustomToString
      get_argument_count_func*: CallableCustomGetArgumentCount

when TargetVersion >= (4, 1):
  type
    ScriptInstanceDataPtr* = pointer
    ScriptInstanceSet* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.gdcall.}
    ScriptInstanceGet* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.}
    ScriptInstanceGetPropertyList* = proc (p_instance: ScriptInstanceDataPtr; r_count: ptr uint32_t): ptr PropertyInfo {.gdcall.}
    ScriptInstanceFreePropertyList* {.deprecated_atLeast: (4, 3).} = proc (p_instance: ScriptInstanceDataPtr; p_list: ptr PropertyInfo) {.gdcall.}
    ScriptInstanceGetPropertyType* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; r_is_valid: ptr Bool): VariantType {.gdcall.}
    ScriptInstancePropertyCanRevert* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr): Bool {.gdcall.}
    ScriptInstancePropertyGetRevert* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.}
    ScriptInstanceGetOwner* = proc (p_instance: ScriptInstanceDataPtr): ObjectPtr {.gdcall.}
    ScriptInstancePropertyStateAdd* = proc (p_name: ConstStringNamePtr; p_value: ConstVariantPtr; p_userdata: pointer) {.gdcall.}
    ScriptInstanceGetPropertyState* = proc (p_instance: ScriptInstanceDataPtr; p_add_func: ScriptInstancePropertyStateAdd; p_userdata: pointer) {.gdcall.}
    ScriptInstanceGetMethodList* = proc (p_instance: ScriptInstanceDataPtr; r_count: ptr uint32_t): ptr MethodInfo {.gdcall.}
    ScriptInstanceFreeMethodList* {.deprecated_atLeast: (4, 3).} = proc (p_instance: ScriptInstanceDataPtr; p_list: ptr MethodInfo) {.gdcall.}
    ScriptInstanceHasMethod* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr): Bool {.gdcall.}
    ScriptInstanceCall* = proc (p_self: ScriptInstanceDataPtr; p_method: ConstStringNamePtr; p_args: ptr ConstVariantPtr; p_argument_count: Int; r_return: VariantPtr; r_error: ptr CallError) {.gdcall.}
    ScriptInstanceNotification* {.deprecated_atLeast: (4, 2).} = proc (p_instance: ScriptInstanceDataPtr; p_what: int32_t) {.gdcall.}
    ScriptInstanceToString* = proc (p_instance: ScriptInstanceDataPtr; r_is_valid: ptr Bool; r_out: StringPtr) {.gdcall.}
    ScriptInstanceRefCountIncremented* = proc (p_instance: ScriptInstanceDataPtr) {.gdcall.}
    ScriptInstanceRefCountDecremented* = proc (p_instance: ScriptInstanceDataPtr): Bool {.gdcall.}
    ScriptInstanceGetScript* = proc (p_instance: ScriptInstanceDataPtr): ObjectPtr {.gdcall.}
    ScriptInstanceIsPlaceholder* = proc (p_instance: ScriptInstanceDataPtr): Bool {.gdcall.}
    ScriptLanguagePtr* = pointer
    ScriptInstanceGetLanguage* = proc (p_instance: ScriptInstanceDataPtr): ScriptLanguagePtr {.gdcall.}
    ScriptInstanceFree* = proc (p_instance: ScriptInstanceDataPtr) {.gdcall.}
    ScriptInstancePtr* = pointer

    ScriptInstanceInfo* {.bycopy, deprecated_atLeast: (4, 2).} = object
      set_func*: ScriptInstanceSet
      get_func*: ScriptInstanceGet
      get_property_list_func*: ScriptInstanceGetPropertyList
      free_property_list_func*: ScriptInstanceFreePropertyList
      property_can_revert_func*: ScriptInstancePropertyCanRevert
      property_get_revert_func*: ScriptInstancePropertyGetRevert
      get_owner_func*: ScriptInstanceGetOwner
      get_property_state_func*: ScriptInstanceGetPropertyState
      get_method_list_func*: ScriptInstanceGetMethodList
      free_method_list_func*: ScriptInstanceFreeMethodList
      get_property_type_func*: ScriptInstanceGetPropertyType
      has_method_func*: ScriptInstanceHasMethod
      call_func*: ScriptInstanceCall
      notification_func*: ScriptInstanceNotification
      to_string_func*: ScriptInstanceToString
      refcount_incremented_func*: ScriptInstanceRefCountIncremented
      refcount_decremented_func*: ScriptInstanceRefCountDecremented
      get_script_func*: ScriptInstanceGetScript
      is_placeholder_func*: ScriptInstanceIsPlaceholder
      set_fallback_func*: ScriptInstanceSet
      get_fallback_func*: ScriptInstanceGet
      get_language_func*: ScriptInstanceGetLanguage
      free_func*: ScriptInstanceFree

when TargetVersion >= (4, 2):
  type
    ScriptInstanceGetClassCategory* = proc (p_instance: ScriptInstanceDataPtr; p_class_category: ptr PropertyInfo): Bool {.gdcall.}
    ScriptInstanceValidateProperty* = proc (p_instance: ScriptInstanceDataPtr; p_property: ptr PropertyInfo): Bool {.gdcall.}
    ScriptInstanceNotification2* = proc (p_instance: ScriptInstanceDataPtr; p_what: int32_t; p_reversed: Bool) {.gdcall.}

    ScriptInstanceInfo2* {.deprecated_atLeast: (4, 3), bycopy.} = object
      set_func*: ScriptInstanceSet
      get_func*: ScriptInstanceGet
      get_property_list_func*: ScriptInstanceGetPropertyList
      free_property_list_func*: ScriptInstanceFreePropertyList
      get_class_category_func*: ScriptInstanceGetClassCategory
      property_can_revert_func*: ScriptInstancePropertyCanRevert
      property_get_revert_func*: ScriptInstancePropertyGetRevert
      get_owner_func*: ScriptInstanceGetOwner
      get_property_state_func*: ScriptInstanceGetPropertyState
      get_method_list_func*: ScriptInstanceGetMethodList
      free_method_list_func*: ScriptInstanceFreeMethodList
      get_property_type_func*: ScriptInstanceGetPropertyType
      validate_property_func*: ScriptInstanceValidateProperty
      has_method_func*: ScriptInstanceHasMethod
      call_func*: ScriptInstanceCall
      notification_func*: ScriptInstanceNotification2
      to_string_func*: ScriptInstanceToString
      refcount_incremented_func*: ScriptInstanceRefCountIncremented
      refcount_decremented_func*: ScriptInstanceRefCountDecremented
      get_script_func*: ScriptInstanceGetScript
      is_placeholder_func*: ScriptInstanceIsPlaceholder
      set_fallback_func*: ScriptInstanceSet
      get_fallback_func*: ScriptInstanceGet
      get_language_func*: ScriptInstanceGetLanguage
      free_func*: ScriptInstanceFree

when TargetVersion >= (4, 3):
  type
    ScriptInstanceFreePropertyList2* = proc (p_instance: ScriptInstanceDataPtr; p_list: ptr UncheckedArray[PropertyInfo]; p_count: uint32_t)
    ScriptInstanceFreeMethodList2* = proc (p_instance: ScriptInstanceDataPtr; p_list: ptr UncheckedArray[MethodInfo]; p_count: uint32_t)
    ScriptInstanceGetMethodArgumentCount* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; r_is_valid: ptr Bool): Int

    ScriptInstanceInfo3* {.bycopy.} = object
      set_func*: ScriptInstanceSet
      get_func*: ScriptInstanceGet
      get_property_list_func*: ScriptInstanceGetPropertyList
      free_property_list_func*: ScriptInstanceFreePropertyList2
      get_class_category_func*: ScriptInstanceGetClassCategory
      property_can_revert_func*: ScriptInstancePropertyCanRevert
      property_get_revert_func*: ScriptInstancePropertyGetRevert
      get_owner_func*: ScriptInstanceGetOwner
      get_property_state_func*: ScriptInstanceGetPropertyState
      get_method_list_func*: ScriptInstanceGetMethodList
      free_method_list_func*: ScriptInstanceFreeMethodList2
      get_property_type_func*: ScriptInstanceGetPropertyType
      validate_property_func*: ScriptInstanceValidateProperty
      has_method_func*: ScriptInstanceHasMethod
      get_method_argument_count_func*: ScriptInstanceGetMethodArgumentCount
      call_func*: ScriptInstanceCall
      notification_func*: ScriptInstanceNotification2
      to_string_func*: ScriptInstanceToString
      refcount_incremented_func*: ScriptInstanceRefCountIncremented
      refcount_decremented_func*: ScriptInstanceRefCountDecremented
      get_script_func*: ScriptInstanceGetScript
      is_placeholder_func*: ScriptInstanceIsPlaceholder
      set_fallback_func*: ScriptInstanceSet
      get_fallback_func*: ScriptInstanceGet
      get_language_func*: ScriptInstanceGetLanguage
      free_func*: ScriptInstanceFree

when TargetVersion >= (4, 1):
  type
    InitializationLevel* {.size: sizeof(cuint).} = enum
      Initialization_Core
      Initialization_Servers
      Initialization_Scene
      Initialization_Editor
    Initialization* {.bycopy.} = object
      minimum_initialization_level*: InitializationLevel
      userdata*: pointer
      initialize*: proc (userdata: pointer; p_level: InitializationLevel) {.gdcall.}
      deinitialize*: proc (userdata: pointer; p_level: InitializationLevel) {.gdcall.}
    InterfaceFunctionPtr* = pointer
    InterfaceGetProcAddress* = proc (p_function_name: cstring): InterfaceFunctionPtr {.gdcall.}
    InitializationFunction* = proc (p_get_proc_address: InterfaceGetProcAddress; p_library: ClassLibraryPtr; r_initialization: ptr Initialization): Bool {.gdcall.}

    GodotVersion* {.bycopy.} = object
      major*: uint32_t
      minor*: uint32_t
      patch*: uint32_t
      string*: cstring


when TargetVersion >= (4, 1):
  type
    InterfaceGetGodotVersion* = proc (r_godot_version: ptr GodotVersion) {.gdcall, raises: [].}
    InterfaceMemAlloc* = proc (p_bytes: csize_t): pointer {.gdcall, raises: [].}
    InterfaceMemRealloc* = proc (p_ptr: pointer; p_bytes: csize_t): pointer {.gdcall, raises: [].}
    InterfaceMemFree* = proc (p_ptr: pointer) {.gdcall, raises: [].}
    InterfacePrintError* = proc (p_description: cstring; p_function: cstring; p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall, raises: [].}
    InterfacePrintErrorWithMessage* = proc (p_description: cstring; p_message: cstring; p_function: cstring; p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall, raises: [].}
    InterfacePrintWarning* = proc (p_description: cstring; p_function: cstring; p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall, raises: [].}
    InterfacePrintWarningWithMessage* = proc (p_description: cstring; p_message: cstring; p_function: cstring; p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall, raises: [].}
    InterfacePrintScriptError* = proc (p_description: cstring; p_function: cstring; p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall, raises: [].}
    InterfacePrintScriptErrorWithMessage* = proc (p_description: cstring; p_message: cstring; p_function: cstring; p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall, raises: [].}
    InterfaceGetNativeStructSize* = proc (p_name: ConstStringNamePtr): uint64_t {.gdcall, raises: [].}
    InterfaceVariantNewCopy* = proc (r_dest: UninitializedVariantPtr; p_src: ConstVariantPtr) {.gdcall, raises: [].}
    InterfaceVariantNewNil* = proc (r_dest: UninitializedVariantPtr) {.gdcall, raises: [].}
    InterfaceVariantDestroy* = proc (p_self: VariantPtr) {.gdcall, raises: [].}
    InterfaceVariantCall* = proc (p_self: VariantPtr; p_method: ConstStringNamePtr; p_args: ptr ConstVariantPtr; p_argument_count: Int; r_return: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall, raises: [].}
    InterfaceVariantCallStatic* = proc (p_type: VariantType; p_method: ConstStringNamePtr; p_args: ptr ConstVariantPtr; p_argument_count: Int; r_return: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall, raises: [].}
    InterfaceVariantEvaluate* = proc (p_op: VariantOperator; p_a: ConstVariantPtr; p_b: ConstVariantPtr; r_return: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantSet* = proc (p_self: VariantPtr; p_key: ConstVariantPtr; p_value: ConstVariantPtr; r_valid: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantSetNamed* = proc (p_self: VariantPtr; p_key: ConstStringNamePtr; p_value: ConstVariantPtr; r_valid: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantSetKeyed* = proc (p_self: VariantPtr; p_key: ConstVariantPtr; p_value: ConstVariantPtr; r_valid: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantSetIndexed* = proc (p_self: VariantPtr; p_index: Int; p_value: ConstVariantPtr; r_valid: ptr Bool; r_oob: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantGet* = proc (p_self: ConstVariantPtr; p_key: ConstVariantPtr; r_ret: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantGetNamed* = proc (p_self: ConstVariantPtr; p_key: ConstStringNamePtr; r_ret: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantGetKeyed* = proc (p_self: ConstVariantPtr; p_key: ConstVariantPtr; r_ret: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantGetIndexed* = proc (p_self: ConstVariantPtr; p_index: Int; r_ret: UninitializedVariantPtr; r_valid: ptr Bool; r_oob: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantIterInit* = proc (p_self: ConstVariantPtr; r_iter: UninitializedVariantPtr; r_valid: ptr Bool): Bool {.gdcall, raises: [].}
    InterfaceVariantIterNext* = proc (p_self: ConstVariantPtr; r_iter: VariantPtr; r_valid: ptr Bool): Bool {.gdcall, raises: [].}
    InterfaceVariantIterGet* = proc (p_self: ConstVariantPtr; r_iter: VariantPtr; r_ret: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall, raises: [].}
    InterfaceVariantHash* = proc (p_self: ConstVariantPtr): Int {.gdcall, raises: [].}
    InterfaceVariantRecursiveHash* = proc (p_self: ConstVariantPtr; p_recursion_count: Int): Int {.gdcall, raises: [].}
    InterfaceVariantHashCompare* = proc (p_self: ConstVariantPtr; p_other: ConstVariantPtr): Bool {.gdcall, raises: [].}
    InterfaceVariantBooleanize* = proc (p_self: ConstVariantPtr): Bool {.gdcall, raises: [].}
    InterfaceVariantDuplicate* = proc (p_self: ConstVariantPtr; r_ret: VariantPtr; p_deep: Bool) {.gdcall, raises: [].}
    InterfaceVariantStringify* = proc (p_self: ConstVariantPtr; r_ret: StringPtr) {.gdcall, raises: [].}
    InterfaceVariantGetType* = proc (p_self: ConstVariantPtr): VariantType {.gdcall, raises: [].}
    InterfaceVariantHasMethod* = proc (p_self: ConstVariantPtr; p_method: ConstStringNamePtr): Bool {.gdcall, raises: [].}
    InterfaceVariantHasMember* = proc (p_type: VariantType; p_member: ConstStringNamePtr): Bool {.gdcall, raises: [].}
    InterfaceVariantHasKey* = proc (p_self: ConstVariantPtr; p_key: ConstVariantPtr; r_valid: ptr Bool): Bool {.gdcall, raises: [].}
    InterfaceVariantGetTypeName* = proc (p_type: VariantType; r_name: UninitializedStringPtr) {.gdcall, raises: [].}
    InterfaceVariantCanConvert* = proc (p_from: VariantType; p_to: VariantType): Bool {.gdcall, raises: [].}
    InterfaceVariantCanConvertStrict* = proc (p_from: VariantType; p_to: VariantType): Bool {.gdcall, raises: [].}
    InterfaceGetVariantFromTypeConstructor* = proc (p_type: VariantType): VariantFromTypeConstructorFunc {.gdcall, raises: [].}
    InterfaceGetVariantToTypeConstructor* = proc (p_type: VariantType): TypeFromVariantConstructorFunc {.gdcall, raises: [].}
    InterfaceVariantGetPtrOperatorEvaluator* = proc (p_operator: VariantOperator; p_type_a: VariantType; p_type_b: VariantType): PtrOperatorEvaluator {.gdcall, raises: [].}
    InterfaceVariantGetPtrBuiltinMethod* = proc (p_type: VariantType; p_method: ConstStringNamePtr; p_hash: Int): PtrBuiltInMethod {.gdcall, raises: [].}
    InterfaceVariantGetPtrConstructor* = proc (p_type: VariantType; p_constructor: int32_t): PtrConstructor {.gdcall, raises: [].}
    InterfaceVariantGetPtrDestructor* = proc (p_type: VariantType): PtrDestructor {.gdcall, raises: [].}
    InterfaceVariantConstruct* = proc (p_type: VariantType; r_base: UninitializedVariantPtr; p_args: ptr ConstVariantPtr; p_argument_count: int32_t; r_error: ptr CallError) {.gdcall, raises: [].}
    InterfaceVariantGetPtrSetter* = proc (p_type: VariantType; p_member: ConstStringNamePtr): PtrSetter {.gdcall, raises: [].}
    InterfaceVariantGetPtrGetter* = proc (p_type: VariantType; p_member: ConstStringNamePtr): PtrGetter {.gdcall, raises: [].}
    InterfaceVariantGetPtrIndexedSetter* = proc (p_type: VariantType): PtrIndexedSetter {.gdcall, raises: [].}
    InterfaceVariantGetPtrIndexedGetter* = proc (p_type: VariantType): PtrIndexedGetter {.gdcall, raises: [].}
    InterfaceVariantGetPtrKeyedSetter* = proc (p_type: VariantType): PtrKeyedSetter {.gdcall, raises: [].}
    InterfaceVariantGetPtrKeyedGetter* = proc (p_type: VariantType): PtrKeyedGetter {.gdcall, raises: [].}
    InterfaceVariantGetPtrKeyedChecker* = proc (p_type: VariantType): PtrKeyedChecker {.gdcall, raises: [].}
    InterfaceVariantGetConstantValue* = proc (p_type: VariantType; p_constant: ConstStringNamePtr; r_ret: UninitializedVariantPtr) {.gdcall, raises: [].}
    InterfaceVariantGetPtrUtilityFunction* = proc (p_function: ConstStringNamePtr; p_hash: Int): PtrUtilityFunction {.gdcall, raises: [].}
    InterfaceStringNewWithLatin1Chars* = proc (r_dest: UninitializedStringPtr; p_contents: cstring) {.gdcall, raises: [].}
    InterfaceStringNewWithUtf8Chars* = proc (r_dest: UninitializedStringPtr; p_contents: cstring) {.gdcall, raises: [].}
    InterfaceStringNewWithUtf16Chars* = proc (r_dest: UninitializedStringPtr; p_contents: ptr char16_t) {.gdcall, raises: [].}
    InterfaceStringNewWithUtf32Chars* = proc (r_dest: UninitializedStringPtr; p_contents: ptr char32_t) {.gdcall, raises: [].}
    InterfaceStringNewWithWideChars* = proc (r_dest: UninitializedStringPtr; p_contents: ptr wchar_t) {.gdcall, raises: [].}
    InterfaceStringNewWithLatin1CharsAndLen* = proc (r_dest: UninitializedStringPtr; p_contents: cstring; p_size: Int) {.gdcall, raises: [].}
    InterfaceStringNewWithUtf8CharsAndLen* {.deprecated_atLeast: (4, 3).} = proc (r_dest: UninitializedStringPtr; p_contents: cstring; p_char_count: Int) {.gdcall, raises: [].}
    InterfaceStringNewWithUtf16CharsAndLen* {.deprecated_atLeast: (4, 3).} = proc (r_dest: UninitializedStringPtr; p_contents: ptr char16_t; p_char_count: Int) {.gdcall, raises: [].}
    InterfaceStringNewWithUtf32CharsAndLen* = proc (r_dest: UninitializedStringPtr; p_contents: ptr char32_t; p_char_count: Int) {.gdcall, raises: [].}
    InterfaceStringNewWithWideCharsAndLen* = proc (r_dest: UninitializedStringPtr; p_contents: ptr wchar_t; p_size: Int) {.gdcall, raises: [].}
    InterfaceStringToLatin1Chars* = proc (p_self: ConstStringPtr; r_text: cstring; p_max_write_length: Int): Int {.gdcall, raises: [].}
    InterfaceStringToUtf8Chars* = proc (p_self: ConstStringPtr; r_text: cstring; p_max_write_length: Int): Int {.gdcall, raises: [].}
    InterfaceStringToUtf16Chars* = proc (p_self: ConstStringPtr; r_text: ptr char16_t; p_max_write_length: Int): Int {.gdcall, raises: [].}
    InterfaceStringToUtf32Chars* = proc (p_self: ConstStringPtr; r_text: ptr char32_t; p_max_write_length: Int): Int {.gdcall, raises: [].}
    InterfaceStringToWideChars* = proc (p_self: ConstStringPtr; r_text: ptr wchar_t; p_max_write_length: Int): Int {.gdcall, raises: [].}
    InterfaceStringOperatorIndex* = proc (p_self: StringPtr; p_index: Int): ptr char32_t {.gdcall, raises: [].}
    InterfaceStringOperatorIndexConst* = proc (p_self: ConstStringPtr; p_index: Int): ptr char32_t {.gdcall, raises: [].}
    InterfaceStringOperatorPlusEqString* = proc (p_self: StringPtr; p_b: ConstStringPtr) {.gdcall, raises: [].}
    InterfaceStringOperatorPlusEqChar* = proc (p_self: StringPtr; p_b: char32_t) {.gdcall, raises: [].}
    InterfaceStringOperatorPlusEqCstr* = proc (p_self: StringPtr; p_b: cstring) {.gdcall, raises: [].}
    InterfaceStringOperatorPlusEqWcstr* = proc (p_self: StringPtr; p_b: ptr wchar_t) {.gdcall, raises: [].}
    InterfaceStringOperatorPlusEqC32str* = proc (p_self: StringPtr; p_b: ptr char32_t) {.gdcall, raises: [].}
    InterfaceXmlParserOpenBuffer* = proc (p_instance: ObjectPtr; p_buffer: ptr uint8_t; p_size: csize_t): Int {.gdcall, raises: [].}
    InterfaceFileAccessStoreBuffer* = proc (p_instance: ObjectPtr; p_src: ptr uint8_t; p_length: uint64_t) {.gdcall, raises: [].}
    InterfaceFileAccessGetBuffer* = proc (p_instance: ConstObjectPtr; p_dst: ptr uint8_t; p_length: uint64_t): uint64_t {.gdcall, raises: [].}
    InterfaceWorkerThreadPoolAddNativeGroupTask* = proc (p_instance: ObjectPtr; p_func: proc (a1: pointer; a2: uint32_t); p_userdata: pointer; p_elements: cint; p_tasks: cint; p_high_priority: Bool; p_description: ConstStringPtr): int64_t {.gdcall, raises: [].}
    InterfaceWorkerThreadPoolAddNativeTask* = proc (p_instance: ObjectPtr; p_func: proc (a1: pointer); p_userdata: pointer; p_high_priority: Bool; p_description: ConstStringPtr): int64_t {.gdcall, raises: [].}
    InterfacePackedByteArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): ptr uint8_t {.gdcall, raises: [].}
    InterfacePackedByteArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): ptr uint8_t {.gdcall, raises: [].}
    InterfacePackedColorArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
    InterfacePackedColorArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
    InterfacePackedFloat32ArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): ptr cfloat {.gdcall, raises: [].}
    InterfacePackedFloat32ArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): ptr cfloat {.gdcall, raises: [].}
    InterfacePackedFloat64ArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): ptr cdouble {.gdcall, raises: [].}
    InterfacePackedFloat64ArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): ptr cdouble {.gdcall, raises: [].}
    InterfacePackedInt32ArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): ptr int32_t {.gdcall, raises: [].}
    InterfacePackedInt32ArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): ptr int32_t {.gdcall, raises: [].}
    InterfacePackedInt64ArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): ptr int64_t {.gdcall, raises: [].}
    InterfacePackedInt64ArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): ptr int64_t {.gdcall, raises: [].}
    InterfacePackedStringArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): StringPtr {.gdcall, raises: [].}
    InterfacePackedStringArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): StringPtr {.gdcall, raises: [].}
    InterfacePackedVector2ArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
    InterfacePackedVector2ArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
    InterfacePackedVector3ArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
    InterfacePackedVector3ArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
    InterfaceArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): VariantPtr {.gdcall, raises: [].}
    InterfaceArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): VariantPtr {.gdcall, raises: [].}
    InterfaceArrayRef* = proc (p_self: TypePtr; p_from: ConstTypePtr) {.gdcall, raises: [].}
    InterfaceArraySetTyped* = proc (p_self: TypePtr; p_type: VariantType; p_class_name: ConstStringNamePtr; p_script: ConstVariantPtr) {.gdcall, raises: [].}
    InterfaceDictionaryOperatorIndex* = proc (p_self: TypePtr; p_key: ConstVariantPtr): VariantPtr {.gdcall, raises: [].}
    InterfaceDictionaryOperatorIndexConst* = proc (p_self: ConstTypePtr; p_key: ConstVariantPtr): VariantPtr {.gdcall, raises: [].}
    InterfaceObjectMethodBindCall* = proc (p_method_bind: MethodBindPtr; p_instance: ObjectPtr; p_args: ptr ConstVariantPtr; p_arg_count: Int; r_ret: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall, raises: [].}
    InterfaceObjectMethodBindPtrcall* = proc (p_method_bind: MethodBindPtr; p_instance: ObjectPtr; p_args: ptr ConstTypePtr; r_ret: TypePtr) {.gdcall, raises: [].}
    InterfaceObjectDestroy* = proc (p_o: ObjectPtr) {.gdcall, raises: [].}
    InterfaceGlobalGetSingleton* = proc (p_name: ConstStringNamePtr): ObjectPtr {.gdcall, raises: [].}
    InterfaceObjectGetInstanceBinding* = proc (p_o: ObjectPtr; p_token: pointer; p_callbacks: ptr InstanceBindingCallbacks): pointer {.gdcall, raises: [].}
    InterfaceObjectSetInstanceBinding* = proc (p_o: ObjectPtr; p_token: pointer; p_binding: pointer; p_callbacks: ptr InstanceBindingCallbacks) {.gdcall, raises: [].}
    InterfaceObjectSetInstance* = proc (p_o: ObjectPtr; p_classname: ConstStringNamePtr; p_instance: ClassInstancePtr) {.gdcall, raises: [].}
    InterfaceObjectGetClassName* = proc (p_object: ConstObjectPtr; p_library: ClassLibraryPtr; r_class_name: UninitializedStringNamePtr): Bool {.gdcall, raises: [].}
    InterfaceObjectCastTo* = proc (p_object: ConstObjectPtr; p_class_tag: pointer): ObjectPtr {.gdcall, raises: [].}
    InterfaceObjectGetInstanceFromId* = proc (p_instance_id: GDObjectInstanceID): ObjectPtr {.gdcall, raises: [].}
    InterfaceObjectGetInstanceId* = proc (p_object: ConstObjectPtr): GDObjectInstanceID {.gdcall, raises: [].}
    InterfaceRefGetObject* = proc (p_ref: ConstRefPtr): ObjectPtr {.gdcall, raises: [].}
    InterfaceRefSetObject* = proc (p_ref: RefPtr; p_object: ObjectPtr) {.gdcall, raises: [].}
    InterfaceScriptInstanceCreate* {.deprecated_atLeast: (4, 2).} = proc (p_info: ptr ScriptInstanceInfo; p_instance_data: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall, raises: [].}
    InterfaceClassdbConstructObject* = proc (p_classname: ConstStringNamePtr): ObjectPtr {.gdcall, raises: [].}
    InterfaceClassdbGetMethodBind* = proc (p_classname: ConstStringNamePtr; p_methodname: ConstStringNamePtr; p_hash: Int): MethodBindPtr {.gdcall, raises: [].}
    InterfaceClassdbGetClassTag* = proc (p_classname: ConstStringNamePtr): pointer {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClass* {.deprecated_atLeast: (4, 2).} = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_parent_class_name: ConstStringNamePtr; p_extension_funcs: ptr ClassCreationInfo) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClassMethod* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_method_info: ptr ClassMethodInfo) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClassIntegerConstant* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_enum_name: ConstStringNamePtr; p_constant_name: ConstStringNamePtr; p_constant_value: Int; p_is_bitfield: Bool) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClassProperty* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_info: ptr PropertyInfo; p_setter: ConstStringNamePtr; p_getter: ConstStringNamePtr) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClassPropertyGroup* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_group_name: ConstStringPtr; p_prefix: ConstStringPtr) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClassPropertySubgroup* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_subgroup_name: ConstStringPtr; p_prefix: ConstStringPtr) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClassSignal* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_signal_name: ConstStringNamePtr; p_argument_info: ptr PropertyInfo; p_argument_count: Int) {.gdcall, raises: [].}
    InterfaceClassdbUnregisterExtensionClass* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr) {.gdcall, raises: [].}
    InterfaceGetLibraryPath* = proc (p_library: ClassLibraryPtr; r_path: UninitializedStringPtr) {.gdcall, raises: [].}
    InterfaceEditorAddPlugin* = proc (p_class_name: ConstStringNamePtr) {.gdcall, raises: [].}
    InterfaceEditorRemovePlugin* = proc (p_class_name: ConstStringNamePtr) {.gdcall, raises: [].}

when TargetVersion >= (4, 2):
  type
    InterfaceStringResize* = proc (p_self: StringPtr; p_resize: Int): Int {.gdcall, raises: [].}
    InterfaceStringNameNewWithLatin1Chars* = proc (r_dest: UninitializedStringNamePtr; p_contents: cstring; p_is_static: Bool) {.gdcall, raises: [].}
    InterfaceStringNameNewWithUtf8Chars* = proc (r_dest: UninitializedStringNamePtr; p_contents: cstring) {.gdcall, raises: [].}
    InterfaceStringNameNewWithUtf8CharsAndLen* = proc (r_dest: UninitializedStringNamePtr; p_contents: cstring; p_size: Int) {.gdcall, raises: [].}
    InterfaceObjectFreeInstanceBinding* = proc (p_o: ObjectPtr; p_token: pointer) {.gdcall, raises: [].}
    InterfaceScriptInstanceCreate2* {.deprecated_atLeast: (4, 3).} = proc (p_info: ptr ScriptInstanceInfo2; p_instance_data: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall, raises: [].}
    InterfacePlaceHolderScriptInstanceCreate* = proc (p_language: ObjectPtr; p_script: ObjectPtr; p_owner: ObjectPtr): ScriptInstancePtr {.gdcall, raises: [].}
    InterfacePlaceHolderScriptInstanceUpdate* = proc (p_placeholder: ScriptInstancePtr; p_properties: ConstTypePtr; p_values: ConstTypePtr) {.gdcall, raises: [].}
    InterfaceObjectGetScriptInstance* = proc (p_object: ConstObjectPtr; p_language: ObjectPtr): ScriptInstanceDataPtr {.gdcall, raises: [].}
    InterfaceCallableCustomCreate* {.deprecated_atLeast: (4, 3).} = proc (r_callable: UninitializedTypePtr; p_callable_custom_info: ptr CallableCustomInfo) {.gdcall, raises: [].}
    InterfaceCallableCustomGetUserData* = proc (p_callable: ConstTypePtr; p_token: pointer): pointer {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClass2* {.deprecated_atLeast: (4, 3).} = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_parent_class_name: ConstStringNamePtr; p_extension_funcs: ptr ClassCreationInfo2) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClassPropertyIndexed* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_info: ptr PropertyInfo; p_setter: ConstStringNamePtr; p_getter: ConstStringNamePtr; p_index: Int) {.gdcall, raises: [].}

when TargetVersion >= (4, 3):
  type
    InterfaceStringNewWithUtf8CharsAndLen2* = proc (r_dest: UninitializedStringPtr; p_contents: cstring; p_size: Int): Int {.gdcall, raises: [].}
    InterfaceStringNewWithUtf16CharsAndLen2* = proc (r_dest: UninitializedStringPtr; p_contents: ptr char16_t; p_char_count: Int; p_default_little_endian: Bool): Int {.gdcall, raises: [].}
    InterfaceImagePtrw* = proc (p_instance: ObjectPtr): ptr uint8_t {.gdcall, raises: [].}
    InterfaceImagePtr* = proc (p_instance: ObjectPtr): ptr uint8_t {.gdcall, raises: [].}
    InterfacePackedVector4ArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
    InterfacePackedVector4ArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
    InterfaceObjectHasScriptMethod* = proc (p_object: ConstObjectPtr; p_method: ConstStringNamePtr): Bool {.gdcall, raises: [].}
    InterfaceObjectCallScriptMethod* = proc (p_object: ObjectPtr; p_method: ConstStringNamePtr; p_args: ptr ConstVariantPtr; p_argument_count: Int; r_return: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall, raises: [].}
    InterfaceScriptInstanceCreate3* = proc (p_info: ptr ScriptInstanceInfo3; p_instance_data: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall, raises: [].}
    InterfaceCallableCustomCreate2* = proc (r_callable: UninitializedTypePtr; p_callable_custom_info: ptr CallableCustomInfo2) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClass3* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_parent_class_name: ConstStringNamePtr; p_extension_funcs: ptr ClassCreationInfo3) {.gdcall, raises: [].}
    InterfaceClassdbRegisterExtensionClassVirtualMethod* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_method_info: ptr ClassVirtualMethodInfo) {.gdcall, raises: [].}
    InterfaceEditorHelpLoadXmlFromUtf8Chars* = proc (p_data: cstring) {.gdcall, raises: [].}
    InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen* = proc (p_data: cstring; p_size: Int) {.gdcall, raises: [].}
