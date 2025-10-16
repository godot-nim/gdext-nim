
type
  char32_t* {.importc: "char32_t".} = uint32_t
  char16_t* {.importc: "char16_t".} = uint16_t
  VariantType* {.importc: "GDExtensionVariantType".} = enum
    VARIANT_TYPE_NIL, VARIANT_TYPE_BOOL, VARIANT_TYPE_INT, VARIANT_TYPE_FLOAT,
    VARIANT_TYPE_STRING, VARIANT_TYPE_VECTOR2, VARIANT_TYPE_VECTOR2I,
    VARIANT_TYPE_RECT2, VARIANT_TYPE_RECT2I, VARIANT_TYPE_VECTOR3,
    VARIANT_TYPE_VECTOR3I, VARIANT_TYPE_TRANSFORM2D, VARIANT_TYPE_VECTOR4,
    VARIANT_TYPE_VECTOR4I, VARIANT_TYPE_PLANE, VARIANT_TYPE_QUATERNION,
    VARIANT_TYPE_AABB, VARIANT_TYPE_BASIS, VARIANT_TYPE_TRANSFORM3D,
    VARIANT_TYPE_PROJECTION, VARIANT_TYPE_COLOR, VARIANT_TYPE_STRING_NAME,
    VARIANT_TYPE_NODE_PATH, VARIANT_TYPE_RID, VARIANT_TYPE_OBJECT,
    VARIANT_TYPE_CALLABLE, VARIANT_TYPE_SIGNAL, VARIANT_TYPE_DICTIONARY,
    VARIANT_TYPE_ARRAY, VARIANT_TYPE_PACKED_BYTE_ARRAY,
    VARIANT_TYPE_PACKED_INT32_ARRAY, VARIANT_TYPE_PACKED_INT64_ARRAY,
    VARIANT_TYPE_PACKED_FLOAT32_ARRAY, VARIANT_TYPE_PACKED_FLOAT64_ARRAY,
    VARIANT_TYPE_PACKED_STRING_ARRAY, VARIANT_TYPE_PACKED_VECTOR2_ARRAY,
    VARIANT_TYPE_PACKED_VECTOR3_ARRAY, VARIANT_TYPE_PACKED_COLOR_ARRAY,
    VARIANT_TYPE_PACKED_VECTOR4_ARRAY
  VariantPtr* {.importc: "GDExtensionVariantPtr".} = pointer
  ConstVariantPtr* {.importc: "GDExtensionConstVariantPtr".} = pointer
  UninitializedVariantPtr* {.importc: "GDExtensionUninitializedVariantPtr".} = pointer
  StringNamePtr* {.importc: "GDExtensionStringNamePtr".} = pointer
  ConstStringNamePtr* {.importc: "GDExtensionConstStringNamePtr".} = pointer
  UninitializedStringNamePtr* {.importc: "GDExtensionUninitializedStringNamePtr".} = pointer
  StringPtr* {.importc: "GDExtensionStringPtr".} = pointer
  ConstStringPtr* {.importc: "GDExtensionConstStringPtr".} = pointer
  UninitializedStringPtr* {.importc: "GDExtensionUninitializedStringPtr".} = pointer
  ObjectPtr* {.importc: "GDExtensionObjectPtr".} = distinct pointer
  ConstObjectPtr* {.importc: "GDExtensionConstObjectPtr".} = ObjectPtr
  UninitializedObjectPtr* {.importc: "GDExtensionUninitializedObjectPtr".} = pointer
  TypePtr* {.importc: "GDExtensionTypePtr".} = pointer
  ConstTypePtr* {.importc: "GDExtensionConstTypePtr".} = pointer
  UninitializedTypePtr* {.importc: "GDExtensionUninitializedTypePtr".} = pointer
  MethodBindPtr* {.importc: "GDExtensionMethodBindPtr".} = pointer
  Int* {.importc: "GDExtensionInt".} = int64_t
  Bool* {.importc: "GDExtensionBool".} = bool
  GDObjectInstanceID* {.importc: "GDObjectInstanceID".} = uint64_t
  RefPtr* {.importc: "GDExtensionRefPtr".} = pointer
  ConstRefPtr* {.importc: "GDExtensionConstRefPtr".} = pointer
  CallErrorType* {.importc: "GDExtensionCallErrorType".} = enum
    CALL_OK, CALL_ERROR_INVALID_METHOD, CALL_ERROR_INVALID_ARGUMENT,
    CALL_ERROR_TOO_MANY_ARGUMENTS, CALL_ERROR_TOO_FEW_ARGUMENTS,
    CALL_ERROR_INSTANCE_IS_NULL, CALL_ERROR_METHOD_NOT_CONST
  CallError* {.byref, importc: "GDExtensionCallError".} = object
    error*: CallErrorType
    argument*: int32_t
    expected*: int32_t
  VariantFromTypeConstructorFunc* {.importc: "GDExtensionVariantFromTypeConstructorFunc".} = proc (
      a1: UninitializedVariantPtr; a2: TypePtr) {.gdcall.}
  TypeFromVariantConstructorFunc* {.importc: "GDExtensionTypeFromVariantConstructorFunc".} = proc (
      a1: UninitializedTypePtr; a2: VariantPtr) {.gdcall.}
  VariantGetInternalPtrFunc* {.importc: "GDExtensionVariantGetInternalPtrFunc".} = proc (
      a1: VariantPtr): pointer {.gdcall.}
  PtrOperatorEvaluator* {.importc: "GDExtensionPtrOperatorEvaluator".} = proc (
      p_left: ConstTypePtr; p_right: ConstTypePtr; r_result: TypePtr) {.gdcall.}
  PtrBuiltInMethod* {.importc: "GDExtensionPtrBuiltInMethod".} = proc (
      p_base: TypePtr; p_args: ptr ConstTypePtr; r_return: TypePtr;
      p_argument_count: cint) {.gdcall.}
  PtrConstructor* {.importc: "GDExtensionPtrConstructor".} = proc (
      p_base: UninitializedTypePtr; p_args: ptr ConstTypePtr) {.gdcall.}
  PtrDestructor* {.importc: "GDExtensionPtrDestructor".} = proc (p_base: TypePtr) {.
      gdcall.}
  PtrSetter* {.importc: "GDExtensionPtrSetter".} = proc (p_base: TypePtr;
      p_value: ConstTypePtr) {.gdcall.}
  PtrGetter* {.importc: "GDExtensionPtrGetter".} = proc (p_base: ConstTypePtr;
      r_value: TypePtr) {.gdcall.}
  PtrIndexedSetter* {.importc: "GDExtensionPtrIndexedSetter".} = proc (
      p_base: TypePtr; p_index: Int; p_value: ConstTypePtr) {.gdcall.}
  PtrIndexedGetter* {.importc: "GDExtensionPtrIndexedGetter".} = proc (
      p_base: ConstTypePtr; p_index: Int; r_value: TypePtr) {.gdcall.}
  PtrKeyedSetter* {.importc: "GDExtensionPtrKeyedSetter".} = proc (
      p_base: TypePtr; p_key: ConstTypePtr; p_value: ConstTypePtr) {.gdcall.}
  PtrKeyedGetter* {.importc: "GDExtensionPtrKeyedGetter".} = proc (
      p_base: ConstTypePtr; p_key: ConstTypePtr; r_value: TypePtr) {.gdcall.}
  PtrKeyedChecker* {.importc: "GDExtensionPtrKeyedChecker".} = proc (
      p_base: ConstVariantPtr; p_key: ConstVariantPtr): uint32_t {.gdcall.}
  PtrUtilityFunction* {.importc: "GDExtensionPtrUtilityFunction".} = proc (
      r_return: TypePtr; p_args: ptr ConstTypePtr; p_argument_count: cint) {.
      gdcall.}
  ClassConstructor* {.importc: "GDExtensionClassConstructor".} = proc (): ObjectPtr {.
      gdcall.}
  InstanceBindingCreateCallback* {.importc: "GDExtensionInstanceBindingCreateCallback".} = proc (
      p_token: pointer; p_instance: pointer): pointer {.gdcall.}
  InstanceBindingFreeCallback* {.importc: "GDExtensionInstanceBindingFreeCallback".} = proc (
      p_token: pointer; p_instance: pointer; p_binding: pointer) {.gdcall.}
  InstanceBindingReferenceCallback* {.importc: "GDExtensionInstanceBindingReferenceCallback".} = proc (
      p_token: pointer; p_binding: pointer; p_reference: Bool): Bool {.gdcall.}
  InstanceBindingCallbacks* {.byref,
                              importc: "GDExtensionInstanceBindingCallbacks".} = object
    create_callback*: InstanceBindingCreateCallback
    free_callback*: InstanceBindingFreeCallback
    reference_callback*: InstanceBindingReferenceCallback
  ClassInstancePtr* {.importc: "GDExtensionClassInstancePtr".} = pointer
  ClassSet* {.importc: "GDExtensionClassSet".} = proc (
      p_instance: ClassInstancePtr; p_name: ConstStringNamePtr;
      p_value: ConstVariantPtr): Bool {.gdcall.}
  ClassGet* {.importc: "GDExtensionClassGet".} = proc (
      p_instance: ClassInstancePtr; p_name: ConstStringNamePtr;
      r_ret: VariantPtr): Bool {.gdcall.}
  ClassGetRID* {.importc: "GDExtensionClassGetRID".} = proc (
      p_instance: ClassInstancePtr): uint64_t {.gdcall.}
  PropertyInfo* {.byref, importc: "GDExtensionPropertyInfo".} = object
    `type`*: VariantType
    name*: StringNamePtr
    class_name*: StringNamePtr
    hint*: uint32_t
    hint_string*: StringPtr
    usage*: uint32_t
  MethodInfo* {.byref, importc: "GDExtensionMethodInfo".} = object
    name*: StringNamePtr
    return_value*: PropertyInfo
    flags*: uint32_t
    id*: int32_t
    argument_count*: uint32_t
    arguments*: ptr PropertyInfo
    default_argument_count*: uint32_t
    default_arguments*: ptr VariantPtr
  ClassGetPropertyList* {.importc: "GDExtensionClassGetPropertyList".} = proc (
      p_instance: ClassInstancePtr; r_count: ptr uint32_t): ptr PropertyInfo {.
      gdcall.}
  ClassFreePropertyList* {.importc: "GDExtensionClassFreePropertyList".} = proc (
      p_instance: ClassInstancePtr; p_list: ptr UncheckedArray[PropertyInfo]) {.
      gdcall.}
  ClassFreePropertyList2* {.importc: "GDExtensionClassFreePropertyList2".} = proc (
      p_instance: ClassInstancePtr; p_list: ptr UncheckedArray[PropertyInfo];
      p_count: uint32_t) {.gdcall.}
  ClassPropertyCanRevert* {.importc: "GDExtensionClassPropertyCanRevert".} = proc (
      p_instance: ClassInstancePtr; p_name: ConstStringNamePtr): Bool {.gdcall.}
  ClassPropertyGetRevert* {.importc: "GDExtensionClassPropertyGetRevert".} = proc (
      p_instance: ClassInstancePtr; p_name: ConstStringNamePtr;
      r_ret: VariantPtr): Bool {.gdcall.}
  ClassValidateProperty* {.importc: "GDExtensionClassValidateProperty".} = proc (
      p_instance: ClassInstancePtr; p_property: ptr PropertyInfo): Bool {.gdcall.}
  ClassNotification* {.importc: "GDExtensionClassNotification".} = proc (
      p_instance: ClassInstancePtr; p_what: int32_t) {.gdcall.}
  ClassNotification2* {.importc: "GDExtensionClassNotification2".} = proc (
      p_instance: ClassInstancePtr; p_what: int32_t; p_reversed: Bool) {.gdcall.}
  ClassToString* {.importc: "GDExtensionClassToString".} = proc (
      p_instance: ClassInstancePtr; r_is_valid: ptr Bool; p_out: StringPtr) {.
      gdcall.}
  ClassReference* {.importc: "GDExtensionClassReference".} = proc (
      p_instance: ClassInstancePtr) {.gdcall.}
  ClassUnreference* {.importc: "GDExtensionClassUnreference".} = proc (
      p_instance: ClassInstancePtr) {.gdcall.}
  ClassCallVirtual* {.importc: "GDExtensionClassCallVirtual".} = proc (
      p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr];
      r_ret: TypePtr) {.gdcall.}
  ClassCreateInstance* {.importc: "GDExtensionClassCreateInstance".} = proc (
      p_class_userdata: pointer): ObjectPtr {.gdcall.}
  ClassCreateInstance2* {.importc: "GDExtensionClassCreateInstance2".} = proc (
      p_class_userdata: pointer; p_notify_postinitialize: Bool): ObjectPtr {.
      gdcall.}
  ClassFreeInstance* {.importc: "GDExtensionClassFreeInstance".} = proc (
      p_class_userdata: pointer; p_instance: ClassInstancePtr) {.gdcall.}
  ClassRecreateInstance* {.importc: "GDExtensionClassRecreateInstance".} = proc (
      p_class_userdata: pointer; p_object: ObjectPtr): ClassInstancePtr {.gdcall.}
  ClassGetVirtual* {.importc: "GDExtensionClassGetVirtual".} = proc (
      p_class_userdata: pointer; p_name: ConstStringNamePtr): ClassCallVirtual {.
      gdcall.}
  ClassGetVirtual2* {.importc: "GDExtensionClassGetVirtual2".} = proc (
      p_class_userdata: pointer; p_name: ConstStringNamePtr; p_hash: uint32_t): ClassCallVirtual {.
      gdcall.}
  ClassGetVirtualCallData* {.importc: "GDExtensionClassGetVirtualCallData".} = proc (
      p_class_userdata: pointer; p_name: ConstStringNamePtr): pointer {.gdcall.}
  ClassGetVirtualCallData2* {.importc: "GDExtensionClassGetVirtualCallData2".} = proc (
      p_class_userdata: pointer; p_name: ConstStringNamePtr; p_hash: uint32_t): pointer {.
      gdcall.}
  ClassCallVirtualWithData* {.importc: "GDExtensionClassCallVirtualWithData".} = proc (
      p_instance: ClassInstancePtr; p_name: ConstStringNamePtr;
      p_virtual_call_userdata: pointer;
      p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.}
  ClassCreationInfo* {.byref, importc: "GDExtensionClassCreationInfo".} = object
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
  ClassCreationInfo2* {.byref, importc: "GDExtensionClassCreationInfo2".} = object
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
  ClassCreationInfo3* {.byref, importc: "GDExtensionClassCreationInfo3".} = object
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
  ClassCreationInfo4* {.byref, importc: "GDExtensionClassCreationInfo4".} = object
    is_virtual*: Bool
    is_abstract*: Bool
    is_exposed*: Bool
    is_runtime*: Bool
    icon_path*: ConstStringPtr
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
    create_instance_func*: ClassCreateInstance2
    free_instance_func*: ClassFreeInstance
    recreate_instance_func*: ClassRecreateInstance
    get_virtual_func*: ClassGetVirtual2
    get_virtual_call_data_func*: ClassGetVirtualCallData2
    call_virtual_with_data_func*: ClassCallVirtualWithData
    class_userdata*: pointer
  ClassCreationInfo5* {.importc: "GDExtensionClassCreationInfo5".} = ClassCreationInfo4
  ClassLibraryPtr* {.importc: "GDExtensionClassLibraryPtr".} = pointer
  EditorGetClassesUsedCallback* {.importc: "GDExtensionEditorGetClassesUsedCallback".} = proc (
      p_packed_string_array: TypePtr) {.gdcall.}
  ClassMethodFlags* {.importc: "GDExtensionClassMethodFlags".} = enum
    METHOD_FLAG_NORMAL = 0, METHOD_FLAG_EDITOR = 1, METHOD_FLAG_CONST = 2,
    METHOD_FLAG_VIRTUAL = 3, METHOD_FLAG_VARARG = 4, METHOD_FLAG_STATIC = 5
  ClassMethodArgumentMetadata* {.importc: "GDExtensionClassMethodArgumentMetadata".} = enum
    METHOD_ARGUMENT_METADATA_NONE, METHOD_ARGUMENT_METADATA_INT_IS_INT8,
    METHOD_ARGUMENT_METADATA_INT_IS_INT16,
    METHOD_ARGUMENT_METADATA_INT_IS_INT32,
    METHOD_ARGUMENT_METADATA_INT_IS_INT64,
    METHOD_ARGUMENT_METADATA_INT_IS_UINT8,
    METHOD_ARGUMENT_METADATA_INT_IS_UINT16,
    METHOD_ARGUMENT_METADATA_INT_IS_UINT32,
    METHOD_ARGUMENT_METADATA_INT_IS_UINT64,
    METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT,
    METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE,
    METHOD_ARGUMENT_METADATA_INT_IS_CHAR16,
    METHOD_ARGUMENT_METADATA_INT_IS_CHAR32
  ClassMethodCall* {.importc: "GDExtensionClassMethodCall".} = proc (
      method_userdata: pointer; p_instance: ClassInstancePtr;
      p_args: ptr UncheckedArray[ConstVariantPtr]; p_argument_count: Int;
      r_return: VariantPtr; r_error: ptr CallError) {.gdcall.}
  ClassMethodValidatedCall* {.importc: "GDExtensionClassMethodValidatedCall".} = proc (
      method_userdata: pointer; p_instance: ClassInstancePtr;
      p_args: ptr UncheckedArray[ConstVariantPtr]; r_return: VariantPtr) {.
      gdcall.}
  ClassMethodPtrCall* {.importc: "GDExtensionClassMethodPtrCall".} = proc (
      method_userdata: pointer; p_instance: ClassInstancePtr;
      p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.}
  ClassMethodInfo* {.byref, importc: "GDExtensionClassMethodInfo".} = object
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
  ClassVirtualMethodInfo* {.byref, importc: "GDExtensionClassVirtualMethodInfo".} = object
    name*: StringNamePtr
    method_flags*: uint32_t
    return_value*: PropertyInfo
    return_value_metadata*: ClassMethodArgumentMetadata
    argument_count*: uint32_t
    arguments*: ptr PropertyInfo
    arguments_metadata*: ptr ClassMethodArgumentMetadata
  CallableCustomCall* {.importc: "GDExtensionCallableCustomCall".} = proc (
      callable_userdata: pointer; p_args: ptr UncheckedArray[ConstVariantPtr];
      p_argument_count: Int; r_return: VariantPtr; r_error: ptr CallError) {.
      gdcall.}
  CallableCustomIsValid* {.importc: "GDExtensionCallableCustomIsValid".} = proc (
      callable_userdata: pointer): Bool {.gdcall.}
  CallableCustomFree* {.importc: "GDExtensionCallableCustomFree".} = proc (
      callable_userdata: pointer) {.gdcall.}
  CallableCustomHash* {.importc: "GDExtensionCallableCustomHash".} = proc (
      callable_userdata: pointer): uint32_t {.gdcall.}
  CallableCustomEqual* {.importc: "GDExtensionCallableCustomEqual".} = proc (
      callable_userdata_a: pointer; callable_userdata_b: pointer): Bool {.gdcall.}
  CallableCustomLessThan* {.importc: "GDExtensionCallableCustomLessThan".} = proc (
      callable_userdata_a: pointer; callable_userdata_b: pointer): Bool {.gdcall.}
  CallableCustomToString* {.importc: "GDExtensionCallableCustomToString".} = proc (
      callable_userdata: pointer; r_is_valid: ptr Bool; r_out: StringPtr) {.
      gdcall.}
  CallableCustomGetArgumentCount* {.importc: "GDExtensionCallableCustomGetArgumentCount".} = proc (
      callable_userdata: pointer; r_is_valid: ptr Bool): Int {.gdcall.}
  CallableCustomInfo* {.byref, importc: "GDExtensionCallableCustomInfo".} = object
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
  CallableCustomInfo2* {.byref, importc: "GDExtensionCallableCustomInfo2".} = object
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
  ScriptInstanceDataPtr* {.importc: "GDExtensionScriptInstanceDataPtr".} = pointer
  ScriptInstanceSet* {.importc: "GDExtensionScriptInstanceSet".} = proc (
      p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr;
      p_value: ConstVariantPtr): Bool {.gdcall.}
  ScriptInstanceGet* {.importc: "GDExtensionScriptInstanceGet".} = proc (
      p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr;
      r_ret: VariantPtr): Bool {.gdcall.}
  ScriptInstanceGetPropertyList* {.importc: "GDExtensionScriptInstanceGetPropertyList".} = proc (
      p_instance: ScriptInstanceDataPtr; r_count: ptr uint32_t): ptr PropertyInfo {.
      gdcall.}
  ScriptInstanceFreePropertyList* {.importc: "GDExtensionScriptInstanceFreePropertyList".} = proc (
      p_instance: ScriptInstanceDataPtr;
      p_list: ptr UncheckedArray[PropertyInfo]) {.gdcall.}
  ScriptInstanceFreePropertyList2* {.importc: "GDExtensionScriptInstanceFreePropertyList2".} = proc (
      p_instance: ScriptInstanceDataPtr;
      p_list: ptr UncheckedArray[PropertyInfo]; p_count: uint32_t) {.gdcall.}
  ScriptInstanceGetClassCategory* {.importc: "GDExtensionScriptInstanceGetClassCategory".} = proc (
      p_instance: ScriptInstanceDataPtr; p_class_category: ptr PropertyInfo): Bool {.
      gdcall.}
  ScriptInstanceGetPropertyType* {.importc: "GDExtensionScriptInstanceGetPropertyType".} = proc (
      p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr;
      r_is_valid: ptr Bool): VariantType {.gdcall.}
  ScriptInstanceValidateProperty* {.importc: "GDExtensionScriptInstanceValidateProperty".} = proc (
      p_instance: ScriptInstanceDataPtr; p_property: ptr PropertyInfo): Bool {.
      gdcall.}
  ScriptInstancePropertyCanRevert* {.importc: "GDExtensionScriptInstancePropertyCanRevert".} = proc (
      p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr): Bool {.
      gdcall.}
  ScriptInstancePropertyGetRevert* {.importc: "GDExtensionScriptInstancePropertyGetRevert".} = proc (
      p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr;
      r_ret: VariantPtr): Bool {.gdcall.}
  ScriptInstanceGetOwner* {.importc: "GDExtensionScriptInstanceGetOwner".} = proc (
      p_instance: ScriptInstanceDataPtr): ObjectPtr {.gdcall.}
  ScriptInstancePropertyStateAdd* {.importc: "GDExtensionScriptInstancePropertyStateAdd".} = proc (
      p_name: ConstStringNamePtr; p_value: ConstVariantPtr; p_userdata: pointer) {.
      gdcall.}
  ScriptInstanceGetPropertyState* {.importc: "GDExtensionScriptInstanceGetPropertyState".} = proc (
      p_instance: ScriptInstanceDataPtr;
      p_add_func: ScriptInstancePropertyStateAdd; p_userdata: pointer) {.gdcall.}
  ScriptInstanceGetMethodList* {.importc: "GDExtensionScriptInstanceGetMethodList".} = proc (
      p_instance: ScriptInstanceDataPtr; r_count: ptr uint32_t): ptr MethodInfo {.
      gdcall.}
  ScriptInstanceFreeMethodList* {.importc: "GDExtensionScriptInstanceFreeMethodList".} = proc (
      p_instance: ScriptInstanceDataPtr; p_list: ptr UncheckedArray[MethodInfo]) {.
      gdcall.}
  ScriptInstanceFreeMethodList2* {.importc: "GDExtensionScriptInstanceFreeMethodList2".} = proc (
      p_instance: ScriptInstanceDataPtr; p_list: ptr UncheckedArray[MethodInfo];
      p_count: uint32_t) {.gdcall.}
  ScriptInstanceHasMethod* {.importc: "GDExtensionScriptInstanceHasMethod".} = proc (
      p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr): Bool {.
      gdcall.}
  ScriptInstanceGetMethodArgumentCount* {.
      importc: "GDExtensionScriptInstanceGetMethodArgumentCount".} = proc (
      p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr;
      r_is_valid: ptr Bool): Int {.gdcall.}
  ScriptInstanceCall* {.importc: "GDExtensionScriptInstanceCall".} = proc (
      p_self: ScriptInstanceDataPtr; p_method: ConstStringNamePtr;
      p_args: ptr UncheckedArray[ConstVariantPtr]; p_argument_count: Int;
      r_return: VariantPtr; r_error: ptr CallError) {.gdcall.}
  ScriptInstanceNotification* {.importc: "GDExtensionScriptInstanceNotification".} = proc (
      p_instance: ScriptInstanceDataPtr; p_what: int32_t) {.gdcall.}
  ScriptInstanceNotification2* {.importc: "GDExtensionScriptInstanceNotification2".} = proc (
      p_instance: ScriptInstanceDataPtr; p_what: int32_t; p_reversed: Bool) {.
      gdcall.}
  ScriptInstanceToString* {.importc: "GDExtensionScriptInstanceToString".} = proc (
      p_instance: ScriptInstanceDataPtr; r_is_valid: ptr Bool; r_out: StringPtr) {.
      gdcall.}
  ScriptInstanceRefCountIncremented* {.importc: "GDExtensionScriptInstanceRefCountIncremented".} = proc (
      p_instance: ScriptInstanceDataPtr) {.gdcall.}
  ScriptInstanceRefCountDecremented* {.importc: "GDExtensionScriptInstanceRefCountDecremented".} = proc (
      p_instance: ScriptInstanceDataPtr): Bool {.gdcall.}
  ScriptInstanceGetScript* {.importc: "GDExtensionScriptInstanceGetScript".} = proc (
      p_instance: ScriptInstanceDataPtr): ObjectPtr {.gdcall.}
  ScriptInstanceIsPlaceholder* {.importc: "GDExtensionScriptInstanceIsPlaceholder".} = proc (
      p_instance: ScriptInstanceDataPtr): Bool {.gdcall.}
  ScriptLanguagePtr* {.importc: "GDExtensionScriptLanguagePtr".} = pointer
  ScriptInstanceGetLanguage* {.importc: "GDExtensionScriptInstanceGetLanguage".} = proc (
      p_instance: ScriptInstanceDataPtr): ScriptLanguagePtr {.gdcall.}
  ScriptInstanceFree* {.importc: "GDExtensionScriptInstanceFree".} = proc (
      p_instance: ScriptInstanceDataPtr) {.gdcall.}
  ScriptInstancePtr* {.importc: "GDExtensionScriptInstancePtr".} = pointer
  ScriptInstanceInfo* {.byref, importc: "GDExtensionScriptInstanceInfo".} = object
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
  ScriptInstanceInfo2* {.byref, importc: "GDExtensionScriptInstanceInfo2".} = object
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
  ScriptInstanceInfo3* {.byref, importc: "GDExtensionScriptInstanceInfo3".} = object
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
  WorkerThreadPoolGroupTask* {.importc: "GDExtensionWorkerThreadPoolGroupTask".} = proc (
      a1: pointer; a2: uint32_t) {.gdcall.}
  WorkerThreadPoolTask* {.importc: "GDExtensionWorkerThreadPoolTask".} = proc (
      a1: pointer) {.gdcall.}
  InitializationLevel* {.importc: "GDExtensionInitializationLevel".} = enum
    INITIALIZATION_CORE, INITIALIZATION_SERVERS, INITIALIZATION_SCENE,
    INITIALIZATION_EDITOR
  InitializeCallback* {.importc: "GDExtensionInitializeCallback".} = proc (
      p_userdata: pointer; p_level: InitializationLevel) {.gdcall.}
  DeinitializeCallback* {.importc: "GDExtensionDeinitializeCallback".} = proc (
      p_userdata: pointer; p_level: InitializationLevel) {.gdcall.}
  Initialization* {.byref, importc: "GDExtensionInitialization".} = object
    minimum_initialization_level*: InitializationLevel
    userdata*: pointer
    initialize*: InitializeCallback
    deinitialize*: DeinitializeCallback
  InterfaceFunctionPtr* {.importc: "GDExtensionInterfaceFunctionPtr".} = proc () {.
      gdcall.}
  InterfaceGetProcAddress* {.importc: "GDExtensionInterfaceGetProcAddress".} = proc (
      p_function_name: cstring): InterfaceFunctionPtr {.gdcall.}
  InitializationFunction* {.importc: "GDExtensionInitializationFunction".} = proc (
      p_get_proc_address: InterfaceGetProcAddress; p_library: ClassLibraryPtr;
      r_initialization: ptr Initialization): Bool {.gdcall.}
  GodotVersion* {.byref, importc: "GDExtensionGodotVersion".} = object
    major*: uint32_t
    minor*: uint32_t
    patch*: uint32_t
    string*: cstring
  GodotVersion2* {.byref, importc: "GDExtensionGodotVersion2".} = object
    major*: uint32_t
    minor*: uint32_t
    patch*: uint32_t
    hex*: uint32_t
    status*: cstring
    build*: cstring
    hash*: cstring
    timestamp*: uint64_t
    string*: cstring
  MainLoopStartupCallback* {.importc: "GDExtensionMainLoopStartupCallback".} = proc () {.
      gdcall.}
  MainLoopShutdownCallback* {.importc: "GDExtensionMainLoopShutdownCallback".} = proc () {.
      gdcall.}
  MainLoopFrameCallback* {.importc: "GDExtensionMainLoopFrameCallback".} = proc () {.
      gdcall.}
  MainLoopCallbacks* {.byref, importc: "GDExtensionMainLoopCallbacks".} = object
    startup_func*: MainLoopStartupCallback
    shutdown_func*: MainLoopShutdownCallback
    frame_func*: MainLoopFrameCallback
  InterfaceGetGodotVersion* {.importc: "GDExtensionInterfaceGetGodotVersion".} = proc (
      r_godot_version: ptr GodotVersion) {.gdcall.}
  InterfaceGetGodotVersion2* {.importc: "GDExtensionInterfaceGetGodotVersion2".} = proc (
      r_godot_version: ptr GodotVersion2) {.gdcall.}
  InterfaceMemAlloc* {.importc: "GDExtensionInterfaceMemAlloc".} = proc (
      p_bytes: csize_t): pointer {.gdcall.}
  InterfaceMemRealloc* {.importc: "GDExtensionInterfaceMemRealloc".} = proc (
      p_ptr: pointer; p_bytes: csize_t): pointer {.gdcall.}
  InterfaceMemFree* {.importc: "GDExtensionInterfaceMemFree".} = proc (
      p_ptr: pointer) {.gdcall.}
  InterfacePrintError* {.importc: "GDExtensionInterfacePrintError".} = proc (
      p_description: cstring; p_function: cstring; p_file: cstring;
      p_line: int32_t; p_editor_notify: Bool) {.gdcall.}
  InterfacePrintErrorWithMessage* {.importc: "GDExtensionInterfacePrintErrorWithMessage".} = proc (
      p_description: cstring; p_message: cstring; p_function: cstring;
      p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall.}
  InterfacePrintWarning* {.importc: "GDExtensionInterfacePrintWarning".} = proc (
      p_description: cstring; p_function: cstring; p_file: cstring;
      p_line: int32_t; p_editor_notify: Bool) {.gdcall.}
  InterfacePrintWarningWithMessage* {.importc: "GDExtensionInterfacePrintWarningWithMessage".} = proc (
      p_description: cstring; p_message: cstring; p_function: cstring;
      p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall.}
  InterfacePrintScriptError* {.importc: "GDExtensionInterfacePrintScriptError".} = proc (
      p_description: cstring; p_function: cstring; p_file: cstring;
      p_line: int32_t; p_editor_notify: Bool) {.gdcall.}
  InterfacePrintScriptErrorWithMessage* {.
      importc: "GDExtensionInterfacePrintScriptErrorWithMessage".} = proc (
      p_description: cstring; p_message: cstring; p_function: cstring;
      p_file: cstring; p_line: int32_t; p_editor_notify: Bool) {.gdcall.}
  InterfaceGetNativeStructSize* {.importc: "GDExtensionInterfaceGetNativeStructSize".} = proc (
      p_name: ConstStringNamePtr): uint64_t {.gdcall.}
  InterfaceVariantNewCopy* {.importc: "GDExtensionInterfaceVariantNewCopy".} = proc (
      r_dest: UninitializedVariantPtr; p_src: ConstVariantPtr) {.gdcall.}
  InterfaceVariantNewNil* {.importc: "GDExtensionInterfaceVariantNewNil".} = proc (
      r_dest: UninitializedVariantPtr) {.gdcall.}
  InterfaceVariantDestroy* {.importc: "GDExtensionInterfaceVariantDestroy".} = proc (
      p_self: VariantPtr) {.gdcall.}
  InterfaceVariantCall* {.importc: "GDExtensionInterfaceVariantCall".} = proc (
      p_self: VariantPtr; p_method: ConstStringNamePtr;
      p_args: ptr ConstVariantPtr; p_argument_count: Int;
      r_return: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall.}
  InterfaceVariantCallStatic* {.importc: "GDExtensionInterfaceVariantCallStatic".} = proc (
      p_type: VariantType; p_method: ConstStringNamePtr;
      p_args: ptr ConstVariantPtr; p_argument_count: Int;
      r_return: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall.}
  InterfaceVariantEvaluate* {.importc: "GDExtensionInterfaceVariantEvaluate".} = proc (
      p_op: VariantOperator; p_a: ConstVariantPtr; p_b: ConstVariantPtr;
      r_return: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall.}
  InterfaceVariantSet* {.importc: "GDExtensionInterfaceVariantSet".} = proc (
      p_self: VariantPtr; p_key: ConstVariantPtr; p_value: ConstVariantPtr;
      r_valid: ptr Bool) {.gdcall.}
  InterfaceVariantSetNamed* {.importc: "GDExtensionInterfaceVariantSetNamed".} = proc (
      p_self: VariantPtr; p_key: ConstStringNamePtr; p_value: ConstVariantPtr;
      r_valid: ptr Bool) {.gdcall.}
  InterfaceVariantSetKeyed* {.importc: "GDExtensionInterfaceVariantSetKeyed".} = proc (
      p_self: VariantPtr; p_key: ConstVariantPtr; p_value: ConstVariantPtr;
      r_valid: ptr Bool) {.gdcall.}
  InterfaceVariantSetIndexed* {.importc: "GDExtensionInterfaceVariantSetIndexed".} = proc (
      p_self: VariantPtr; p_index: Int; p_value: ConstVariantPtr;
      r_valid: ptr Bool; r_oob: ptr Bool) {.gdcall.}
  InterfaceVariantGet* {.importc: "GDExtensionInterfaceVariantGet".} = proc (
      p_self: ConstVariantPtr; p_key: ConstVariantPtr;
      r_ret: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall.}
  InterfaceVariantGetNamed* {.importc: "GDExtensionInterfaceVariantGetNamed".} = proc (
      p_self: ConstVariantPtr; p_key: ConstStringNamePtr;
      r_ret: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall.}
  InterfaceVariantGetKeyed* {.importc: "GDExtensionInterfaceVariantGetKeyed".} = proc (
      p_self: ConstVariantPtr; p_key: ConstVariantPtr;
      r_ret: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall.}
  InterfaceVariantGetIndexed* {.importc: "GDExtensionInterfaceVariantGetIndexed".} = proc (
      p_self: ConstVariantPtr; p_index: Int; r_ret: UninitializedVariantPtr;
      r_valid: ptr Bool; r_oob: ptr Bool) {.gdcall.}
  InterfaceVariantIterInit* {.importc: "GDExtensionInterfaceVariantIterInit".} = proc (
      p_self: ConstVariantPtr; r_iter: UninitializedVariantPtr;
      r_valid: ptr Bool): Bool {.gdcall.}
  InterfaceVariantIterNext* {.importc: "GDExtensionInterfaceVariantIterNext".} = proc (
      p_self: ConstVariantPtr; r_iter: VariantPtr; r_valid: ptr Bool): Bool {.
      gdcall.}
  InterfaceVariantIterGet* {.importc: "GDExtensionInterfaceVariantIterGet".} = proc (
      p_self: ConstVariantPtr; r_iter: VariantPtr;
      r_ret: UninitializedVariantPtr; r_valid: ptr Bool) {.gdcall.}
  InterfaceVariantHash* {.importc: "GDExtensionInterfaceVariantHash".} = proc (
      p_self: ConstVariantPtr): Int {.gdcall.}
  InterfaceVariantRecursiveHash* {.importc: "GDExtensionInterfaceVariantRecursiveHash".} = proc (
      p_self: ConstVariantPtr; p_recursion_count: Int): Int {.gdcall.}
  InterfaceVariantHashCompare* {.importc: "GDExtensionInterfaceVariantHashCompare".} = proc (
      p_self: ConstVariantPtr; p_other: ConstVariantPtr): Bool {.gdcall.}
  InterfaceVariantBooleanize* {.importc: "GDExtensionInterfaceVariantBooleanize".} = proc (
      p_self: ConstVariantPtr): Bool {.gdcall.}
  InterfaceVariantDuplicate* {.importc: "GDExtensionInterfaceVariantDuplicate".} = proc (
      p_self: ConstVariantPtr; r_ret: VariantPtr; p_deep: Bool) {.gdcall.}
  InterfaceVariantStringify* {.importc: "GDExtensionInterfaceVariantStringify".} = proc (
      p_self: ConstVariantPtr; r_ret: StringPtr) {.gdcall.}
  InterfaceVariantGetType* {.importc: "GDExtensionInterfaceVariantGetType".} = proc (
      p_self: ConstVariantPtr): VariantType {.gdcall.}
  InterfaceVariantHasMethod* {.importc: "GDExtensionInterfaceVariantHasMethod".} = proc (
      p_self: ConstVariantPtr; p_method: ConstStringNamePtr): Bool {.gdcall.}
  InterfaceVariantHasMember* {.importc: "GDExtensionInterfaceVariantHasMember".} = proc (
      p_type: VariantType; p_member: ConstStringNamePtr): Bool {.gdcall.}
  InterfaceVariantHasKey* {.importc: "GDExtensionInterfaceVariantHasKey".} = proc (
      p_self: ConstVariantPtr; p_key: ConstVariantPtr; r_valid: ptr Bool): Bool {.
      gdcall.}
  InterfaceVariantGetObjectInstanceId* {.
      importc: "GDExtensionInterfaceVariantGetObjectInstanceId".} = proc (
      p_self: ConstVariantPtr): GDObjectInstanceID {.gdcall.}
  InterfaceVariantGetTypeName* {.importc: "GDExtensionInterfaceVariantGetTypeName".} = proc (
      p_type: VariantType; r_name: UninitializedStringPtr) {.gdcall.}
  InterfaceVariantCanConvert* {.importc: "GDExtensionInterfaceVariantCanConvert".} = proc (
      p_from: VariantType; p_to: VariantType): Bool {.gdcall.}
  InterfaceVariantCanConvertStrict* {.importc: "GDExtensionInterfaceVariantCanConvertStrict".} = proc (
      p_from: VariantType; p_to: VariantType): Bool {.gdcall.}
  InterfaceGetVariantFromTypeConstructor* {.
      importc: "GDExtensionInterfaceGetVariantFromTypeConstructor".} = proc (
      p_type: VariantType): VariantFromTypeConstructorFunc {.gdcall.}
  InterfaceGetVariantToTypeConstructor* {.
      importc: "GDExtensionInterfaceGetVariantToTypeConstructor".} = proc (
      p_type: VariantType): TypeFromVariantConstructorFunc {.gdcall.}
  InterfaceGetVariantGetInternalPtrFunc* {.
      importc: "GDExtensionInterfaceGetVariantGetInternalPtrFunc".} = proc (
      p_type: VariantType): VariantGetInternalPtrFunc {.gdcall.}
  InterfaceVariantGetPtrOperatorEvaluator* {.
      importc: "GDExtensionInterfaceVariantGetPtrOperatorEvaluator".} = proc (
      p_operator: VariantOperator; p_type_a: VariantType; p_type_b: VariantType): PtrOperatorEvaluator {.
      gdcall.}
  InterfaceVariantGetPtrBuiltinMethod* {.
      importc: "GDExtensionInterfaceVariantGetPtrBuiltinMethod".} = proc (
      p_type: VariantType; p_method: ConstStringNamePtr; p_hash: Int): PtrBuiltInMethod {.
      gdcall.}
  InterfaceVariantGetPtrConstructor* {.importc: "GDExtensionInterfaceVariantGetPtrConstructor".} = proc (
      p_type: VariantType; p_constructor: int32_t): PtrConstructor {.gdcall.}
  InterfaceVariantGetPtrDestructor* {.importc: "GDExtensionInterfaceVariantGetPtrDestructor".} = proc (
      p_type: VariantType): PtrDestructor {.gdcall.}
  InterfaceVariantConstruct* {.importc: "GDExtensionInterfaceVariantConstruct".} = proc (
      p_type: VariantType; r_base: UninitializedVariantPtr;
      p_args: ptr ConstVariantPtr; p_argument_count: int32_t;
      r_error: ptr CallError) {.gdcall.}
  InterfaceVariantGetPtrSetter* {.importc: "GDExtensionInterfaceVariantGetPtrSetter".} = proc (
      p_type: VariantType; p_member: ConstStringNamePtr): PtrSetter {.gdcall.}
  InterfaceVariantGetPtrGetter* {.importc: "GDExtensionInterfaceVariantGetPtrGetter".} = proc (
      p_type: VariantType; p_member: ConstStringNamePtr): PtrGetter {.gdcall.}
  InterfaceVariantGetPtrIndexedSetter* {.
      importc: "GDExtensionInterfaceVariantGetPtrIndexedSetter".} = proc (
      p_type: VariantType): PtrIndexedSetter {.gdcall.}
  InterfaceVariantGetPtrIndexedGetter* {.
      importc: "GDExtensionInterfaceVariantGetPtrIndexedGetter".} = proc (
      p_type: VariantType): PtrIndexedGetter {.gdcall.}
  InterfaceVariantGetPtrKeyedSetter* {.importc: "GDExtensionInterfaceVariantGetPtrKeyedSetter".} = proc (
      p_type: VariantType): PtrKeyedSetter {.gdcall.}
  InterfaceVariantGetPtrKeyedGetter* {.importc: "GDExtensionInterfaceVariantGetPtrKeyedGetter".} = proc (
      p_type: VariantType): PtrKeyedGetter {.gdcall.}
  InterfaceVariantGetPtrKeyedChecker* {.importc: "GDExtensionInterfaceVariantGetPtrKeyedChecker".} = proc (
      p_type: VariantType): PtrKeyedChecker {.gdcall.}
  InterfaceVariantGetConstantValue* {.importc: "GDExtensionInterfaceVariantGetConstantValue".} = proc (
      p_type: VariantType; p_constant: ConstStringNamePtr;
      r_ret: UninitializedVariantPtr) {.gdcall.}
  InterfaceVariantGetPtrUtilityFunction* {.
      importc: "GDExtensionInterfaceVariantGetPtrUtilityFunction".} = proc (
      p_function: ConstStringNamePtr; p_hash: Int): PtrUtilityFunction {.gdcall.}
  InterfaceStringNewWithLatin1Chars* {.importc: "GDExtensionInterfaceStringNewWithLatin1Chars".} = proc (
      r_dest: UninitializedStringPtr; p_contents: cstring) {.gdcall.}
  InterfaceStringNewWithUtf8Chars* {.importc: "GDExtensionInterfaceStringNewWithUtf8Chars".} = proc (
      r_dest: UninitializedStringPtr; p_contents: cstring) {.gdcall.}
  InterfaceStringNewWithUtf16Chars* {.importc: "GDExtensionInterfaceStringNewWithUtf16Chars".} = proc (
      r_dest: UninitializedStringPtr; p_contents: ptr char16_t) {.gdcall.}
  InterfaceStringNewWithUtf32Chars* {.importc: "GDExtensionInterfaceStringNewWithUtf32Chars".} = proc (
      r_dest: UninitializedStringPtr; p_contents: ptr char32_t) {.gdcall.}
  InterfaceStringNewWithWideChars* {.importc: "GDExtensionInterfaceStringNewWithWideChars".} = proc (
      r_dest: UninitializedStringPtr; p_contents: ptr wchar_t) {.gdcall.}
  InterfaceStringNewWithLatin1CharsAndLen* {.
      importc: "GDExtensionInterfaceStringNewWithLatin1CharsAndLen".} = proc (
      r_dest: UninitializedStringPtr; p_contents: cstring; p_size: Int) {.gdcall.}
  InterfaceStringNewWithUtf8CharsAndLen* {.
      importc: "GDExtensionInterfaceStringNewWithUtf8CharsAndLen".} = proc (
      r_dest: UninitializedStringPtr; p_contents: cstring; p_size: Int) {.gdcall.}
  InterfaceStringNewWithUtf8CharsAndLen2* {.
      importc: "GDExtensionInterfaceStringNewWithUtf8CharsAndLen2".} = proc (
      r_dest: UninitializedStringPtr; p_contents: cstring; p_size: Int): Int {.
      gdcall.}
  InterfaceStringNewWithUtf16CharsAndLen* {.
      importc: "GDExtensionInterfaceStringNewWithUtf16CharsAndLen".} = proc (
      r_dest: UninitializedStringPtr; p_contents: ptr char16_t;
      p_char_count: Int) {.gdcall.}
  InterfaceStringNewWithUtf16CharsAndLen2* {.
      importc: "GDExtensionInterfaceStringNewWithUtf16CharsAndLen2".} = proc (
      r_dest: UninitializedStringPtr; p_contents: ptr char16_t;
      p_char_count: Int; p_default_little_endian: Bool): Int {.gdcall.}
  InterfaceStringNewWithUtf32CharsAndLen* {.
      importc: "GDExtensionInterfaceStringNewWithUtf32CharsAndLen".} = proc (
      r_dest: UninitializedStringPtr; p_contents: ptr char32_t;
      p_char_count: Int) {.gdcall.}
  InterfaceStringNewWithWideCharsAndLen* {.
      importc: "GDExtensionInterfaceStringNewWithWideCharsAndLen".} = proc (
      r_dest: UninitializedStringPtr; p_contents: ptr wchar_t; p_char_count: Int) {.
      gdcall.}
  InterfaceStringToLatin1Chars* {.importc: "GDExtensionInterfaceStringToLatin1Chars".} = proc (
      p_self: ConstStringPtr; r_text: cstring; p_max_write_length: Int): Int {.
      gdcall.}
  InterfaceStringToUtf8Chars* {.importc: "GDExtensionInterfaceStringToUtf8Chars".} = proc (
      p_self: ConstStringPtr; r_text: cstring; p_max_write_length: Int): Int {.
      gdcall.}
  InterfaceStringToUtf16Chars* {.importc: "GDExtensionInterfaceStringToUtf16Chars".} = proc (
      p_self: ConstStringPtr; r_text: ptr char16_t; p_max_write_length: Int): Int {.
      gdcall.}
  InterfaceStringToUtf32Chars* {.importc: "GDExtensionInterfaceStringToUtf32Chars".} = proc (
      p_self: ConstStringPtr; r_text: ptr char32_t; p_max_write_length: Int): Int {.
      gdcall.}
  InterfaceStringToWideChars* {.importc: "GDExtensionInterfaceStringToWideChars".} = proc (
      p_self: ConstStringPtr; r_text: ptr wchar_t; p_max_write_length: Int): Int {.
      gdcall.}
  InterfaceStringOperatorIndex* {.importc: "GDExtensionInterfaceStringOperatorIndex".} = proc (
      p_self: StringPtr; p_index: Int): ptr char32_t {.gdcall.}
  InterfaceStringOperatorIndexConst* {.importc: "GDExtensionInterfaceStringOperatorIndexConst".} = proc (
      p_self: ConstStringPtr; p_index: Int): ptr char32_t {.gdcall.}
  InterfaceStringOperatorPlusEqString* {.
      importc: "GDExtensionInterfaceStringOperatorPlusEqString".} = proc (
      p_self: StringPtr; p_b: ConstStringPtr) {.gdcall.}
  InterfaceStringOperatorPlusEqChar* {.importc: "GDExtensionInterfaceStringOperatorPlusEqChar".} = proc (
      p_self: StringPtr; p_b: char32_t) {.gdcall.}
  InterfaceStringOperatorPlusEqCstr* {.importc: "GDExtensionInterfaceStringOperatorPlusEqCstr".} = proc (
      p_self: StringPtr; p_b: cstring) {.gdcall.}
  InterfaceStringOperatorPlusEqWcstr* {.importc: "GDExtensionInterfaceStringOperatorPlusEqWcstr".} = proc (
      p_self: StringPtr; p_b: ptr wchar_t) {.gdcall.}
  InterfaceStringOperatorPlusEqC32str* {.
      importc: "GDExtensionInterfaceStringOperatorPlusEqC32str".} = proc (
      p_self: StringPtr; p_b: ptr char32_t) {.gdcall.}
  InterfaceStringResize* {.importc: "GDExtensionInterfaceStringResize".} = proc (
      p_self: StringPtr; p_resize: Int): Int {.gdcall.}
  InterfaceStringNameNewWithLatin1Chars* {.
      importc: "GDExtensionInterfaceStringNameNewWithLatin1Chars".} = proc (
      r_dest: UninitializedStringNamePtr; p_contents: cstring; p_is_static: Bool) {.
      gdcall.}
  InterfaceStringNameNewWithUtf8Chars* {.
      importc: "GDExtensionInterfaceStringNameNewWithUtf8Chars".} = proc (
      r_dest: UninitializedStringNamePtr; p_contents: cstring) {.gdcall.}
  InterfaceStringNameNewWithUtf8CharsAndLen* {.
      importc: "GDExtensionInterfaceStringNameNewWithUtf8CharsAndLen".} = proc (
      r_dest: UninitializedStringNamePtr; p_contents: cstring; p_size: Int) {.
      gdcall.}
  InterfaceXmlParserOpenBuffer* {.importc: "GDExtensionInterfaceXmlParserOpenBuffer".} = proc (
      p_instance: ObjectPtr; p_buffer: ptr uint8_t; p_size: csize_t): Int {.
      gdcall.}
  InterfaceFileAccessStoreBuffer* {.importc: "GDExtensionInterfaceFileAccessStoreBuffer".} = proc (
      p_instance: ObjectPtr; p_src: ptr uint8_t; p_length: uint64_t) {.gdcall.}
  InterfaceFileAccessGetBuffer* {.importc: "GDExtensionInterfaceFileAccessGetBuffer".} = proc (
      p_instance: ConstObjectPtr; p_dst: ptr uint8_t; p_length: uint64_t): uint64_t {.
      gdcall.}
  InterfaceImagePtrw* {.importc: "GDExtensionInterfaceImagePtrw".} = proc (
      p_instance: ObjectPtr): ptr uint8_t {.gdcall.}
  InterfaceImagePtr* {.importc: "GDExtensionInterfaceImagePtr".} = proc (
      p_instance: ObjectPtr): ptr uint8_t {.gdcall.}
  InterfaceWorkerThreadPoolAddNativeGroupTask* {.
      importc: "GDExtensionInterfaceWorkerThreadPoolAddNativeGroupTask".} = proc (
      p_instance: ObjectPtr; p_func: WorkerThreadPoolGroupTask;
      p_userdata: pointer; p_elements: cint; p_tasks: cint;
      p_high_priority: Bool; p_description: ConstStringPtr): int64_t {.gdcall.}
  InterfaceWorkerThreadPoolAddNativeTask* {.
      importc: "GDExtensionInterfaceWorkerThreadPoolAddNativeTask".} = proc (
      p_instance: ObjectPtr; p_func: WorkerThreadPoolTask; p_userdata: pointer;
      p_high_priority: Bool; p_description: ConstStringPtr): int64_t {.gdcall.}
  InterfacePackedByteArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedByteArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): ptr uint8_t {.gdcall.}
  InterfacePackedByteArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedByteArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): ptr uint8_t {.gdcall.}
  InterfacePackedFloat32ArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedFloat32ArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): ptr cfloat {.gdcall.}
  InterfacePackedFloat32ArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): ptr cfloat {.gdcall.}
  InterfacePackedFloat64ArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedFloat64ArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): ptr cdouble {.gdcall.}
  InterfacePackedFloat64ArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): ptr cdouble {.gdcall.}
  InterfacePackedInt32ArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedInt32ArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): ptr int32_t {.gdcall.}
  InterfacePackedInt32ArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedInt32ArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): ptr int32_t {.gdcall.}
  InterfacePackedInt64ArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedInt64ArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): ptr int64_t {.gdcall.}
  InterfacePackedInt64ArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedInt64ArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): ptr int64_t {.gdcall.}
  InterfacePackedStringArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedStringArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): StringPtr {.gdcall.}
  InterfacePackedStringArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedStringArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): StringPtr {.gdcall.}
  InterfacePackedVector2ArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedVector2ArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): TypePtr {.gdcall.}
  InterfacePackedVector2ArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedVector2ArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall.}
  InterfacePackedVector3ArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedVector3ArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): TypePtr {.gdcall.}
  InterfacePackedVector3ArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedVector3ArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall.}
  InterfacePackedVector4ArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedVector4ArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): TypePtr {.gdcall.}
  InterfacePackedVector4ArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedVector4ArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall.}
  InterfacePackedColorArrayOperatorIndex* {.
      importc: "GDExtensionInterfacePackedColorArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): TypePtr {.gdcall.}
  InterfacePackedColorArrayOperatorIndexConst* {.
      importc: "GDExtensionInterfacePackedColorArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall.}
  InterfaceArrayOperatorIndex* {.importc: "GDExtensionInterfaceArrayOperatorIndex".} = proc (
      p_self: TypePtr; p_index: Int): VariantPtr {.gdcall.}
  InterfaceArrayOperatorIndexConst* {.importc: "GDExtensionInterfaceArrayOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_index: Int): VariantPtr {.gdcall.}
  InterfaceArrayRef* {.importc: "GDExtensionInterfaceArrayRef".} = proc (
      p_self: TypePtr; p_from: ConstTypePtr) {.gdcall.}
  InterfaceArraySetTyped* {.importc: "GDExtensionInterfaceArraySetTyped".} = proc (
      p_self: TypePtr; p_type: VariantType; p_class_name: ConstStringNamePtr;
      p_script: ConstVariantPtr) {.gdcall.}
  InterfaceDictionaryOperatorIndex* {.importc: "GDExtensionInterfaceDictionaryOperatorIndex".} = proc (
      p_self: TypePtr; p_key: ConstVariantPtr): VariantPtr {.gdcall.}
  InterfaceDictionaryOperatorIndexConst* {.
      importc: "GDExtensionInterfaceDictionaryOperatorIndexConst".} = proc (
      p_self: ConstTypePtr; p_key: ConstVariantPtr): VariantPtr {.gdcall.}
  InterfaceDictionarySetTyped* {.importc: "GDExtensionInterfaceDictionarySetTyped".} = proc (
      p_self: TypePtr; p_key_type: VariantType;
      p_key_class_name: ConstStringNamePtr; p_key_script: ConstVariantPtr;
      p_value_type: VariantType; p_value_class_name: ConstStringNamePtr;
      p_value_script: ConstVariantPtr) {.gdcall.}
  InterfaceObjectMethodBindCall* {.importc: "GDExtensionInterfaceObjectMethodBindCall".} = proc (
      p_method_bind: MethodBindPtr; p_instance: ObjectPtr;
      p_args: ptr ConstVariantPtr; p_arg_count: Int;
      r_ret: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall.}
  InterfaceObjectMethodBindPtrcall* {.importc: "GDExtensionInterfaceObjectMethodBindPtrcall".} = proc (
      p_method_bind: MethodBindPtr; p_instance: ObjectPtr;
      p_args: ptr ConstTypePtr; r_ret: TypePtr) {.gdcall.}
  InterfaceObjectDestroy* {.importc: "GDExtensionInterfaceObjectDestroy".} = proc (
      p_o: ObjectPtr) {.gdcall.}
  InterfaceGlobalGetSingleton* {.importc: "GDExtensionInterfaceGlobalGetSingleton".} = proc (
      p_name: ConstStringNamePtr): ObjectPtr {.gdcall.}
  InterfaceObjectGetInstanceBinding* {.importc: "GDExtensionInterfaceObjectGetInstanceBinding".} = proc (
      p_o: ObjectPtr; p_token: pointer;
      p_callbacks: ptr InstanceBindingCallbacks): pointer {.gdcall.}
  InterfaceObjectSetInstanceBinding* {.importc: "GDExtensionInterfaceObjectSetInstanceBinding".} = proc (
      p_o: ObjectPtr; p_token: pointer; p_binding: pointer;
      p_callbacks: ptr InstanceBindingCallbacks) {.gdcall.}
  InterfaceObjectFreeInstanceBinding* {.importc: "GDExtensionInterfaceObjectFreeInstanceBinding".} = proc (
      p_o: ObjectPtr; p_token: pointer) {.gdcall.}
  InterfaceObjectSetInstance* {.importc: "GDExtensionInterfaceObjectSetInstance".} = proc (
      p_o: ObjectPtr; p_classname: ConstStringNamePtr;
      p_instance: ClassInstancePtr) {.gdcall.}
  InterfaceObjectGetClassName* {.importc: "GDExtensionInterfaceObjectGetClassName".} = proc (
      p_object: ConstObjectPtr; p_library: ClassLibraryPtr;
      r_class_name: UninitializedStringNamePtr): Bool {.gdcall.}
  InterfaceObjectCastTo* {.importc: "GDExtensionInterfaceObjectCastTo".} = proc (
      p_object: ConstObjectPtr; p_class_tag: pointer): ObjectPtr {.gdcall.}
  InterfaceObjectGetInstanceFromId* {.importc: "GDExtensionInterfaceObjectGetInstanceFromId".} = proc (
      p_instance_id: GDObjectInstanceID): ObjectPtr {.gdcall.}
  InterfaceObjectGetInstanceId* {.importc: "GDExtensionInterfaceObjectGetInstanceId".} = proc (
      p_object: ConstObjectPtr): GDObjectInstanceID {.gdcall.}
  InterfaceObjectHasScriptMethod* {.importc: "GDExtensionInterfaceObjectHasScriptMethod".} = proc (
      p_object: ConstObjectPtr; p_method: ConstStringNamePtr): Bool {.gdcall.}
  InterfaceObjectCallScriptMethod* {.importc: "GDExtensionInterfaceObjectCallScriptMethod".} = proc (
      p_object: ObjectPtr; p_method: ConstStringNamePtr;
      p_args: ptr ConstVariantPtr; p_argument_count: Int;
      r_return: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall.}
  InterfaceRefGetObject* {.importc: "GDExtensionInterfaceRefGetObject".} = proc (
      p_ref: ConstRefPtr): ObjectPtr {.gdcall.}
  InterfaceRefSetObject* {.importc: "GDExtensionInterfaceRefSetObject".} = proc (
      p_ref: RefPtr; p_object: ObjectPtr) {.gdcall.}
  InterfaceScriptInstanceCreate* {.importc: "GDExtensionInterfaceScriptInstanceCreate".} = proc (
      p_info: ptr ScriptInstanceInfo; p_instance_data: ScriptInstanceDataPtr): ScriptInstancePtr {.
      gdcall.}
  InterfaceScriptInstanceCreate2* {.importc: "GDExtensionInterfaceScriptInstanceCreate2".} = proc (
      p_info: ptr ScriptInstanceInfo2; p_instance_data: ScriptInstanceDataPtr): ScriptInstancePtr {.
      gdcall.}
  InterfaceScriptInstanceCreate3* {.importc: "GDExtensionInterfaceScriptInstanceCreate3".} = proc (
      p_info: ptr ScriptInstanceInfo3; p_instance_data: ScriptInstanceDataPtr): ScriptInstancePtr {.
      gdcall.}
  InterfacePlaceHolderScriptInstanceCreate* {.
      importc: "GDExtensionInterfacePlaceHolderScriptInstanceCreate".} = proc (
      p_language: ObjectPtr; p_script: ObjectPtr; p_owner: ObjectPtr): ScriptInstancePtr {.
      gdcall.}
  InterfacePlaceHolderScriptInstanceUpdate* {.
      importc: "GDExtensionInterfacePlaceHolderScriptInstanceUpdate".} = proc (
      p_placeholder: ScriptInstancePtr; p_properties: ConstTypePtr;
      p_values: ConstTypePtr) {.gdcall.}
  InterfaceObjectGetScriptInstance* {.importc: "GDExtensionInterfaceObjectGetScriptInstance".} = proc (
      p_object: ConstObjectPtr; p_language: ObjectPtr): ScriptInstanceDataPtr {.
      gdcall.}
  InterfaceObjectSetScriptInstance* {.importc: "GDExtensionInterfaceObjectSetScriptInstance".} = proc (
      p_object: ObjectPtr; p_script_instance: ScriptInstanceDataPtr) {.gdcall.}
  InterfaceCallableCustomCreate* {.importc: "GDExtensionInterfaceCallableCustomCreate".} = proc (
      r_callable: UninitializedTypePtr;
      p_callable_custom_info: ptr CallableCustomInfo) {.gdcall.}
  InterfaceCallableCustomCreate2* {.importc: "GDExtensionInterfaceCallableCustomCreate2".} = proc (
      r_callable: UninitializedTypePtr;
      p_callable_custom_info: ptr CallableCustomInfo2) {.gdcall.}
  InterfaceCallableCustomGetUserData* {.importc: "GDExtensionInterfaceCallableCustomGetUserData".} = proc (
      p_callable: ConstTypePtr; p_token: pointer): pointer {.gdcall.}
  InterfaceClassdbConstructObject* {.importc: "GDExtensionInterfaceClassdbConstructObject".} = proc (
      p_classname: ConstStringNamePtr): ObjectPtr {.gdcall.}
  InterfaceClassdbConstructObject2* {.importc: "GDExtensionInterfaceClassdbConstructObject2".} = proc (
      p_classname: ConstStringNamePtr): ObjectPtr {.gdcall.}
  InterfaceClassdbGetMethodBind* {.importc: "GDExtensionInterfaceClassdbGetMethodBind".} = proc (
      p_classname: ConstStringNamePtr; p_methodname: ConstStringNamePtr;
      p_hash: Int): MethodBindPtr {.gdcall.}
  InterfaceClassdbGetClassTag* {.importc: "GDExtensionInterfaceClassdbGetClassTag".} = proc (
      p_classname: ConstStringNamePtr): pointer {.gdcall.}
  InterfaceClassdbRegisterExtensionClass* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClass".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_parent_class_name: ConstStringNamePtr;
      p_extension_funcs: ptr ClassCreationInfo) {.gdcall.}
  InterfaceClassdbRegisterExtensionClass2* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClass2".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_parent_class_name: ConstStringNamePtr;
      p_extension_funcs: ptr ClassCreationInfo2) {.gdcall.}
  InterfaceClassdbRegisterExtensionClass3* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClass3".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_parent_class_name: ConstStringNamePtr;
      p_extension_funcs: ptr ClassCreationInfo3) {.gdcall.}
  InterfaceClassdbRegisterExtensionClass4* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClass4".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_parent_class_name: ConstStringNamePtr;
      p_extension_funcs: ptr ClassCreationInfo4) {.gdcall.}
  InterfaceClassdbRegisterExtensionClass5* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClass5".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_parent_class_name: ConstStringNamePtr;
      p_extension_funcs: ptr ClassCreationInfo5) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassMethod* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClassMethod".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_method_info: ptr ClassMethodInfo) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassVirtualMethod* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClassVirtualMethod".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_method_info: ptr ClassVirtualMethodInfo) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassIntegerConstant* {.importc: "GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_enum_name: ConstStringNamePtr; p_constant_name: ConstStringNamePtr;
      p_constant_value: Int; p_is_bitfield: Bool) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassProperty* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClassProperty".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_info: ptr PropertyInfo; p_setter: ConstStringNamePtr;
      p_getter: ConstStringNamePtr) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassPropertyIndexed* {.importc: "GDExtensionInterfaceClassdbRegisterExtensionClassPropertyIndexed".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_info: ptr PropertyInfo; p_setter: ConstStringNamePtr;
      p_getter: ConstStringNamePtr; p_index: Int) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassPropertyGroup* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_group_name: ConstStringPtr; p_prefix: ConstStringPtr) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassPropertySubgroup* {.importc: "GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_subgroup_name: ConstStringPtr; p_prefix: ConstStringPtr) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassSignal* {.
      importc: "GDExtensionInterfaceClassdbRegisterExtensionClassSignal".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr;
      p_signal_name: ConstStringNamePtr; p_argument_info: ptr PropertyInfo;
      p_argument_count: Int) {.gdcall.}
  InterfaceClassdbUnregisterExtensionClass* {.
      importc: "GDExtensionInterfaceClassdbUnregisterExtensionClass".} = proc (
      p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr) {.gdcall.}
  InterfaceGetLibraryPath* {.importc: "GDExtensionInterfaceGetLibraryPath".} = proc (
      p_library: ClassLibraryPtr; r_path: UninitializedStringPtr) {.gdcall.}
  InterfaceEditorAddPlugin* {.importc: "GDExtensionInterfaceEditorAddPlugin".} = proc (
      p_class_name: ConstStringNamePtr) {.gdcall.}
  InterfaceEditorRemovePlugin* {.importc: "GDExtensionInterfaceEditorRemovePlugin".} = proc (
      p_class_name: ConstStringNamePtr) {.gdcall.}
  InterfaceEditorHelpLoadXmlFromUtf8Chars* {.
      importc: "GDExtensionsInterfaceEditorHelpLoadXmlFromUtf8Chars".} = proc (
      p_data: cstring) {.gdcall.}
  InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen* {.
      importc: "GDExtensionsInterfaceEditorHelpLoadXmlFromUtf8CharsAndLen".} = proc (
      p_data: cstring; p_size: Int) {.gdcall.}
  InterfaceEditorRegisterGetClassesUsedCallback* {.
      importc: "GDExtensionInterfaceEditorRegisterGetClassesUsedCallback".} = proc (
      p_library: ClassLibraryPtr; p_callback: EditorGetClassesUsedCallback) {.
      gdcall.}
  InterfaceRegisterMainLoopCallbacks* {.importc: "GDExtensionInterfaceRegisterMainLoopCallbacks".} = proc (
      p_library: ClassLibraryPtr; p_callbacks: ptr MainLoopCallbacks) {.gdcall.}