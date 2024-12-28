{.warning[Deprecated]:off.}
import std/macros

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
  GodotInternalObject* = object

type
  char32_t* = uint32_t
  char16_t* = uint16_t

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
  PropertyInfo* {.byref.} = object
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
  ClassFreePropertyList2* = proc(p_instance: ClassInstancePtr; p_list: ptr UncheckedArray[PropertyInfo]; p_count: uint32_t) {.gdcall.}
  ClassPropertyCanRevert* = proc (p_instance: ClassInstancePtr; p_name: ConstStringNamePtr): Bool {.gdcall.}
  ClassPropertyGetRevert* = proc (p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.}
  ClassNotification2* = proc (p_instance: ClassInstancePtr; p_what: int32_t; p_reversed: Bool) {.gdcall.}
  ClassToString* = proc (p_instance: ClassInstancePtr; r_is_valid: ptr Bool; p_out: StringPtr) {.gdcall.}
  ClassReference* = proc (p_instance: ClassInstancePtr) {.gdcall.}
  ClassUnreference* = proc (p_instance: ClassInstancePtr) {.gdcall.}
  ClassCallVirtual* = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.}
  ClassCreateInstance* = proc (p_class_userdata: pointer): ObjectPtr {.gdcall.}
  ClassFreeInstance* = proc (p_class_userdata: pointer; p_instance: ClassInstancePtr) {.gdcall.}
  ClassGetVirtual* = proc (p_class_userdata: pointer; p_name: ConstStringNamePtr): ClassCallVirtual {.gdcall.}
  ClassValidateProperty* = proc (p_instance: ClassInstancePtr; p_property: ptr PropertyInfo): Bool {.gdcall.}
  ClassRecreateInstance* = proc (p_class_userdata: pointer; p_object: ObjectPtr): ClassInstancePtr {.gdcall.}
  ClassGetVirtualCallData* = proc (p_class_userdata: pointer; p_name: ConstStringNamePtr): pointer {.gdcall.}
  ClassCallVirtualWithData* = proc (p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; p_virtual_call_userdata: pointer; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.}
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
  CallableCustomCall* = proc (callable_userdata: pointer; p_args: ptr UncheckedArray[ConstVariantPtr]; p_argument_count: Int; r_return: VariantPtr; r_error: ptr CallError) {.gdcall.}
  CallableCustomIsValid* = proc (callable_userdata: pointer): Bool {.gdcall.}
  CallableCustomFree* = proc (callable_userdata: pointer) {.gdcall.}
  CallableCustomHash* = proc (callable_userdata: pointer): uint32_t {.gdcall.}
  CallableCustomEqual* = proc (callable_userdata_a: pointer; callable_userdata_b: pointer): Bool {.gdcall.}
  CallableCustomLessThan* = proc (callable_userdata_a: pointer; callable_userdata_b: pointer): Bool {.gdcall.}
  CallableCustomToString* = proc (callable_userdata: pointer; r_is_valid: ptr Bool; r_out: StringPtr) {.gdcall.}
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
  ScriptInstanceDataPtr* = pointer
  ScriptInstanceSet* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.gdcall.}
  ScriptInstanceGet* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.}
  ScriptInstanceGetPropertyList* = proc (p_instance: ScriptInstanceDataPtr; r_count: ptr uint32_t): ptr PropertyInfo {.gdcall.}
  ScriptInstanceFreePropertyList2* = proc (p_instance: ScriptInstanceDataPtr; p_list: ptr UncheckedArray[PropertyInfo]; p_count: uint32_t)
  ScriptInstanceGetPropertyType* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; r_is_valid: ptr Bool): VariantType {.gdcall.}
  ScriptInstancePropertyCanRevert* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr): Bool {.gdcall.}
  ScriptInstancePropertyGetRevert* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.}
  ScriptInstanceGetOwner* = proc (p_instance: ScriptInstanceDataPtr): ObjectPtr {.gdcall.}
  ScriptInstancePropertyStateAdd* = proc (p_name: ConstStringNamePtr; p_value: ConstVariantPtr; p_userdata: pointer) {.gdcall.}
  ScriptInstanceGetPropertyState* = proc (p_instance: ScriptInstanceDataPtr; p_add_func: ScriptInstancePropertyStateAdd; p_userdata: pointer) {.gdcall.}
  ScriptInstanceGetMethodList* = proc (p_instance: ScriptInstanceDataPtr; r_count: ptr uint32_t): ptr MethodInfo {.gdcall.}
  ScriptInstanceFreeMethodList2* = proc (p_instance: ScriptInstanceDataPtr; p_list: ptr UncheckedArray[MethodInfo]; p_count: uint32_t)
  ScriptInstanceHasMethod* = proc (p_instance: ScriptInstanceDataPtr; p_name: ConstStringNamePtr): Bool {.gdcall.}
  ScriptInstanceCall* = proc (p_self: ScriptInstanceDataPtr; p_method: ConstStringNamePtr; p_args: ptr ConstVariantPtr; p_argument_count: Int; r_return: VariantPtr; r_error: ptr CallError) {.gdcall.}
  ScriptInstanceNotification2* = proc (p_instance: ScriptInstanceDataPtr; p_what: int32_t; p_reversed: Bool) {.gdcall.}
  ScriptInstanceToString* = proc (p_instance: ScriptInstanceDataPtr; r_is_valid: ptr Bool; r_out: StringPtr) {.gdcall.}
  ScriptInstanceRefCountIncremented* = proc (p_instance: ScriptInstanceDataPtr) {.gdcall.}
  ScriptInstanceRefCountDecremented* = proc (p_instance: ScriptInstanceDataPtr): Bool {.gdcall.}
  ScriptInstanceGetScript* = proc (p_instance: ScriptInstanceDataPtr): ObjectPtr {.gdcall.}
  ScriptInstanceIsPlaceholder* = proc (p_instance: ScriptInstanceDataPtr): Bool {.gdcall.}
  ScriptLanguagePtr* = pointer
  ScriptInstanceGetLanguage* = proc (p_instance: ScriptInstanceDataPtr): ScriptLanguagePtr {.gdcall.}
  ScriptInstanceFree* = proc (p_instance: ScriptInstanceDataPtr) {.gdcall.}
  ScriptInstancePtr* = pointer
  ScriptInstanceGetClassCategory* = proc (p_instance: ScriptInstanceDataPtr; p_class_category: ptr PropertyInfo): Bool {.gdcall.}
  ScriptInstanceValidateProperty* = proc (p_instance: ScriptInstanceDataPtr; p_property: ptr PropertyInfo): Bool {.gdcall.}
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
  InterfaceStringNewWithUtf8CharsAndLen2* = proc (r_dest: UninitializedStringPtr; p_contents: cstring; p_size: Int): Int {.gdcall, raises: [].}
  InterfaceStringNewWithUtf16CharsAndLen2* = proc (r_dest: UninitializedStringPtr; p_contents: ptr char16_t; p_char_count: Int; p_default_little_endian: Bool): Int {.gdcall, raises: [].}
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
  InterfaceScriptInstanceCreate3* = proc (p_info: ptr ScriptInstanceInfo3; p_instance_data: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall, raises: [].}
  InterfaceClassdbConstructObject* = proc (p_classname: ConstStringNamePtr): ObjectPtr {.gdcall, raises: [].}
  InterfaceClassdbGetMethodBind* = proc (p_classname: ConstStringNamePtr; p_methodname: ConstStringNamePtr; p_hash: Int): MethodBindPtr {.gdcall, raises: [].}
  InterfaceClassdbGetClassTag* = proc (p_classname: ConstStringNamePtr): pointer {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClass3* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_parent_class_name: ConstStringNamePtr; p_extension_funcs: ptr ClassCreationInfo3) {.gdcall, raises: [].}
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
  InterfaceStringResize* = proc (p_self: StringPtr; p_resize: Int): Int {.gdcall, raises: [].}
  InterfaceStringNameNewWithLatin1Chars* = proc (r_dest: UninitializedStringNamePtr; p_contents: cstring; p_is_static: Bool) {.gdcall, raises: [].}
  InterfaceStringNameNewWithUtf8Chars* = proc (r_dest: UninitializedStringNamePtr; p_contents: cstring) {.gdcall, raises: [].}
  InterfaceStringNameNewWithUtf8CharsAndLen* = proc (r_dest: UninitializedStringNamePtr; p_contents: cstring; p_size: Int) {.gdcall, raises: [].}
  InterfaceObjectFreeInstanceBinding* = proc (p_o: ObjectPtr; p_token: pointer) {.gdcall, raises: [].}
  InterfacePlaceHolderScriptInstanceCreate* = proc (p_language: ObjectPtr; p_script: ObjectPtr; p_owner: ObjectPtr): ScriptInstancePtr {.gdcall, raises: [].}
  InterfacePlaceHolderScriptInstanceUpdate* = proc (p_placeholder: ScriptInstancePtr; p_properties: ConstTypePtr; p_values: ConstTypePtr) {.gdcall, raises: [].}
  InterfaceObjectGetScriptInstance* = proc (p_object: ConstObjectPtr; p_language: ObjectPtr): ScriptInstanceDataPtr {.gdcall, raises: [].}
  InterfaceCallableCustomCreate2* = proc (r_callable: UninitializedTypePtr; p_callable_custom_info: ptr CallableCustomInfo2) {.gdcall, raises: [].}
  InterfaceCallableCustomGetUserData* = proc (p_callable: ConstTypePtr; p_token: pointer): pointer {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassPropertyIndexed* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_info: ptr PropertyInfo; p_setter: ConstStringNamePtr; p_getter: ConstStringNamePtr; p_index: Int) {.gdcall, raises: [].}
  InterfaceImagePtrw* = proc (p_instance: ObjectPtr): ptr uint8_t {.gdcall, raises: [].}
  InterfaceImagePtr* = proc (p_instance: ObjectPtr): ptr uint8_t {.gdcall, raises: [].}
  InterfacePackedVector4ArrayOperatorIndex* = proc (p_self: TypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
  InterfacePackedVector4ArrayOperatorIndexConst* = proc (p_self: ConstTypePtr; p_index: Int): TypePtr {.gdcall, raises: [].}
  InterfaceObjectHasScriptMethod* = proc (p_object: ConstObjectPtr; p_method: ConstStringNamePtr): Bool {.gdcall, raises: [].}
  InterfaceObjectCallScriptMethod* = proc (p_object: ObjectPtr; p_method: ConstStringNamePtr; p_args: ptr ConstVariantPtr; p_argument_count: Int; r_return: UninitializedVariantPtr; r_error: ptr CallError) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassVirtualMethod* = proc (p_library: ClassLibraryPtr; p_class_name: ConstStringNamePtr; p_method_info: ptr ClassVirtualMethodInfo) {.gdcall, raises: [].}
  InterfaceEditorHelpLoadXmlFromUtf8Chars* = proc (p_data: cstring) {.gdcall, raises: [].}
  InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen* = proc (p_data: cstring; p_size: Int) {.gdcall, raises: [].}


type ExtentEnvironment* = ref object
  getProcAddress*: InterfaceGetProcAddress
  library*: ClassLibraryPtr
  version*: GodotVersion

var environment*: ExtentEnvironment

proc init*(getProcAddress: InterfaceGetProcAddress; library: ClassLIbraryPtr) =
  new environment
  environment.getProcAddress = getProcAddress
  environment.library = library

var
  interfaceGetGodotVersion*: InterfaceGetGodotVersion
  interfaceMemAlloc*: InterfaceMemAlloc
  interfaceMemRealloc*: InterfaceMemRealloc
  interfaceMemFree*: InterfaceMemFree
  interfacePrintError*: InterfacePrintError
  interfacePrintErrorWithMessage*: InterfacePrintErrorWithMessage
  interfacePrintWarning*: InterfacePrintWarning
  interfacePrintWarningWithMessage*: InterfacePrintWarningWithMessage
  interfacePrintScriptError*: InterfacePrintScriptError
  interfacePrintScriptErrorWithMessage*: InterfacePrintScriptErrorWithMessage
  interfaceGetNativeStructSize*: InterfaceGetNativeStructSize
  interfaceVariantNewCopy*: InterfaceVariantNewCopy
  interfaceVariantNewNil*: InterfaceVariantNewNil
  interfaceVariantDestroy*: InterfaceVariantDestroy
  interfaceVariantCall*: InterfaceVariantCall
  interfaceVariantCallStatic*: InterfaceVariantCallStatic
  interfaceVariantEvaluate*: InterfaceVariantEvaluate
  interfaceVariantSet*: InterfaceVariantSet
  interfaceVariantSetNamed*: InterfaceVariantSetNamed
  interfaceVariantSetKeyed*: InterfaceVariantSetKeyed
  interfaceVariantSetIndexed*: InterfaceVariantSetIndexed
  interfaceVariantGet*: InterfaceVariantGet
  interfaceVariantGetNamed*: InterfaceVariantGetNamed
  interfaceVariantGetKeyed*: InterfaceVariantGetKeyed
  interfaceVariantGetIndexed*: InterfaceVariantGetIndexed
  interfaceVariantIterInit*: InterfaceVariantIterInit
  interfaceVariantIterNext*: InterfaceVariantIterNext
  interfaceVariantIterGet*: InterfaceVariantIterGet
  interfaceVariantHash*: InterfaceVariantHash
  interfaceVariantRecursiveHash*: InterfaceVariantRecursiveHash
  interfaceVariantHashCompare*: InterfaceVariantHashCompare
  interfaceVariantBooleanize*: InterfaceVariantBooleanize
  interfaceVariantDuplicate*: InterfaceVariantDuplicate
  interfaceVariantStringify*: InterfaceVariantStringify
  interfaceVariantGetType*: InterfaceVariantGetType
  interfaceVariantHasMethod*: InterfaceVariantHasMethod
  interfaceVariantHasMember*: InterfaceVariantHasMember
  interfaceVariantHasKey*: InterfaceVariantHasKey
  interfaceVariantGetTypeName*: InterfaceVariantGetTypeName
  interfaceVariantCanConvert*: InterfaceVariantCanConvert
  interfaceVariantCanConvertStrict*: InterfaceVariantCanConvertStrict
  interfaceGetVariantFromTypeConstructor*: InterfaceGetVariantFromTypeConstructor
  interfaceGetVariantToTypeConstructor*: InterfaceGetVariantToTypeConstructor
  interfaceVariantGetPtrOperatorEvaluator*: InterfaceVariantGetPtrOperatorEvaluator
  interfaceVariantGetPtrBuiltinMethod*: InterfaceVariantGetPtrBuiltinMethod
  interfaceVariantGetPtrConstructor*: InterfaceVariantGetPtrConstructor
  interfaceVariantGetPtrDestructor*: InterfaceVariantGetPtrDestructor
  interfaceVariantConstruct*: InterfaceVariantConstruct
  interfaceVariantGetPtrSetter*: InterfaceVariantGetPtrSetter
  interfaceVariantGetPtrGetter*: InterfaceVariantGetPtrGetter
  interfaceVariantGetPtrIndexedSetter*: InterfaceVariantGetPtrIndexedSetter
  interfaceVariantGetPtrIndexedGetter*: InterfaceVariantGetPtrIndexedGetter
  interfaceVariantGetPtrKeyedSetter*: InterfaceVariantGetPtrKeyedSetter
  interfaceVariantGetPtrKeyedGetter*: InterfaceVariantGetPtrKeyedGetter
  interfaceVariantGetPtrKeyedChecker*: InterfaceVariantGetPtrKeyedChecker
  interfaceVariantGetConstantValue*: InterfaceVariantGetConstantValue
  interfaceVariantGetPtrUtilityFunction*: InterfaceVariantGetPtrUtilityFunction
  interfaceStringNewWithLatin1Chars*: InterfaceStringNewWithLatin1Chars
  interfaceStringNewWithUtf8Chars*: InterfaceStringNewWithUtf8Chars
  interfaceStringNewWithUtf16Chars*: InterfaceStringNewWithUtf16Chars
  interfaceStringNewWithUtf32Chars*: InterfaceStringNewWithUtf32Chars
  interfaceStringNewWithWideChars*: InterfaceStringNewWithWideChars
  interfaceStringNewWithLatin1CharsAndLen*: InterfaceStringNewWithLatin1CharsAndLen
  interfaceStringNewWithUtf32CharsAndLen*: InterfaceStringNewWithUtf32CharsAndLen
  interfaceStringNewWithWideCharsAndLen*: InterfaceStringNewWithWideCharsAndLen
  interfaceStringToLatin1Chars*: InterfaceStringToLatin1Chars
  interfaceStringToUtf8Chars*: InterfaceStringToUtf8Chars
  interfaceStringToUtf16Chars*: InterfaceStringToUtf16Chars
  interfaceStringToUtf32Chars*: InterfaceStringToUtf32Chars
  interfaceStringToWideChars*: InterfaceStringToWideChars
  interfaceStringOperatorIndex*: InterfaceStringOperatorIndex
  interfaceStringOperatorIndexConst*: InterfaceStringOperatorIndexConst
  interfaceStringOperatorPlusEqString*: InterfaceStringOperatorPlusEqString
  interfaceStringOperatorPlusEqChar*: InterfaceStringOperatorPlusEqChar
  interfaceStringOperatorPlusEqCstr*: InterfaceStringOperatorPlusEqCstr
  interfaceStringOperatorPlusEqWcstr*: InterfaceStringOperatorPlusEqWcstr
  interfaceStringOperatorPlusEqC32str*: InterfaceStringOperatorPlusEqC32str
  interfaceXmlParserOpenBuffer*: InterfaceXmlParserOpenBuffer
  interfaceFileAccessStoreBuffer*: InterfaceFileAccessStoreBuffer
  interfaceFileAccessGetBuffer*: InterfaceFileAccessGetBuffer
  interfaceWorkerThreadPoolAddNativeGroupTask*: InterfaceWorkerThreadPoolAddNativeGroupTask
  interfaceWorkerThreadPoolAddNativeTask*: InterfaceWorkerThreadPoolAddNativeTask
  interfacePackedByteArrayOperatorIndex*: InterfacePackedByteArrayOperatorIndex
  interfacePackedByteArrayOperatorIndexConst*: InterfacePackedByteArrayOperatorIndexConst
  interfacePackedColorArrayOperatorIndex*: InterfacePackedColorArrayOperatorIndex
  interfacePackedColorArrayOperatorIndexConst*: InterfacePackedColorArrayOperatorIndexConst
  interfacePackedFloat32ArrayOperatorIndex*: InterfacePackedFloat32ArrayOperatorIndex
  interfacePackedFloat32ArrayOperatorIndexConst*: InterfacePackedFloat32ArrayOperatorIndexConst
  interfacePackedFloat64ArrayOperatorIndex*: InterfacePackedFloat64ArrayOperatorIndex
  interfacePackedFloat64ArrayOperatorIndexConst*: InterfacePackedFloat64ArrayOperatorIndexConst
  interfacePackedInt32ArrayOperatorIndex*: InterfacePackedInt32ArrayOperatorIndex
  interfacePackedInt32ArrayOperatorIndexConst*: InterfacePackedInt32ArrayOperatorIndexConst
  interfacePackedInt64ArrayOperatorIndex*: InterfacePackedInt64ArrayOperatorIndex
  interfacePackedInt64ArrayOperatorIndexConst*: InterfacePackedInt64ArrayOperatorIndexConst
  interfacePackedStringArrayOperatorIndex*: InterfacePackedStringArrayOperatorIndex
  interfacePackedStringArrayOperatorIndexConst*: InterfacePackedStringArrayOperatorIndexConst
  interfacePackedVector2ArrayOperatorIndex*: InterfacePackedVector2ArrayOperatorIndex
  interfacePackedVector2ArrayOperatorIndexConst*: InterfacePackedVector2ArrayOperatorIndexConst
  interfacePackedVector3ArrayOperatorIndex*: InterfacePackedVector3ArrayOperatorIndex
  interfacePackedVector3ArrayOperatorIndexConst*: InterfacePackedVector3ArrayOperatorIndexConst
  interfaceArrayOperatorIndex*: InterfaceArrayOperatorIndex
  interfaceArrayOperatorIndexConst*: InterfaceArrayOperatorIndexConst
  interfaceArrayRef*: InterfaceArrayRef
  interfaceArraySetTyped*: InterfaceArraySetTyped
  interfaceDictionaryOperatorIndex*: InterfaceDictionaryOperatorIndex
  interfaceDictionaryOperatorIndexConst*: InterfaceDictionaryOperatorIndexConst
  interfaceObjectMethodBindCall*: InterfaceObjectMethodBindCall
  interfaceObjectMethodBindPtrcall*: InterfaceObjectMethodBindPtrcall
  interfaceObjectDestroy*: InterfaceObjectDestroy
  interfaceGlobalGetSingleton*: InterfaceGlobalGetSingleton
  interfaceObjectGetInstanceBinding*: InterfaceObjectGetInstanceBinding
  interfaceObjectSetInstanceBinding*: InterfaceObjectSetInstanceBinding
  interfaceObjectSetInstance*: InterfaceObjectSetInstance
  interfaceObjectGetClassName*: InterfaceObjectGetClassName
  interfaceObjectCastTo*: InterfaceObjectCastTo
  interfaceObjectGetInstanceFromId*: InterfaceObjectGetInstanceFromId
  interfaceObjectGetInstanceId*: InterfaceObjectGetInstanceId
  interfaceRefGetObject*: InterfaceRefGetObject
  interfaceRefSetObject*: InterfaceRefSetObject
  interfaceClassdbConstructObject*: InterfaceClassdbConstructObject
  interfaceClassdbGetMethodBind*: InterfaceClassdbGetMethodBind
  interfaceClassdbGetClassTag*: InterfaceClassdbGetClassTag
  interfaceClassdbRegisterExtensionClassMethod*: InterfaceClassdbRegisterExtensionClassMethod
  interfaceClassdbRegisterExtensionClassIntegerConstant*: InterfaceClassdbRegisterExtensionClassIntegerConstant
  interfaceClassdbRegisterExtensionClassProperty*: InterfaceClassdbRegisterExtensionClassProperty
  interfaceClassdbRegisterExtensionClassPropertyGroup*: InterfaceClassdbRegisterExtensionClassPropertyGroup
  interfaceClassdbRegisterExtensionClassPropertySubgroup*: InterfaceClassdbRegisterExtensionClassPropertySubgroup
  interfaceClassdbRegisterExtensionClassSignal*: InterfaceClassdbRegisterExtensionClassSignal
  interfaceClassdbUnregisterExtensionClass*: InterfaceClassdbUnregisterExtensionClass
  interfaceGetLibraryPath*: InterfaceGetLibraryPath
  interfaceEditorAddPlugin*: InterfaceEditorAddPlugin
  interfaceEditorRemovePlugin*: InterfaceEditorRemovePlugin
  interfaceStringResize*: InterfaceStringResize
  interfaceStringNameNewWithLatin1Chars*: InterfaceStringNameNewWithLatin1Chars
  interfaceStringNameNewWithUtf8Chars*: InterfaceStringNameNewWithUtf8Chars
  interfaceStringNameNewWithUtf8CharsAndLen*: InterfaceStringNameNewWithUtf8CharsAndLen
  interfaceObjectFreeInstanceBinding*: InterfaceObjectFreeInstanceBinding
  interfacePlaceHolderScriptInstanceCreate*: InterfacePlaceHolderScriptInstanceCreate
  interfacePlaceHolderScriptInstanceUpdate*: InterfacePlaceHolderScriptInstanceUpdate
  interfaceObjectGetScriptInstance*: InterfaceObjectGetScriptInstance
  interfaceCallableCustomGetUserData*: InterfaceCallableCustomGetUserData
  interfaceClassdbRegisterExtensionClassPropertyIndexed*: InterfaceClassdbRegisterExtensionClassPropertyIndexed
  interfaceStringNewWithUtf8CharsAndLen2*: InterfaceStringNewWithUtf8CharsAndLen2
  interfaceStringNewWithUtf16CharsAndLen2*: InterfaceStringNewWithUtf16CharsAndLen2
  interfaceImagePtrw*: InterfaceImagePtrw
  interfaceImagePtr*: InterfaceImagePtr
  interfacePackedVector4ArrayOperatorIndex*: InterfacePackedVector4ArrayOperatorIndex
  interfacePackedVector4ArrayOperatorIndexConst*: InterfacePackedVector4ArrayOperatorIndexConst
  interfaceObjectHasScriptMethod*: InterfaceObjectHasScriptMethod
  interfaceObjectCallScriptMethod*: InterfaceObjectCallScriptMethod
  interfaceScriptInstanceCreate3*: InterfaceScriptInstanceCreate3
  interfaceCallableCustomCreate2*: InterfaceCallableCustomCreate2
  interfaceClassdbRegisterExtensionClass3*: InterfaceClassdbRegisterExtensionClass3
  interfaceClassdbRegisterExtensionClassVirtualMethod*: InterfaceClassdbRegisterExtensionClassVirtualMethod
  interfaceEditorHelpLoadXmlFromUtf8Chars*: InterfaceEditorHelpLoadXmlFromUtf8Chars
  interfaceEditorHelpLoadXmlFromUtf8CharsAndLen*: InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen

proc load* =
  let getProcAddress = environment.getProcAddress
  interfaceGetGodotVersion = cast[InterfaceGetGodotVersion](getProcAddress(cstring "get_godot_version"))
  interfaceMemAlloc = cast[InterfaceMemAlloc](getProcAddress(cstring "mem_alloc"))
  interfaceMemRealloc = cast[InterfaceMemRealloc](getProcAddress(cstring "mem_realloc"))
  interfaceMemFree = cast[InterfaceMemFree](getProcAddress(cstring "mem_free"))
  interfacePrintError = cast[InterfacePrintError](getProcAddress(cstring "print_error"))
  interfacePrintErrorWithMessage = cast[InterfacePrintErrorWithMessage](getProcAddress(cstring "print_error_with_message"))
  interfacePrintWarning = cast[InterfacePrintWarning](getProcAddress(cstring "print_warning"))
  interfacePrintWarningWithMessage = cast[InterfacePrintWarningWithMessage](getProcAddress(cstring "print_warning_with_message"))
  interfacePrintScriptError = cast[InterfacePrintScriptError](getProcAddress(cstring "print_script_error"))
  interfacePrintScriptErrorWithMessage = cast[InterfacePrintScriptErrorWithMessage](getProcAddress(cstring "print_script_error_with_message"))
  interfaceGetNativeStructSize = cast[InterfaceGetNativeStructSize](getProcAddress(cstring "get_native_struct_size"))
  interfaceVariantNewCopy = cast[InterfaceVariantNewCopy](getProcAddress(cstring "variant_new_copy"))
  interfaceVariantNewNil = cast[InterfaceVariantNewNil](getProcAddress(cstring "variant_new_nil"))
  interfaceVariantDestroy = cast[InterfaceVariantDestroy](getProcAddress(cstring "variant_destroy"))
  interfaceVariantCall = cast[InterfaceVariantCall](getProcAddress(cstring "variant_call"))
  interfaceVariantCallStatic = cast[InterfaceVariantCallStatic](getProcAddress(cstring "variant_call_static"))
  interfaceVariantEvaluate = cast[InterfaceVariantEvaluate](getProcAddress(cstring "variant_evaluate"))
  interfaceVariantSet = cast[InterfaceVariantSet](getProcAddress(cstring "variant_set"))
  interfaceVariantSetNamed = cast[InterfaceVariantSetNamed](getProcAddress(cstring "variant_set_named"))
  interfaceVariantSetKeyed = cast[InterfaceVariantSetKeyed](getProcAddress(cstring "variant_set_keyed"))
  interfaceVariantSetIndexed = cast[InterfaceVariantSetIndexed](getProcAddress(cstring "variant_set_indexed"))
  interfaceVariantGet = cast[InterfaceVariantGet](getProcAddress(cstring "variant_get"))
  interfaceVariantGetNamed = cast[InterfaceVariantGetNamed](getProcAddress(cstring "variant_get_named"))
  interfaceVariantGetKeyed = cast[InterfaceVariantGetKeyed](getProcAddress(cstring "variant_get_keyed"))
  interfaceVariantGetIndexed = cast[InterfaceVariantGetIndexed](getProcAddress(cstring "variant_get_indexed"))
  interfaceVariantIterInit = cast[InterfaceVariantIterInit](getProcAddress(cstring "variant_iter_init"))
  interfaceVariantIterNext = cast[InterfaceVariantIterNext](getProcAddress(cstring "variant_iter_next"))
  interfaceVariantIterGet = cast[InterfaceVariantIterGet](getProcAddress(cstring "variant_iter_get"))
  interfaceVariantHash = cast[InterfaceVariantHash](getProcAddress(cstring "variant_hash"))
  interfaceVariantRecursiveHash = cast[InterfaceVariantRecursiveHash](getProcAddress(cstring "variant_recursive_hash"))
  interfaceVariantHashCompare = cast[InterfaceVariantHashCompare](getProcAddress(cstring "variant_hash_compare"))
  interfaceVariantBooleanize = cast[InterfaceVariantBooleanize](getProcAddress(cstring "variant_booleanize"))
  interfaceVariantDuplicate = cast[InterfaceVariantDuplicate](getProcAddress(cstring "variant_duplicate"))
  interfaceVariantStringify = cast[InterfaceVariantStringify](getProcAddress(cstring "variant_stringify"))
  interfaceVariantGetType = cast[InterfaceVariantGetType](getProcAddress(cstring "variant_get_type"))
  interfaceVariantHasMethod = cast[InterfaceVariantHasMethod](getProcAddress(cstring "variant_has_method"))
  interfaceVariantHasMember = cast[InterfaceVariantHasMember](getProcAddress(cstring "variant_has_member"))
  interfaceVariantHasKey = cast[InterfaceVariantHasKey](getProcAddress(cstring "variant_has_key"))
  interfaceVariantGetTypeName = cast[InterfaceVariantGetTypeName](getProcAddress(cstring "variant_get_type_name"))
  interfaceVariantCanConvert = cast[InterfaceVariantCanConvert](getProcAddress(cstring "variant_can_convert"))
  interfaceVariantCanConvertStrict = cast[InterfaceVariantCanConvertStrict](getProcAddress(cstring "variant_can_convert_strict"))
  interfaceGetVariantFromTypeConstructor = cast[InterfaceGetVariantFromTypeConstructor](getProcAddress(cstring "get_variant_from_type_constructor"))
  interfaceGetVariantToTypeConstructor = cast[InterfaceGetVariantToTypeConstructor](getProcAddress(cstring "get_variant_to_type_constructor"))
  interfaceVariantGetPtrOperatorEvaluator = cast[InterfaceVariantGetPtrOperatorEvaluator](getProcAddress(cstring "variant_get_ptr_operator_evaluator"))
  interfaceVariantGetPtrBuiltinMethod = cast[InterfaceVariantGetPtrBuiltinMethod](getProcAddress(cstring "variant_get_ptr_builtin_method"))
  interfaceVariantGetPtrConstructor = cast[InterfaceVariantGetPtrConstructor](getProcAddress(cstring "variant_get_ptr_constructor"))
  interfaceVariantGetPtrDestructor = cast[InterfaceVariantGetPtrDestructor](getProcAddress(cstring "variant_get_ptr_destructor"))
  interfaceVariantConstruct = cast[InterfaceVariantConstruct](getProcAddress(cstring "variant_construct"))
  interfaceVariantGetPtrSetter = cast[InterfaceVariantGetPtrSetter](getProcAddress(cstring "variant_get_ptr_setter"))
  interfaceVariantGetPtrGetter = cast[InterfaceVariantGetPtrGetter](getProcAddress(cstring "variant_get_ptr_getter"))
  interfaceVariantGetPtrIndexedSetter = cast[InterfaceVariantGetPtrIndexedSetter](getProcAddress(cstring "variant_get_ptr_indexed_setter"))
  interfaceVariantGetPtrIndexedGetter = cast[InterfaceVariantGetPtrIndexedGetter](getProcAddress(cstring "variant_get_ptr_indexed_getter"))
  interfaceVariantGetPtrKeyedSetter = cast[InterfaceVariantGetPtrKeyedSetter](getProcAddress(cstring "variant_get_ptr_keyed_setter"))
  interfaceVariantGetPtrKeyedGetter = cast[InterfaceVariantGetPtrKeyedGetter](getProcAddress(cstring "variant_get_ptr_keyed_getter"))
  interfaceVariantGetPtrKeyedChecker = cast[InterfaceVariantGetPtrKeyedChecker](getProcAddress(cstring "variant_get_ptr_keyed_checker"))
  interfaceVariantGetConstantValue = cast[InterfaceVariantGetConstantValue](getProcAddress(cstring "variant_get_constant_value"))
  interfaceVariantGetPtrUtilityFunction = cast[InterfaceVariantGetPtrUtilityFunction](getProcAddress(cstring "variant_get_ptr_utility_function"))
  interfaceStringNewWithLatin1Chars = cast[InterfaceStringNewWithLatin1Chars](getProcAddress(cstring "string_new_with_latin1_chars"))
  interfaceStringNewWithUtf8Chars = cast[InterfaceStringNewWithUtf8Chars](getProcAddress(cstring "string_new_with_utf8_chars"))
  interfaceStringNewWithUtf16Chars = cast[InterfaceStringNewWithUtf16Chars](getProcAddress(cstring "string_new_with_utf16_chars"))
  interfaceStringNewWithUtf32Chars = cast[InterfaceStringNewWithUtf32Chars](getProcAddress(cstring "string_new_with_utf32_chars"))
  interfaceStringNewWithWideChars = cast[InterfaceStringNewWithWideChars](getProcAddress(cstring "string_new_with_wide_chars"))
  interfaceStringNewWithLatin1CharsAndLen = cast[InterfaceStringNewWithLatin1CharsAndLen](getProcAddress(cstring "string_new_with_latin1_chars_and_len"))
  interfaceStringNewWithUtf32CharsAndLen = cast[InterfaceStringNewWithUtf32CharsAndLen](getProcAddress(cstring "string_new_with_utf32_chars_and_len"))
  interfaceStringNewWithWideCharsAndLen = cast[InterfaceStringNewWithWideCharsAndLen](getProcAddress(cstring "string_new_with_wide_chars_and_len"))
  interfaceStringToLatin1Chars = cast[InterfaceStringToLatin1Chars](getProcAddress(cstring "string_to_latin1_chars"))
  interfaceStringToUtf8Chars = cast[InterfaceStringToUtf8Chars](getProcAddress(cstring "string_to_utf8_chars"))
  interfaceStringToUtf16Chars = cast[InterfaceStringToUtf16Chars](getProcAddress(cstring "string_to_utf16_chars"))
  interfaceStringToUtf32Chars = cast[InterfaceStringToUtf32Chars](getProcAddress(cstring "string_to_utf32_chars"))
  interfaceStringToWideChars = cast[InterfaceStringToWideChars](getProcAddress(cstring "string_to_wide_chars"))
  interfaceStringOperatorIndex = cast[InterfaceStringOperatorIndex](getProcAddress(cstring "string_operator_index"))
  interfaceStringOperatorIndexConst = cast[InterfaceStringOperatorIndexConst](getProcAddress(cstring "string_operator_index_const"))
  interfaceStringOperatorPlusEqString = cast[InterfaceStringOperatorPlusEqString](getProcAddress(cstring "string_operator_plus_eq_string"))
  interfaceStringOperatorPlusEqChar = cast[InterfaceStringOperatorPlusEqChar](getProcAddress(cstring "string_operator_plus_eq_char"))
  interfaceStringOperatorPlusEqCstr = cast[InterfaceStringOperatorPlusEqCstr](getProcAddress(cstring "string_operator_plus_eq_cstr"))
  interfaceStringOperatorPlusEqWcstr = cast[InterfaceStringOperatorPlusEqWcstr](getProcAddress(cstring "string_operator_plus_eq_wcstr"))
  interfaceStringOperatorPlusEqC32str = cast[InterfaceStringOperatorPlusEqC32str](getProcAddress(cstring "string_operator_plus_eq_c32str"))
  interfaceXmlParserOpenBuffer = cast[InterfaceXmlParserOpenBuffer](getProcAddress(cstring "xml_parser_open_buffer"))
  interfaceFileAccessStoreBuffer = cast[InterfaceFileAccessStoreBuffer](getProcAddress(cstring "file_access_store_buffer"))
  interfaceFileAccessGetBuffer = cast[InterfaceFileAccessGetBuffer](getProcAddress(cstring "file_access_get_buffer"))
  interfaceWorkerThreadPoolAddNativeGroupTask = cast[InterfaceWorkerThreadPoolAddNativeGroupTask](getProcAddress(cstring "worker_thread_pool_add_native_group_task"))
  interfaceWorkerThreadPoolAddNativeTask = cast[InterfaceWorkerThreadPoolAddNativeTask](getProcAddress(cstring "worker_thread_pool_add_native_task"))
  interfacePackedByteArrayOperatorIndex = cast[InterfacePackedByteArrayOperatorIndex](getProcAddress(cstring "packed_byte_array_operator_index"))
  interfacePackedByteArrayOperatorIndexConst = cast[InterfacePackedByteArrayOperatorIndexConst](getProcAddress(cstring "packed_byte_array_operator_index_const"))
  interfacePackedColorArrayOperatorIndex = cast[InterfacePackedColorArrayOperatorIndex](getProcAddress(cstring "packed_color_array_operator_index"))
  interfacePackedColorArrayOperatorIndexConst = cast[InterfacePackedColorArrayOperatorIndexConst](getProcAddress(cstring "packed_color_array_operator_index_const"))
  interfacePackedFloat32ArrayOperatorIndex = cast[InterfacePackedFloat32ArrayOperatorIndex](getProcAddress(cstring "packed_float32_array_operator_index"))
  interfacePackedFloat32ArrayOperatorIndexConst = cast[InterfacePackedFloat32ArrayOperatorIndexConst](getProcAddress(cstring "packed_float32_array_operator_index_const"))
  interfacePackedFloat64ArrayOperatorIndex = cast[InterfacePackedFloat64ArrayOperatorIndex](getProcAddress(cstring "packed_float64_array_operator_index"))
  interfacePackedFloat64ArrayOperatorIndexConst = cast[InterfacePackedFloat64ArrayOperatorIndexConst](getProcAddress(cstring "packed_float64_array_operator_index_const"))
  interfacePackedInt32ArrayOperatorIndex = cast[InterfacePackedInt32ArrayOperatorIndex](getProcAddress(cstring "packed_int32_array_operator_index"))
  interfacePackedInt32ArrayOperatorIndexConst = cast[InterfacePackedInt32ArrayOperatorIndexConst](getProcAddress(cstring "packed_int32_array_operator_index_const"))
  interfacePackedInt64ArrayOperatorIndex = cast[InterfacePackedInt64ArrayOperatorIndex](getProcAddress(cstring "packed_int64_array_operator_index"))
  interfacePackedInt64ArrayOperatorIndexConst = cast[InterfacePackedInt64ArrayOperatorIndexConst](getProcAddress(cstring "packed_int64_array_operator_index_const"))
  interfacePackedStringArrayOperatorIndex = cast[InterfacePackedStringArrayOperatorIndex](getProcAddress(cstring "packed_string_array_operator_index"))
  interfacePackedStringArrayOperatorIndexConst = cast[InterfacePackedStringArrayOperatorIndexConst](getProcAddress(cstring "packed_string_array_operator_index_const"))
  interfacePackedVector2ArrayOperatorIndex = cast[InterfacePackedVector2ArrayOperatorIndex](getProcAddress(cstring "packed_vector2_array_operator_index"))
  interfacePackedVector2ArrayOperatorIndexConst = cast[InterfacePackedVector2ArrayOperatorIndexConst](getProcAddress(cstring "packed_vector2_array_operator_index_const"))
  interfacePackedVector3ArrayOperatorIndex = cast[InterfacePackedVector3ArrayOperatorIndex](getProcAddress(cstring "packed_vector3_array_operator_index"))
  interfacePackedVector3ArrayOperatorIndexConst = cast[InterfacePackedVector3ArrayOperatorIndexConst](getProcAddress(cstring "packed_vector3_array_operator_index_const"))
  interfaceArrayOperatorIndex = cast[InterfaceArrayOperatorIndex](getProcAddress(cstring "array_operator_index"))
  interfaceArrayOperatorIndexConst = cast[InterfaceArrayOperatorIndexConst](getProcAddress(cstring "array_operator_index_const"))
  interfaceArrayRef = cast[InterfaceArrayRef](getProcAddress(cstring "array_ref"))
  interfaceArraySetTyped = cast[InterfaceArraySetTyped](getProcAddress(cstring "array_set_typed"))
  interfaceDictionaryOperatorIndex = cast[InterfaceDictionaryOperatorIndex](getProcAddress(cstring "dictionary_operator_index"))
  interfaceDictionaryOperatorIndexConst = cast[InterfaceDictionaryOperatorIndexConst](getProcAddress(cstring "dictionary_operator_index_const"))
  interfaceObjectMethodBindCall = cast[InterfaceObjectMethodBindCall](getProcAddress(cstring "object_method_bind_call"))
  interfaceObjectMethodBindPtrcall = cast[InterfaceObjectMethodBindPtrcall](getProcAddress(cstring "object_method_bind_ptrcall"))
  interfaceObjectDestroy = cast[InterfaceObjectDestroy](getProcAddress(cstring "object_destroy"))
  interfaceGlobalGetSingleton = cast[InterfaceGlobalGetSingleton](getProcAddress(cstring "global_get_singleton"))
  interfaceObjectGetInstanceBinding = cast[InterfaceObjectGetInstanceBinding](getProcAddress(cstring "object_get_instance_binding"))
  interfaceObjectSetInstanceBinding = cast[InterfaceObjectSetInstanceBinding](getProcAddress(cstring "object_set_instance_binding"))
  interfaceObjectSetInstance = cast[InterfaceObjectSetInstance](getProcAddress(cstring "object_set_instance"))
  interfaceObjectGetClassName = cast[InterfaceObjectGetClassName](getProcAddress(cstring "object_get_class_name"))
  interfaceObjectCastTo = cast[InterfaceObjectCastTo](getProcAddress(cstring "object_cast_to"))
  interfaceObjectGetInstanceFromId = cast[InterfaceObjectGetInstanceFromId](getProcAddress(cstring "object_get_instance_from_id"))
  interfaceObjectGetInstanceId = cast[InterfaceObjectGetInstanceId](getProcAddress(cstring "object_get_instance_id"))
  interfaceRefGetObject = cast[InterfaceRefGetObject](getProcAddress(cstring "ref_get_object"))
  interfaceRefSetObject = cast[InterfaceRefSetObject](getProcAddress(cstring "ref_set_object"))
  interfaceClassdbConstructObject = cast[InterfaceClassdbConstructObject](getProcAddress(cstring "classdb_construct_object"))
  interfaceClassdbGetMethodBind = cast[InterfaceClassdbGetMethodBind](getProcAddress(cstring "classdb_get_method_bind"))
  interfaceClassdbGetClassTag = cast[InterfaceClassdbGetClassTag](getProcAddress(cstring "classdb_get_class_tag"))
  interfaceClassdbRegisterExtensionClassMethod = cast[InterfaceClassdbRegisterExtensionClassMethod](getProcAddress(cstring "classdb_register_extension_class_method"))
  interfaceClassdbRegisterExtensionClassIntegerConstant = cast[InterfaceClassdbRegisterExtensionClassIntegerConstant](getProcAddress(cstring "classdb_register_extension_class_integer_constant"))
  interfaceClassdbRegisterExtensionClassProperty = cast[InterfaceClassdbRegisterExtensionClassProperty](getProcAddress(cstring "classdb_register_extension_class_property"))
  interfaceClassdbRegisterExtensionClassPropertyGroup = cast[InterfaceClassdbRegisterExtensionClassPropertyGroup](getProcAddress(cstring "classdb_register_extension_class_property_group"))
  interfaceClassdbRegisterExtensionClassPropertySubgroup = cast[InterfaceClassdbRegisterExtensionClassPropertySubgroup](getProcAddress(cstring "classdb_register_extension_class_property_subgroup"))
  interfaceClassdbRegisterExtensionClassSignal = cast[InterfaceClassdbRegisterExtensionClassSignal](getProcAddress(cstring "classdb_register_extension_class_signal"))
  interfaceClassdbUnregisterExtensionClass = cast[InterfaceClassdbUnregisterExtensionClass](getProcAddress(cstring "classdb_unregister_extension_class"))
  interfaceGetLibraryPath = cast[InterfaceGetLibraryPath](getProcAddress(cstring "get_library_path"))
  interfaceEditorAddPlugin = cast[InterfaceEditorAddPlugin](getProcAddress(cstring "editor_add_plugin"))
  interfaceEditorRemovePlugin = cast[InterfaceEditorRemovePlugin](getProcAddress(cstring "editor_remove_plugin"))
  interfaceStringResize = cast[InterfaceStringResize](getProcAddress(cstring "string_resize"))
  interfaceStringNameNewWithLatin1Chars = cast[InterfaceStringNameNewWithLatin1Chars](getProcAddress(cstring "string_name_new_with_latin1_chars"))
  interfaceStringNameNewWithUtf8Chars = cast[InterfaceStringNameNewWithUtf8Chars](getProcAddress(cstring "string_name_new_with_utf8_chars"))
  interfaceStringNameNewWithUtf8CharsAndLen = cast[InterfaceStringNameNewWithUtf8CharsAndLen](getProcAddress(cstring "string_name_new_with_utf8_chars_and_len"))
  interfaceObjectFreeInstanceBinding = cast[InterfaceObjectFreeInstanceBinding](getProcAddress(cstring "object_free_instance_binding"))
  interfacePlaceHolderScriptInstanceCreate = cast[InterfacePlaceHolderScriptInstanceCreate](getProcAddress(cstring "placeholder_script_instance_create"))
  interfacePlaceHolderScriptInstanceUpdate = cast[InterfacePlaceHolderScriptInstanceUpdate](getProcAddress(cstring "placeholder_script_instance_update"))
  interfaceObjectGetScriptInstance = cast[InterfaceObjectGetScriptInstance](getProcAddress(cstring "object_get_script_instance"))
  interfaceCallableCustomGetUserData = cast[InterfaceCallableCustomGetUserData](getProcAddress(cstring "callable_custom_get_userdata"))
  interfaceClassdbRegisterExtensionClassPropertyIndexed = cast[InterfaceClassdbRegisterExtensionClassPropertyIndexed](getProcAddress(cstring "classdb_register_extension_class_property_indexed"))
  interfaceStringNewWithUtf8CharsAndLen2 = cast[InterfaceStringNewWithUtf8CharsAndLen2](getProcAddress(cstring "string_new_with_utf8_chars_and_len2"))
  interfaceStringNewWithUtf16CharsAndLen2 = cast[InterfaceStringNewWithUtf16CharsAndLen2](getProcAddress(cstring "string_new_with_utf16_chars_and_len2"))
  interfaceImagePtrw = cast[InterfaceImagePtrw](getProcAddress(cstring "image_ptrw"))
  interfaceImagePtr = cast[InterfaceImagePtr](getProcAddress(cstring "image_ptr"))
  interfacePackedVector4ArrayOperatorIndex = cast[InterfacePackedVector4ArrayOperatorIndex](getProcAddress(cstring "packed_vector4_array_operator_index"))
  interfacePackedVector4ArrayOperatorIndexConst = cast[InterfacePackedVector4ArrayOperatorIndexConst](getProcAddress(cstring "packed_vector4_array_operator_index_const"))
  interfaceObjectHasScriptMethod = cast[InterfaceObjectHasScriptMethod](getProcAddress(cstring "object_has_script_method"))
  interfaceObjectCallScriptMethod = cast[InterfaceObjectCallScriptMethod](getProcAddress(cstring "object_call_script_method"))
  interfaceScriptInstanceCreate3 = cast[InterfaceScriptInstanceCreate3](getProcAddress(cstring "script_instance_create3"))
  interfaceCallableCustomCreate2 = cast[InterfaceCallableCustomCreate2](getProcAddress(cstring "callable_custom_create2"))
  interfaceClassdbRegisterExtensionClass3 = cast[InterfaceClassdbRegisterExtensionClass3](getProcAddress(cstring "classdb_register_extension_class3"))
  interfaceClassdbRegisterExtensionClassVirtualMethod = cast[InterfaceClassdbRegisterExtensionClassVirtualMethod](getProcAddress(cstring "classdb_register_extension_class_virtual_method"))
  interfaceEditorHelpLoadXmlFromUtf8Chars = cast[InterfaceEditorHelpLoadXmlFromUtf8Chars](getProcAddress(cstring "editor_help_load_xml_from_utf8_chars"))
  interfaceEditorHelpLoadXmlFromUtf8CharsAndLen = cast[InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen](getProcAddress(cstring "editor_help_load_xml_from_utf8_chars_and_len"))

  interfaceGetGodotVersion(addr environment.version)
