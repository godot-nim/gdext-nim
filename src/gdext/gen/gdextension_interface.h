typedef uint32_t char32_t;
typedef uint16_t char16_t;
typedef enum {
	GDEXTENSION_VARIANT_TYPE_NIL = 0,
	GDEXTENSION_VARIANT_TYPE_BOOL = 1,
	GDEXTENSION_VARIANT_TYPE_INT = 2,
	GDEXTENSION_VARIANT_TYPE_FLOAT = 3,
	GDEXTENSION_VARIANT_TYPE_STRING = 4,
	GDEXTENSION_VARIANT_TYPE_VECTOR2 = 5,
	GDEXTENSION_VARIANT_TYPE_VECTOR2I = 6,
	GDEXTENSION_VARIANT_TYPE_RECT2 = 7,
	GDEXTENSION_VARIANT_TYPE_RECT2I = 8,
	GDEXTENSION_VARIANT_TYPE_VECTOR3 = 9,
	GDEXTENSION_VARIANT_TYPE_VECTOR3I = 10,
	GDEXTENSION_VARIANT_TYPE_TRANSFORM2D = 11,
	GDEXTENSION_VARIANT_TYPE_VECTOR4 = 12,
	GDEXTENSION_VARIANT_TYPE_VECTOR4I = 13,
	GDEXTENSION_VARIANT_TYPE_PLANE = 14,
	GDEXTENSION_VARIANT_TYPE_QUATERNION = 15,
	GDEXTENSION_VARIANT_TYPE_AABB = 16,
	GDEXTENSION_VARIANT_TYPE_BASIS = 17,
	GDEXTENSION_VARIANT_TYPE_TRANSFORM3D = 18,
	GDEXTENSION_VARIANT_TYPE_PROJECTION = 19,
	GDEXTENSION_VARIANT_TYPE_COLOR = 20,
	GDEXTENSION_VARIANT_TYPE_STRING_NAME = 21,
	GDEXTENSION_VARIANT_TYPE_NODE_PATH = 22,
	GDEXTENSION_VARIANT_TYPE_RID = 23,
	GDEXTENSION_VARIANT_TYPE_OBJECT = 24,
	GDEXTENSION_VARIANT_TYPE_CALLABLE = 25,
	GDEXTENSION_VARIANT_TYPE_SIGNAL = 26,
	GDEXTENSION_VARIANT_TYPE_DICTIONARY = 27,
	GDEXTENSION_VARIANT_TYPE_ARRAY = 28,
	GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY = 29,
	GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY = 30,
	GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY = 31,
	GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY = 32,
	GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY = 33,
	GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY = 34,
	GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY = 35,
	GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY = 36,
	GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY = 37,
	GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR4_ARRAY = 38,
	GDEXTENSION_VARIANT_TYPE_VARIANT_MAX = 39,
} GDExtensionVariantType;
typedef enum {
	GDEXTENSION_VARIANT_OP_EQUAL = 0,
	GDEXTENSION_VARIANT_OP_NOT_EQUAL = 1,
	GDEXTENSION_VARIANT_OP_LESS = 2,
	GDEXTENSION_VARIANT_OP_LESS_EQUAL = 3,
	GDEXTENSION_VARIANT_OP_GREATER = 4,
	GDEXTENSION_VARIANT_OP_GREATER_EQUAL = 5,
	GDEXTENSION_VARIANT_OP_ADD = 6,
	GDEXTENSION_VARIANT_OP_SUBTRACT = 7,
	GDEXTENSION_VARIANT_OP_MULTIPLY = 8,
	GDEXTENSION_VARIANT_OP_DIVIDE = 9,
	GDEXTENSION_VARIANT_OP_NEGATE = 10,
	GDEXTENSION_VARIANT_OP_POSITIVE = 11,
	GDEXTENSION_VARIANT_OP_MODULE = 12,
	GDEXTENSION_VARIANT_OP_POWER = 13,
	GDEXTENSION_VARIANT_OP_SHIFT_LEFT = 14,
	GDEXTENSION_VARIANT_OP_SHIFT_RIGHT = 15,
	GDEXTENSION_VARIANT_OP_BIT_AND = 16,
	GDEXTENSION_VARIANT_OP_BIT_OR = 17,
	GDEXTENSION_VARIANT_OP_BIT_XOR = 18,
	GDEXTENSION_VARIANT_OP_BIT_NEGATE = 19,
	GDEXTENSION_VARIANT_OP_AND = 20,
	GDEXTENSION_VARIANT_OP_OR = 21,
	GDEXTENSION_VARIANT_OP_XOR = 22,
	GDEXTENSION_VARIANT_OP_NOT = 23,
	GDEXTENSION_VARIANT_OP_IN = 24,
	GDEXTENSION_VARIANT_OP_MAX = 25,
} GDExtensionVariantOperator;
typedef void *GDExtensionVariantPtr;
typedef void *GDExtensionConstVariantPtr;
typedef void *GDExtensionUninitializedVariantPtr;
typedef void *GDExtensionStringNamePtr;
typedef void *GDExtensionConstStringNamePtr;
typedef void *GDExtensionUninitializedStringNamePtr;
typedef void *GDExtensionStringPtr;
typedef void *GDExtensionConstStringPtr;
typedef void *GDExtensionUninitializedStringPtr;
typedef void *GDExtensionObjectPtr;
typedef void *GDExtensionConstObjectPtr;
typedef void *GDExtensionUninitializedObjectPtr;
typedef void *GDExtensionTypePtr;
typedef void *GDExtensionConstTypePtr;
typedef void *GDExtensionUninitializedTypePtr;
typedef void *GDExtensionMethodBindPtr;
typedef int64_t GDExtensionInt;
typedef uint8_t GDExtensionBool;
typedef uint64_t GDObjectInstanceID;
typedef void *GDExtensionRefPtr;
typedef void *GDExtensionConstRefPtr;
typedef enum {
	GDEXTENSION_CALL_OK = 0,
	GDEXTENSION_CALL_ERROR_INVALID_METHOD = 1,
	GDEXTENSION_CALL_ERROR_INVALID_ARGUMENT = 2,
	GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS = 3,
	GDEXTENSION_CALL_ERROR_TOO_FEW_ARGUMENTS = 4,
	GDEXTENSION_CALL_ERROR_INSTANCE_IS_NULL = 5,
	GDEXTENSION_CALL_ERROR_METHOD_NOT_CONST = 6,
} GDExtensionCallErrorType;
typedef struct {
	GDExtensionCallErrorType error;
	int32_t argument;
	int32_t expected;
} GDExtensionCallError;
typedef void (*GDExtensionVariantFromTypeConstructorFunc)(GDExtensionUninitializedVariantPtr, GDExtensionTypePtr);
typedef void (*GDExtensionTypeFromVariantConstructorFunc)(GDExtensionUninitializedTypePtr, GDExtensionVariantPtr);
typedef void *(*GDExtensionVariantGetInternalPtrFunc)(GDExtensionVariantPtr);
typedef void (*GDExtensionPtrOperatorEvaluator)(GDExtensionConstTypePtr p_left, GDExtensionConstTypePtr p_right, GDExtensionTypePtr r_result);
typedef void (*GDExtensionPtrBuiltInMethod)(GDExtensionTypePtr p_base, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_return, int32_t p_argument_count);
typedef void (*GDExtensionPtrConstructor)(GDExtensionUninitializedTypePtr p_base, GDExtensionConstTypePtr *p_args);
typedef void (*GDExtensionPtrDestructor)(GDExtensionTypePtr p_base);
typedef void (*GDExtensionPtrSetter)(GDExtensionTypePtr p_base, GDExtensionConstTypePtr p_value);
typedef void (*GDExtensionPtrGetter)(GDExtensionConstTypePtr p_base, GDExtensionTypePtr r_value);
typedef void (*GDExtensionPtrIndexedSetter)(GDExtensionTypePtr p_base, GDExtensionInt p_index, GDExtensionConstTypePtr p_value);
typedef void (*GDExtensionPtrIndexedGetter)(GDExtensionConstTypePtr p_base, GDExtensionInt p_index, GDExtensionTypePtr r_value);
typedef void (*GDExtensionPtrKeyedSetter)(GDExtensionTypePtr p_base, GDExtensionConstTypePtr p_key, GDExtensionConstTypePtr p_value);
typedef void (*GDExtensionPtrKeyedGetter)(GDExtensionConstTypePtr p_base, GDExtensionConstTypePtr p_key, GDExtensionTypePtr r_value);
typedef uint32_t (*GDExtensionPtrKeyedChecker)(GDExtensionConstVariantPtr p_base, GDExtensionConstVariantPtr p_key);
typedef void (*GDExtensionPtrUtilityFunction)(GDExtensionTypePtr r_return, GDExtensionConstTypePtr *p_args, int32_t p_argument_count);
typedef GDExtensionObjectPtr (*GDExtensionClassConstructor)();
typedef void *(*GDExtensionInstanceBindingCreateCallback)(void *p_token, void *p_instance);
typedef void (*GDExtensionInstanceBindingFreeCallback)(void *p_token, void *p_instance, void *p_binding);
typedef GDExtensionBool (*GDExtensionInstanceBindingReferenceCallback)(void *p_token, void *p_binding, GDExtensionBool p_reference);
typedef struct {
	GDExtensionInstanceBindingCreateCallback create_callback;
	GDExtensionInstanceBindingFreeCallback free_callback;
	GDExtensionInstanceBindingReferenceCallback reference_callback;
} GDExtensionInstanceBindingCallbacks;
typedef void *GDExtensionClassInstancePtr;
typedef GDExtensionBool (*GDExtensionClassSet)(GDExtensionClassInstancePtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value);
typedef GDExtensionBool (*GDExtensionClassGet)(GDExtensionClassInstancePtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret);
typedef uint64_t (*GDExtensionClassGetRID)(GDExtensionClassInstancePtr p_instance);
typedef struct {
	GDExtensionVariantType type;
	GDExtensionStringNamePtr name;
	GDExtensionStringNamePtr class_name;
	uint32_t hint;
	GDExtensionStringPtr hint_string;
	uint32_t usage;
} GDExtensionPropertyInfo;
typedef struct {
	GDExtensionStringNamePtr name;
	GDExtensionPropertyInfo return_value;
	uint32_t flags;
	int32_t id;
	uint32_t argument_count;
	GDExtensionPropertyInfo *arguments;
	uint32_t default_argument_count;
	GDExtensionVariantPtr *default_arguments;
} GDExtensionMethodInfo;
typedef GDExtensionPropertyInfo *(*GDExtensionClassGetPropertyList)(GDExtensionClassInstancePtr p_instance, uint32_t *r_count);
typedef void (*GDExtensionClassFreePropertyList)(GDExtensionClassInstancePtr p_instance, GDExtensionPropertyInfo *p_list);
typedef void (*GDExtensionClassFreePropertyList2)(GDExtensionClassInstancePtr p_instance, GDExtensionPropertyInfo *p_list, uint32_t p_count);
typedef GDExtensionBool (*GDExtensionClassPropertyCanRevert)(GDExtensionClassInstancePtr p_instance, GDExtensionConstStringNamePtr p_name);
typedef GDExtensionBool (*GDExtensionClassPropertyGetRevert)(GDExtensionClassInstancePtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret);
typedef GDExtensionBool (*GDExtensionClassValidateProperty)(GDExtensionClassInstancePtr p_instance, GDExtensionPropertyInfo *p_property);
typedef void (*GDExtensionClassNotification)(GDExtensionClassInstancePtr p_instance, int32_t p_what); 
typedef void (*GDExtensionClassNotification2)(GDExtensionClassInstancePtr p_instance, int32_t p_what, GDExtensionBool p_reversed);
typedef void (*GDExtensionClassToString)(GDExtensionClassInstancePtr p_instance, GDExtensionBool *r_is_valid, GDExtensionStringPtr p_out);
typedef void (*GDExtensionClassReference)(GDExtensionClassInstancePtr p_instance);
typedef void (*GDExtensionClassUnreference)(GDExtensionClassInstancePtr p_instance);
typedef void (*GDExtensionClassCallVirtual)(GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret);
typedef GDExtensionObjectPtr (*GDExtensionClassCreateInstance)(void *p_class_userdata);
typedef GDExtensionObjectPtr (*GDExtensionClassCreateInstance2)(void *p_class_userdata, GDExtensionBool p_notify_postinitialize);
typedef void (*GDExtensionClassFreeInstance)(void *p_class_userdata, GDExtensionClassInstancePtr p_instance);
typedef GDExtensionClassInstancePtr (*GDExtensionClassRecreateInstance)(void *p_class_userdata, GDExtensionObjectPtr p_object);
typedef GDExtensionClassCallVirtual (*GDExtensionClassGetVirtual)(void *p_class_userdata, GDExtensionConstStringNamePtr p_name);
typedef GDExtensionClassCallVirtual (*GDExtensionClassGetVirtual2)(void *p_class_userdata, GDExtensionConstStringNamePtr p_name, uint32_t p_hash);
typedef void *(*GDExtensionClassGetVirtualCallData)(void *p_class_userdata, GDExtensionConstStringNamePtr p_name);
typedef void *(*GDExtensionClassGetVirtualCallData2)(void *p_class_userdata, GDExtensionConstStringNamePtr p_name, uint32_t p_hash);
typedef void (*GDExtensionClassCallVirtualWithData)(GDExtensionClassInstancePtr p_instance, GDExtensionConstStringNamePtr p_name, void *p_virtual_call_userdata, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret);
typedef struct {
	GDExtensionBool is_virtual;
	GDExtensionBool is_abstract;
	GDExtensionClassSet set_func;
	GDExtensionClassGet get_func;
	GDExtensionClassGetPropertyList get_property_list_func;
	GDExtensionClassFreePropertyList free_property_list_func;
	GDExtensionClassPropertyCanRevert property_can_revert_func;
	GDExtensionClassPropertyGetRevert property_get_revert_func;
	GDExtensionClassNotification notification_func;
	GDExtensionClassToString to_string_func;
	GDExtensionClassReference reference_func;
	GDExtensionClassUnreference unreference_func;
	GDExtensionClassCreateInstance create_instance_func;
	GDExtensionClassFreeInstance free_instance_func;
	GDExtensionClassGetVirtual get_virtual_func;
	GDExtensionClassGetRID get_rid_func;
	void *class_userdata;
} GDExtensionClassCreationInfo; 
typedef struct {
	GDExtensionBool is_virtual;
	GDExtensionBool is_abstract;
	GDExtensionBool is_exposed;
	GDExtensionClassSet set_func;
	GDExtensionClassGet get_func;
	GDExtensionClassGetPropertyList get_property_list_func;
	GDExtensionClassFreePropertyList free_property_list_func;
	GDExtensionClassPropertyCanRevert property_can_revert_func;
	GDExtensionClassPropertyGetRevert property_get_revert_func;
	GDExtensionClassValidateProperty validate_property_func;
	GDExtensionClassNotification2 notification_func;
	GDExtensionClassToString to_string_func;
	GDExtensionClassReference reference_func;
	GDExtensionClassUnreference unreference_func;
	GDExtensionClassCreateInstance create_instance_func;
	GDExtensionClassFreeInstance free_instance_func;
	GDExtensionClassRecreateInstance recreate_instance_func;
	GDExtensionClassGetVirtual get_virtual_func;
	GDExtensionClassGetVirtualCallData get_virtual_call_data_func;
	GDExtensionClassCallVirtualWithData call_virtual_with_data_func;
	GDExtensionClassGetRID get_rid_func;
	void *class_userdata;
} GDExtensionClassCreationInfo2; 
typedef struct {
	GDExtensionBool is_virtual;
	GDExtensionBool is_abstract;
	GDExtensionBool is_exposed;
	GDExtensionBool is_runtime;
	GDExtensionClassSet set_func;
	GDExtensionClassGet get_func;
	GDExtensionClassGetPropertyList get_property_list_func;
	GDExtensionClassFreePropertyList2 free_property_list_func;
	GDExtensionClassPropertyCanRevert property_can_revert_func;
	GDExtensionClassPropertyGetRevert property_get_revert_func;
	GDExtensionClassValidateProperty validate_property_func;
	GDExtensionClassNotification2 notification_func;
	GDExtensionClassToString to_string_func;
	GDExtensionClassReference reference_func;
	GDExtensionClassUnreference unreference_func;
	GDExtensionClassCreateInstance create_instance_func;
	GDExtensionClassFreeInstance free_instance_func;
	GDExtensionClassRecreateInstance recreate_instance_func;
	GDExtensionClassGetVirtual get_virtual_func;
	GDExtensionClassGetVirtualCallData get_virtual_call_data_func;
	GDExtensionClassCallVirtualWithData call_virtual_with_data_func;
	GDExtensionClassGetRID get_rid_func;
	void *class_userdata;
} GDExtensionClassCreationInfo3; 
typedef struct {
	GDExtensionBool is_virtual;
	GDExtensionBool is_abstract;
	GDExtensionBool is_exposed;
	GDExtensionBool is_runtime;
	GDExtensionConstStringPtr icon_path;
	GDExtensionClassSet set_func;
	GDExtensionClassGet get_func;
	GDExtensionClassGetPropertyList get_property_list_func;
	GDExtensionClassFreePropertyList2 free_property_list_func;
	GDExtensionClassPropertyCanRevert property_can_revert_func;
	GDExtensionClassPropertyGetRevert property_get_revert_func;
	GDExtensionClassValidateProperty validate_property_func;
	GDExtensionClassNotification2 notification_func;
	GDExtensionClassToString to_string_func;
	GDExtensionClassReference reference_func;
	GDExtensionClassUnreference unreference_func;
	GDExtensionClassCreateInstance2 create_instance_func;
	GDExtensionClassFreeInstance free_instance_func;
	GDExtensionClassRecreateInstance recreate_instance_func;
	GDExtensionClassGetVirtual2 get_virtual_func;
	GDExtensionClassGetVirtualCallData2 get_virtual_call_data_func;
	GDExtensionClassCallVirtualWithData call_virtual_with_data_func;
	void *class_userdata;
} GDExtensionClassCreationInfo4;
typedef GDExtensionClassCreationInfo4 GDExtensionClassCreationInfo5;
typedef void *GDExtensionClassLibraryPtr;
typedef void (*GDExtensionEditorGetClassesUsedCallback)(GDExtensionTypePtr p_packed_string_array);
typedef enum {
	GDEXTENSION_METHOD_FLAG_NORMAL = 1,
	GDEXTENSION_METHOD_FLAG_EDITOR = 2,
	GDEXTENSION_METHOD_FLAG_CONST = 4,
	GDEXTENSION_METHOD_FLAG_VIRTUAL = 8,
	GDEXTENSION_METHOD_FLAG_VARARG = 16,
	GDEXTENSION_METHOD_FLAG_STATIC = 32,
	GDEXTENSION_METHOD_FLAG_VIRTUAL_REQUIRED = 128,
	GDEXTENSION_METHOD_FLAGS_DEFAULT = 1,
} GDExtensionClassMethodFlags;
typedef enum {
	GDEXTENSION_METHOD_ARGUMENT_METADATA_NONE = 0,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8 = 1,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16 = 2,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32 = 3,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64 = 4,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8 = 5,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16 = 6,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32 = 7,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64 = 8,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT = 9,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE = 10,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_CHAR16 = 11,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_CHAR32 = 12,
	GDEXTENSION_METHOD_ARGUMENT_METADATA_OBJECT_IS_REQUIRED = 13,
} GDExtensionClassMethodArgumentMetadata;
typedef void (*GDExtensionClassMethodCall)(void *method_userdata, GDExtensionClassInstancePtr p_instance, GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error);
typedef void (*GDExtensionClassMethodValidatedCall)(void *method_userdata, GDExtensionClassInstancePtr p_instance, GDExtensionConstVariantPtr *p_args, GDExtensionVariantPtr r_return);
typedef void (*GDExtensionClassMethodPtrCall)(void *method_userdata, GDExtensionClassInstancePtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret);
typedef struct {
	GDExtensionStringNamePtr name;
	void *method_userdata;
	GDExtensionClassMethodCall call_func;
	GDExtensionClassMethodPtrCall ptrcall_func;
	uint32_t method_flags;
	GDExtensionBool has_return_value;
	GDExtensionPropertyInfo *return_value_info;
	GDExtensionClassMethodArgumentMetadata return_value_metadata;
	uint32_t argument_count;
	GDExtensionPropertyInfo *arguments_info;
	GDExtensionClassMethodArgumentMetadata *arguments_metadata;
	uint32_t default_argument_count;
	GDExtensionVariantPtr *default_arguments;
} GDExtensionClassMethodInfo;
typedef struct {
	GDExtensionStringNamePtr name;
	uint32_t method_flags;
	GDExtensionPropertyInfo return_value;
	GDExtensionClassMethodArgumentMetadata return_value_metadata;
	uint32_t argument_count;
	GDExtensionPropertyInfo *arguments;
	GDExtensionClassMethodArgumentMetadata *arguments_metadata;
} GDExtensionClassVirtualMethodInfo;
typedef void (*GDExtensionCallableCustomCall)(void *callable_userdata, GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error);
typedef GDExtensionBool (*GDExtensionCallableCustomIsValid)(void *callable_userdata);
typedef void (*GDExtensionCallableCustomFree)(void *callable_userdata);
typedef uint32_t (*GDExtensionCallableCustomHash)(void *callable_userdata);
typedef GDExtensionBool (*GDExtensionCallableCustomEqual)(void *callable_userdata_a, void *callable_userdata_b);
typedef GDExtensionBool (*GDExtensionCallableCustomLessThan)(void *callable_userdata_a, void *callable_userdata_b);
typedef void (*GDExtensionCallableCustomToString)(void *callable_userdata, GDExtensionBool *r_is_valid, GDExtensionStringPtr r_out);
typedef GDExtensionInt (*GDExtensionCallableCustomGetArgumentCount)(void *callable_userdata, GDExtensionBool *r_is_valid);
typedef struct {
	void *callable_userdata;
	void *token;
	GDObjectInstanceID object_id;
	GDExtensionCallableCustomCall call_func;
	GDExtensionCallableCustomIsValid is_valid_func;
	GDExtensionCallableCustomFree free_func;
	GDExtensionCallableCustomHash hash_func;
	GDExtensionCallableCustomEqual equal_func;
	GDExtensionCallableCustomLessThan less_than_func;
	GDExtensionCallableCustomToString to_string_func;
} GDExtensionCallableCustomInfo; 
typedef struct {
	void *callable_userdata;
	void *token;
	GDObjectInstanceID object_id;
	GDExtensionCallableCustomCall call_func;
	GDExtensionCallableCustomIsValid is_valid_func;
	GDExtensionCallableCustomFree free_func;
	GDExtensionCallableCustomHash hash_func;
	GDExtensionCallableCustomEqual equal_func;
	GDExtensionCallableCustomLessThan less_than_func;
	GDExtensionCallableCustomToString to_string_func;
	GDExtensionCallableCustomGetArgumentCount get_argument_count_func;
} GDExtensionCallableCustomInfo2;
typedef void *GDExtensionScriptInstanceDataPtr;
typedef GDExtensionBool (*GDExtensionScriptInstanceSet)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value);
typedef GDExtensionBool (*GDExtensionScriptInstanceGet)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret);
typedef GDExtensionPropertyInfo *(*GDExtensionScriptInstanceGetPropertyList)(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count);
typedef void (*GDExtensionScriptInstanceFreePropertyList)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionPropertyInfo *p_list); 
typedef void (*GDExtensionScriptInstanceFreePropertyList2)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionPropertyInfo *p_list, uint32_t p_count);
typedef GDExtensionBool (*GDExtensionScriptInstanceGetClassCategory)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionPropertyInfo *p_class_category);
typedef GDExtensionVariantType (*GDExtensionScriptInstanceGetPropertyType)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionBool *r_is_valid);
typedef GDExtensionBool (*GDExtensionScriptInstanceValidateProperty)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionPropertyInfo *p_property);
typedef GDExtensionBool (*GDExtensionScriptInstancePropertyCanRevert)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name);
typedef GDExtensionBool (*GDExtensionScriptInstancePropertyGetRevert)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret);
typedef GDExtensionObjectPtr (*GDExtensionScriptInstanceGetOwner)(GDExtensionScriptInstanceDataPtr p_instance);
typedef void (*GDExtensionScriptInstancePropertyStateAdd)(GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value, void *p_userdata);
typedef void (*GDExtensionScriptInstanceGetPropertyState)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionScriptInstancePropertyStateAdd p_add_func, void *p_userdata);
typedef GDExtensionMethodInfo *(*GDExtensionScriptInstanceGetMethodList)(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count);
typedef void (*GDExtensionScriptInstanceFreeMethodList)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionMethodInfo *p_list); 
typedef void (*GDExtensionScriptInstanceFreeMethodList2)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionMethodInfo *p_list, uint32_t p_count);
typedef GDExtensionBool (*GDExtensionScriptInstanceHasMethod)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name);
typedef GDExtensionInt (*GDExtensionScriptInstanceGetMethodArgumentCount)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionBool *r_is_valid);
typedef void (*GDExtensionScriptInstanceCall)(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error);
typedef void (*GDExtensionScriptInstanceNotification)(GDExtensionScriptInstanceDataPtr p_instance, int32_t p_what); 
typedef void (*GDExtensionScriptInstanceNotification2)(GDExtensionScriptInstanceDataPtr p_instance, int32_t p_what, GDExtensionBool p_reversed);
typedef void (*GDExtensionScriptInstanceToString)(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionBool *r_is_valid, GDExtensionStringPtr r_out);
typedef void (*GDExtensionScriptInstanceRefCountIncremented)(GDExtensionScriptInstanceDataPtr p_instance);
typedef GDExtensionBool (*GDExtensionScriptInstanceRefCountDecremented)(GDExtensionScriptInstanceDataPtr p_instance);
typedef GDExtensionObjectPtr (*GDExtensionScriptInstanceGetScript)(GDExtensionScriptInstanceDataPtr p_instance);
typedef GDExtensionBool (*GDExtensionScriptInstanceIsPlaceholder)(GDExtensionScriptInstanceDataPtr p_instance);
typedef void *GDExtensionScriptLanguagePtr;
typedef GDExtensionScriptLanguagePtr (*GDExtensionScriptInstanceGetLanguage)(GDExtensionScriptInstanceDataPtr p_instance);
typedef void (*GDExtensionScriptInstanceFree)(GDExtensionScriptInstanceDataPtr p_instance);
typedef void *GDExtensionScriptInstancePtr;
typedef struct {
	GDExtensionScriptInstanceSet set_func;
	GDExtensionScriptInstanceGet get_func;
	GDExtensionScriptInstanceGetPropertyList get_property_list_func;
	GDExtensionScriptInstanceFreePropertyList free_property_list_func;
	GDExtensionScriptInstancePropertyCanRevert property_can_revert_func;
	GDExtensionScriptInstancePropertyGetRevert property_get_revert_func;
	GDExtensionScriptInstanceGetOwner get_owner_func;
	GDExtensionScriptInstanceGetPropertyState get_property_state_func;
	GDExtensionScriptInstanceGetMethodList get_method_list_func;
	GDExtensionScriptInstanceFreeMethodList free_method_list_func;
	GDExtensionScriptInstanceGetPropertyType get_property_type_func;
	GDExtensionScriptInstanceHasMethod has_method_func;
	GDExtensionScriptInstanceCall call_func;
	GDExtensionScriptInstanceNotification notification_func;
	GDExtensionScriptInstanceToString to_string_func;
	GDExtensionScriptInstanceRefCountIncremented refcount_incremented_func;
	GDExtensionScriptInstanceRefCountDecremented refcount_decremented_func;
	GDExtensionScriptInstanceGetScript get_script_func;
	GDExtensionScriptInstanceIsPlaceholder is_placeholder_func;
	GDExtensionScriptInstanceSet set_fallback_func;
	GDExtensionScriptInstanceGet get_fallback_func;
	GDExtensionScriptInstanceGetLanguage get_language_func;
	GDExtensionScriptInstanceFree free_func;
} GDExtensionScriptInstanceInfo; 
typedef struct {
	GDExtensionScriptInstanceSet set_func;
	GDExtensionScriptInstanceGet get_func;
	GDExtensionScriptInstanceGetPropertyList get_property_list_func;
	GDExtensionScriptInstanceFreePropertyList free_property_list_func;
	GDExtensionScriptInstanceGetClassCategory get_class_category_func;
	GDExtensionScriptInstancePropertyCanRevert property_can_revert_func;
	GDExtensionScriptInstancePropertyGetRevert property_get_revert_func;
	GDExtensionScriptInstanceGetOwner get_owner_func;
	GDExtensionScriptInstanceGetPropertyState get_property_state_func;
	GDExtensionScriptInstanceGetMethodList get_method_list_func;
	GDExtensionScriptInstanceFreeMethodList free_method_list_func;
	GDExtensionScriptInstanceGetPropertyType get_property_type_func;
	GDExtensionScriptInstanceValidateProperty validate_property_func;
	GDExtensionScriptInstanceHasMethod has_method_func;
	GDExtensionScriptInstanceCall call_func;
	GDExtensionScriptInstanceNotification2 notification_func;
	GDExtensionScriptInstanceToString to_string_func;
	GDExtensionScriptInstanceRefCountIncremented refcount_incremented_func;
	GDExtensionScriptInstanceRefCountDecremented refcount_decremented_func;
	GDExtensionScriptInstanceGetScript get_script_func;
	GDExtensionScriptInstanceIsPlaceholder is_placeholder_func;
	GDExtensionScriptInstanceSet set_fallback_func;
	GDExtensionScriptInstanceGet get_fallback_func;
	GDExtensionScriptInstanceGetLanguage get_language_func;
	GDExtensionScriptInstanceFree free_func;
} GDExtensionScriptInstanceInfo2; 
typedef struct {
	GDExtensionScriptInstanceSet set_func;
	GDExtensionScriptInstanceGet get_func;
	GDExtensionScriptInstanceGetPropertyList get_property_list_func;
	GDExtensionScriptInstanceFreePropertyList2 free_property_list_func;
	GDExtensionScriptInstanceGetClassCategory get_class_category_func;
	GDExtensionScriptInstancePropertyCanRevert property_can_revert_func;
	GDExtensionScriptInstancePropertyGetRevert property_get_revert_func;
	GDExtensionScriptInstanceGetOwner get_owner_func;
	GDExtensionScriptInstanceGetPropertyState get_property_state_func;
	GDExtensionScriptInstanceGetMethodList get_method_list_func;
	GDExtensionScriptInstanceFreeMethodList2 free_method_list_func;
	GDExtensionScriptInstanceGetPropertyType get_property_type_func;
	GDExtensionScriptInstanceValidateProperty validate_property_func;
	GDExtensionScriptInstanceHasMethod has_method_func;
	GDExtensionScriptInstanceGetMethodArgumentCount get_method_argument_count_func;
	GDExtensionScriptInstanceCall call_func;
	GDExtensionScriptInstanceNotification2 notification_func;
	GDExtensionScriptInstanceToString to_string_func;
	GDExtensionScriptInstanceRefCountIncremented refcount_incremented_func;
	GDExtensionScriptInstanceRefCountDecremented refcount_decremented_func;
	GDExtensionScriptInstanceGetScript get_script_func;
	GDExtensionScriptInstanceIsPlaceholder is_placeholder_func;
	GDExtensionScriptInstanceSet set_fallback_func;
	GDExtensionScriptInstanceGet get_fallback_func;
	GDExtensionScriptInstanceGetLanguage get_language_func;
	GDExtensionScriptInstanceFree free_func;
} GDExtensionScriptInstanceInfo3;
typedef void (*GDExtensionWorkerThreadPoolGroupTask)(void *, uint32_t);
typedef void (*GDExtensionWorkerThreadPoolTask)(void *);
typedef enum {
	GDEXTENSION_INITIALIZATION_CORE = 0,
	GDEXTENSION_INITIALIZATION_SERVERS = 1,
	GDEXTENSION_INITIALIZATION_SCENE = 2,
	GDEXTENSION_INITIALIZATION_EDITOR = 3,
	GDEXTENSION_MAX_INITIALIZATION_LEVEL = 4,
} GDExtensionInitializationLevel;
typedef void (*GDExtensionInitializeCallback)(void *p_userdata, GDExtensionInitializationLevel p_level);
typedef void (*GDExtensionDeinitializeCallback)(void *p_userdata, GDExtensionInitializationLevel p_level);
typedef struct {
	GDExtensionInitializationLevel minimum_initialization_level;
	void *userdata;
	GDExtensionInitializeCallback initialize;
	GDExtensionDeinitializeCallback deinitialize;
} GDExtensionInitialization;
typedef void (*GDExtensionInterfaceFunctionPtr)();
typedef GDExtensionInterfaceFunctionPtr (*GDExtensionInterfaceGetProcAddress)(char *p_function_name);
typedef GDExtensionBool (*GDExtensionInitializationFunction)(GDExtensionInterfaceGetProcAddress p_get_proc_address, GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization);
typedef struct {
	uint32_t major;
	uint32_t minor;
	uint32_t patch;
	char *string;
} GDExtensionGodotVersion;
typedef struct {
	uint32_t major;
	uint32_t minor;
	uint32_t patch;
	uint32_t hex;
	char *status;
	char *build;
	char *hash;
	uint64_t timestamp;
	char *string;
} GDExtensionGodotVersion2;
typedef void (*GDExtensionMainLoopStartupCallback)();
typedef void (*GDExtensionMainLoopShutdownCallback)();
typedef void (*GDExtensionMainLoopFrameCallback)();
typedef struct {
	GDExtensionMainLoopStartupCallback startup_func;
	GDExtensionMainLoopShutdownCallback shutdown_func;
	GDExtensionMainLoopFrameCallback frame_func;
} GDExtensionMainLoopCallbacks;
typedef void (*GDExtensionInterfaceGetGodotVersion)(GDExtensionGodotVersion *r_godot_version);
typedef void (*GDExtensionInterfaceGetGodotVersion2)(GDExtensionGodotVersion2 *r_godot_version);
typedef void *(*GDExtensionInterfaceMemAlloc)(size_t p_bytes);
typedef void *(*GDExtensionInterfaceMemRealloc)(void *p_ptr, size_t p_bytes);
typedef void (*GDExtensionInterfaceMemFree)(void *p_ptr);
typedef void *(*GDExtensionInterfaceMemAlloc2)(size_t p_bytes, GDExtensionBool p_pad_align);
typedef void *(*GDExtensionInterfaceMemRealloc2)(void *p_ptr, size_t p_bytes, GDExtensionBool p_pad_align);
typedef void (*GDExtensionInterfaceMemFree2)(void *p_ptr, GDExtensionBool p_pad_align);
typedef void (*GDExtensionInterfacePrintError)(char *p_description, char *p_function, char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
typedef void (*GDExtensionInterfacePrintErrorWithMessage)(char *p_description, char *p_message, char *p_function, char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
typedef void (*GDExtensionInterfacePrintWarning)(char *p_description, char *p_function, char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
typedef void (*GDExtensionInterfacePrintWarningWithMessage)(char *p_description, char *p_message, char *p_function, char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
typedef void (*GDExtensionInterfacePrintScriptError)(char *p_description, char *p_function, char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
typedef void (*GDExtensionInterfacePrintScriptErrorWithMessage)(char *p_description, char *p_message, char *p_function, char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
typedef uint64_t (*GDExtensionInterfaceGetNativeStructSize)(GDExtensionConstStringNamePtr p_name);
typedef void (*GDExtensionInterfaceVariantNewCopy)(GDExtensionUninitializedVariantPtr r_dest, GDExtensionConstVariantPtr p_src);
typedef void (*GDExtensionInterfaceVariantNewNil)(GDExtensionUninitializedVariantPtr r_dest);
typedef void (*GDExtensionInterfaceVariantDestroy)(GDExtensionVariantPtr p_self);
typedef void (*GDExtensionInterfaceVariantCall)(GDExtensionVariantPtr p_self, GDExtensionConstStringNamePtr p_method, GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionUninitializedVariantPtr r_return, GDExtensionCallError *r_error);
typedef void (*GDExtensionInterfaceVariantCallStatic)(GDExtensionVariantType p_type, GDExtensionConstStringNamePtr p_method, GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionUninitializedVariantPtr r_return, GDExtensionCallError *r_error);
typedef void (*GDExtensionInterfaceVariantEvaluate)(GDExtensionVariantOperator p_op, GDExtensionConstVariantPtr p_a, GDExtensionConstVariantPtr p_b, GDExtensionUninitializedVariantPtr r_return, GDExtensionBool *r_valid);
typedef void (*GDExtensionInterfaceVariantSet)(GDExtensionVariantPtr p_self, GDExtensionConstVariantPtr p_key, GDExtensionConstVariantPtr p_value, GDExtensionBool *r_valid);
typedef void (*GDExtensionInterfaceVariantSetNamed)(GDExtensionVariantPtr p_self, GDExtensionConstStringNamePtr p_key, GDExtensionConstVariantPtr p_value, GDExtensionBool *r_valid);
typedef void (*GDExtensionInterfaceVariantSetKeyed)(GDExtensionVariantPtr p_self, GDExtensionConstVariantPtr p_key, GDExtensionConstVariantPtr p_value, GDExtensionBool *r_valid);
typedef void (*GDExtensionInterfaceVariantSetIndexed)(GDExtensionVariantPtr p_self, GDExtensionInt p_index, GDExtensionConstVariantPtr p_value, GDExtensionBool *r_valid, GDExtensionBool *r_oob);
typedef void (*GDExtensionInterfaceVariantGet)(GDExtensionConstVariantPtr p_self, GDExtensionConstVariantPtr p_key, GDExtensionUninitializedVariantPtr r_ret, GDExtensionBool *r_valid);
typedef void (*GDExtensionInterfaceVariantGetNamed)(GDExtensionConstVariantPtr p_self, GDExtensionConstStringNamePtr p_key, GDExtensionUninitializedVariantPtr r_ret, GDExtensionBool *r_valid);
typedef void (*GDExtensionInterfaceVariantGetKeyed)(GDExtensionConstVariantPtr p_self, GDExtensionConstVariantPtr p_key, GDExtensionUninitializedVariantPtr r_ret, GDExtensionBool *r_valid);
typedef void (*GDExtensionInterfaceVariantGetIndexed)(GDExtensionConstVariantPtr p_self, GDExtensionInt p_index, GDExtensionUninitializedVariantPtr r_ret, GDExtensionBool *r_valid, GDExtensionBool *r_oob);
typedef GDExtensionBool (*GDExtensionInterfaceVariantIterInit)(GDExtensionConstVariantPtr p_self, GDExtensionUninitializedVariantPtr r_iter, GDExtensionBool *r_valid);
typedef GDExtensionBool (*GDExtensionInterfaceVariantIterNext)(GDExtensionConstVariantPtr p_self, GDExtensionVariantPtr r_iter, GDExtensionBool *r_valid);
typedef void (*GDExtensionInterfaceVariantIterGet)(GDExtensionConstVariantPtr p_self, GDExtensionVariantPtr r_iter, GDExtensionUninitializedVariantPtr r_ret, GDExtensionBool *r_valid);
typedef GDExtensionInt (*GDExtensionInterfaceVariantHash)(GDExtensionConstVariantPtr p_self);
typedef GDExtensionInt (*GDExtensionInterfaceVariantRecursiveHash)(GDExtensionConstVariantPtr p_self, GDExtensionInt p_recursion_count);
typedef GDExtensionBool (*GDExtensionInterfaceVariantHashCompare)(GDExtensionConstVariantPtr p_self, GDExtensionConstVariantPtr p_other);
typedef GDExtensionBool (*GDExtensionInterfaceVariantBooleanize)(GDExtensionConstVariantPtr p_self);
typedef void (*GDExtensionInterfaceVariantDuplicate)(GDExtensionConstVariantPtr p_self, GDExtensionVariantPtr r_ret, GDExtensionBool p_deep);
typedef void (*GDExtensionInterfaceVariantStringify)(GDExtensionConstVariantPtr p_self, GDExtensionStringPtr r_ret);
typedef GDExtensionVariantType (*GDExtensionInterfaceVariantGetType)(GDExtensionConstVariantPtr p_self);
typedef GDExtensionBool (*GDExtensionInterfaceVariantHasMethod)(GDExtensionConstVariantPtr p_self, GDExtensionConstStringNamePtr p_method);
typedef GDExtensionBool (*GDExtensionInterfaceVariantHasMember)(GDExtensionVariantType p_type, GDExtensionConstStringNamePtr p_member);
typedef GDExtensionBool (*GDExtensionInterfaceVariantHasKey)(GDExtensionConstVariantPtr p_self, GDExtensionConstVariantPtr p_key, GDExtensionBool *r_valid);
typedef GDObjectInstanceID (*GDExtensionInterfaceVariantGetObjectInstanceId)(GDExtensionConstVariantPtr p_self);
typedef void (*GDExtensionInterfaceVariantGetTypeName)(GDExtensionVariantType p_type, GDExtensionUninitializedStringPtr r_name);
typedef GDExtensionBool (*GDExtensionInterfaceVariantCanConvert)(GDExtensionVariantType p_from, GDExtensionVariantType p_to);
typedef GDExtensionBool (*GDExtensionInterfaceVariantCanConvertStrict)(GDExtensionVariantType p_from, GDExtensionVariantType p_to);
typedef GDExtensionVariantFromTypeConstructorFunc (*GDExtensionInterfaceGetVariantFromTypeConstructor)(GDExtensionVariantType p_type);
typedef GDExtensionTypeFromVariantConstructorFunc (*GDExtensionInterfaceGetVariantToTypeConstructor)(GDExtensionVariantType p_type);
typedef GDExtensionVariantGetInternalPtrFunc (*GDExtensionInterfaceGetVariantGetInternalPtrFunc)(GDExtensionVariantType p_type);
typedef GDExtensionPtrOperatorEvaluator (*GDExtensionInterfaceVariantGetPtrOperatorEvaluator)(GDExtensionVariantOperator p_operator, GDExtensionVariantType p_type_a, GDExtensionVariantType p_type_b);
typedef GDExtensionPtrBuiltInMethod (*GDExtensionInterfaceVariantGetPtrBuiltinMethod)(GDExtensionVariantType p_type, GDExtensionConstStringNamePtr p_method, GDExtensionInt p_hash);
typedef GDExtensionPtrConstructor (*GDExtensionInterfaceVariantGetPtrConstructor)(GDExtensionVariantType p_type, int32_t p_constructor);
typedef GDExtensionPtrDestructor (*GDExtensionInterfaceVariantGetPtrDestructor)(GDExtensionVariantType p_type);
typedef void (*GDExtensionInterfaceVariantConstruct)(GDExtensionVariantType p_type, GDExtensionUninitializedVariantPtr r_base, GDExtensionConstVariantPtr *p_args, int32_t p_argument_count, GDExtensionCallError *r_error);
typedef GDExtensionPtrSetter (*GDExtensionInterfaceVariantGetPtrSetter)(GDExtensionVariantType p_type, GDExtensionConstStringNamePtr p_member);
typedef GDExtensionPtrGetter (*GDExtensionInterfaceVariantGetPtrGetter)(GDExtensionVariantType p_type, GDExtensionConstStringNamePtr p_member);
typedef GDExtensionPtrIndexedSetter (*GDExtensionInterfaceVariantGetPtrIndexedSetter)(GDExtensionVariantType p_type);
typedef GDExtensionPtrIndexedGetter (*GDExtensionInterfaceVariantGetPtrIndexedGetter)(GDExtensionVariantType p_type);
typedef GDExtensionPtrKeyedSetter (*GDExtensionInterfaceVariantGetPtrKeyedSetter)(GDExtensionVariantType p_type);
typedef GDExtensionPtrKeyedGetter (*GDExtensionInterfaceVariantGetPtrKeyedGetter)(GDExtensionVariantType p_type);
typedef GDExtensionPtrKeyedChecker (*GDExtensionInterfaceVariantGetPtrKeyedChecker)(GDExtensionVariantType p_type);
typedef void (*GDExtensionInterfaceVariantGetConstantValue)(GDExtensionVariantType p_type, GDExtensionConstStringNamePtr p_constant, GDExtensionUninitializedVariantPtr r_ret);
typedef GDExtensionPtrUtilityFunction (*GDExtensionInterfaceVariantGetPtrUtilityFunction)(GDExtensionConstStringNamePtr p_function, GDExtensionInt p_hash);
typedef void (*GDExtensionInterfaceStringNewWithLatin1Chars)(GDExtensionUninitializedStringPtr r_dest, char *p_contents);
typedef void (*GDExtensionInterfaceStringNewWithUtf8Chars)(GDExtensionUninitializedStringPtr r_dest, char *p_contents);
typedef void (*GDExtensionInterfaceStringNewWithUtf16Chars)(GDExtensionUninitializedStringPtr r_dest, char16_t *p_contents);
typedef void (*GDExtensionInterfaceStringNewWithUtf32Chars)(GDExtensionUninitializedStringPtr r_dest, char32_t *p_contents);
typedef void (*GDExtensionInterfaceStringNewWithWideChars)(GDExtensionUninitializedStringPtr r_dest, wchar_t *p_contents);
typedef void (*GDExtensionInterfaceStringNewWithLatin1CharsAndLen)(GDExtensionUninitializedStringPtr r_dest, char *p_contents, GDExtensionInt p_size);
typedef void (*GDExtensionInterfaceStringNewWithUtf8CharsAndLen)(GDExtensionUninitializedStringPtr r_dest, char *p_contents, GDExtensionInt p_size);
typedef GDExtensionInt (*GDExtensionInterfaceStringNewWithUtf8CharsAndLen2)(GDExtensionUninitializedStringPtr r_dest, char *p_contents, GDExtensionInt p_size);
typedef void (*GDExtensionInterfaceStringNewWithUtf16CharsAndLen)(GDExtensionUninitializedStringPtr r_dest, char16_t *p_contents, GDExtensionInt p_char_count);
typedef GDExtensionInt (*GDExtensionInterfaceStringNewWithUtf16CharsAndLen2)(GDExtensionUninitializedStringPtr r_dest, char16_t *p_contents, GDExtensionInt p_char_count, GDExtensionBool p_default_little_endian);
typedef void (*GDExtensionInterfaceStringNewWithUtf32CharsAndLen)(GDExtensionUninitializedStringPtr r_dest, char32_t *p_contents, GDExtensionInt p_char_count);
typedef void (*GDExtensionInterfaceStringNewWithWideCharsAndLen)(GDExtensionUninitializedStringPtr r_dest, wchar_t *p_contents, GDExtensionInt p_char_count);
typedef GDExtensionInt (*GDExtensionInterfaceStringToLatin1Chars)(GDExtensionConstStringPtr p_self, char *r_text, GDExtensionInt p_max_write_length);
typedef GDExtensionInt (*GDExtensionInterfaceStringToUtf8Chars)(GDExtensionConstStringPtr p_self, char *r_text, GDExtensionInt p_max_write_length);
typedef GDExtensionInt (*GDExtensionInterfaceStringToUtf16Chars)(GDExtensionConstStringPtr p_self, char16_t *r_text, GDExtensionInt p_max_write_length);
typedef GDExtensionInt (*GDExtensionInterfaceStringToUtf32Chars)(GDExtensionConstStringPtr p_self, char32_t *r_text, GDExtensionInt p_max_write_length);
typedef GDExtensionInt (*GDExtensionInterfaceStringToWideChars)(GDExtensionConstStringPtr p_self, wchar_t *r_text, GDExtensionInt p_max_write_length);
typedef char32_t *(*GDExtensionInterfaceStringOperatorIndex)(GDExtensionStringPtr p_self, GDExtensionInt p_index);
typedef char32_t *(*GDExtensionInterfaceStringOperatorIndexConst)(GDExtensionConstStringPtr p_self, GDExtensionInt p_index);
typedef void (*GDExtensionInterfaceStringOperatorPlusEqString)(GDExtensionStringPtr p_self, GDExtensionConstStringPtr p_b);
typedef void (*GDExtensionInterfaceStringOperatorPlusEqChar)(GDExtensionStringPtr p_self, char32_t p_b);
typedef void (*GDExtensionInterfaceStringOperatorPlusEqCstr)(GDExtensionStringPtr p_self, char *p_b);
typedef void (*GDExtensionInterfaceStringOperatorPlusEqWcstr)(GDExtensionStringPtr p_self, wchar_t *p_b);
typedef void (*GDExtensionInterfaceStringOperatorPlusEqC32str)(GDExtensionStringPtr p_self, char32_t *p_b);
typedef GDExtensionInt (*GDExtensionInterfaceStringResize)(GDExtensionStringPtr p_self, GDExtensionInt p_resize);
typedef void (*GDExtensionInterfaceStringNameNewWithLatin1Chars)(GDExtensionUninitializedStringNamePtr r_dest, char *p_contents, GDExtensionBool p_is_static);
typedef void (*GDExtensionInterfaceStringNameNewWithUtf8Chars)(GDExtensionUninitializedStringNamePtr r_dest, char *p_contents);
typedef void (*GDExtensionInterfaceStringNameNewWithUtf8CharsAndLen)(GDExtensionUninitializedStringNamePtr r_dest, char *p_contents, GDExtensionInt p_size);
typedef GDExtensionInt (*GDExtensionInterfaceXmlParserOpenBuffer)(GDExtensionObjectPtr p_instance, uint8_t *p_buffer, size_t p_size);
typedef void (*GDExtensionInterfaceFileAccessStoreBuffer)(GDExtensionObjectPtr p_instance, uint8_t *p_src, uint64_t p_length);
typedef uint64_t (*GDExtensionInterfaceFileAccessGetBuffer)(GDExtensionConstObjectPtr p_instance, uint8_t *p_dst, uint64_t p_length);
typedef uint8_t *(*GDExtensionInterfaceImagePtrw)(GDExtensionObjectPtr p_instance);
typedef uint8_t *(*GDExtensionInterfaceImagePtr)(GDExtensionObjectPtr p_instance);
typedef int64_t (*GDExtensionInterfaceWorkerThreadPoolAddNativeGroupTask)(GDExtensionObjectPtr p_instance, GDExtensionWorkerThreadPoolGroupTask p_func, void *p_userdata, int32_t p_elements, int32_t p_tasks, GDExtensionBool p_high_priority, GDExtensionConstStringPtr p_description);
typedef int64_t (*GDExtensionInterfaceWorkerThreadPoolAddNativeTask)(GDExtensionObjectPtr p_instance, GDExtensionWorkerThreadPoolTask p_func, void *p_userdata, GDExtensionBool p_high_priority, GDExtensionConstStringPtr p_description);
typedef uint8_t *(*GDExtensionInterfacePackedByteArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef uint8_t *(*GDExtensionInterfacePackedByteArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef float *(*GDExtensionInterfacePackedFloat32ArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef float *(*GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef double *(*GDExtensionInterfacePackedFloat64ArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef double *(*GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef int32_t *(*GDExtensionInterfacePackedInt32ArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef int32_t *(*GDExtensionInterfacePackedInt32ArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef int64_t *(*GDExtensionInterfacePackedInt64ArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef int64_t *(*GDExtensionInterfacePackedInt64ArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionStringPtr (*GDExtensionInterfacePackedStringArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionStringPtr (*GDExtensionInterfacePackedStringArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionTypePtr (*GDExtensionInterfacePackedVector2ArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionTypePtr (*GDExtensionInterfacePackedVector2ArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionTypePtr (*GDExtensionInterfacePackedVector3ArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionTypePtr (*GDExtensionInterfacePackedVector3ArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionTypePtr (*GDExtensionInterfacePackedVector4ArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionTypePtr (*GDExtensionInterfacePackedVector4ArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionTypePtr (*GDExtensionInterfacePackedColorArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionTypePtr (*GDExtensionInterfacePackedColorArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionVariantPtr (*GDExtensionInterfaceArrayOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionInt p_index);
typedef GDExtensionVariantPtr (*GDExtensionInterfaceArrayOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionInt p_index);
typedef void (*GDExtensionInterfaceArrayRef)(GDExtensionTypePtr p_self, GDExtensionConstTypePtr p_from);
typedef void (*GDExtensionInterfaceArraySetTyped)(GDExtensionTypePtr p_self, GDExtensionVariantType p_type, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstVariantPtr p_script);
typedef GDExtensionVariantPtr (*GDExtensionInterfaceDictionaryOperatorIndex)(GDExtensionTypePtr p_self, GDExtensionConstVariantPtr p_key);
typedef GDExtensionVariantPtr (*GDExtensionInterfaceDictionaryOperatorIndexConst)(GDExtensionConstTypePtr p_self, GDExtensionConstVariantPtr p_key);
typedef void (*GDExtensionInterfaceDictionarySetTyped)(GDExtensionTypePtr p_self, GDExtensionVariantType p_key_type, GDExtensionConstStringNamePtr p_key_class_name, GDExtensionConstVariantPtr p_key_script, GDExtensionVariantType p_value_type, GDExtensionConstStringNamePtr p_value_class_name, GDExtensionConstVariantPtr p_value_script);
typedef void (*GDExtensionInterfaceObjectMethodBindCall)(GDExtensionMethodBindPtr p_method_bind, GDExtensionObjectPtr p_instance, GDExtensionConstVariantPtr *p_args, GDExtensionInt p_arg_count, GDExtensionUninitializedVariantPtr r_ret, GDExtensionCallError *r_error);
typedef void (*GDExtensionInterfaceObjectMethodBindPtrcall)(GDExtensionMethodBindPtr p_method_bind, GDExtensionObjectPtr p_instance, GDExtensionConstTypePtr *p_args, GDExtensionTypePtr r_ret);
typedef void (*GDExtensionInterfaceObjectDestroy)(GDExtensionObjectPtr p_o);
typedef GDExtensionObjectPtr (*GDExtensionInterfaceGlobalGetSingleton)(GDExtensionConstStringNamePtr p_name);
typedef void *(*GDExtensionInterfaceObjectGetInstanceBinding)(GDExtensionObjectPtr p_o, void *p_token, GDExtensionInstanceBindingCallbacks *p_callbacks);
typedef void (*GDExtensionInterfaceObjectSetInstanceBinding)(GDExtensionObjectPtr p_o, void *p_token, void *p_binding, GDExtensionInstanceBindingCallbacks *p_callbacks);
typedef void (*GDExtensionInterfaceObjectFreeInstanceBinding)(GDExtensionObjectPtr p_o, void *p_token);
typedef void (*GDExtensionInterfaceObjectSetInstance)(GDExtensionObjectPtr p_o, GDExtensionConstStringNamePtr p_classname, GDExtensionClassInstancePtr p_instance);
typedef GDExtensionBool (*GDExtensionInterfaceObjectGetClassName)(GDExtensionConstObjectPtr p_object, GDExtensionClassLibraryPtr p_library, GDExtensionUninitializedStringNamePtr r_class_name);
typedef GDExtensionObjectPtr (*GDExtensionInterfaceObjectCastTo)(GDExtensionConstObjectPtr p_object, void *p_class_tag);
typedef GDExtensionObjectPtr (*GDExtensionInterfaceObjectGetInstanceFromId)(GDObjectInstanceID p_instance_id);
typedef GDObjectInstanceID (*GDExtensionInterfaceObjectGetInstanceId)(GDExtensionConstObjectPtr p_object);
typedef GDExtensionBool (*GDExtensionInterfaceObjectHasScriptMethod)(GDExtensionConstObjectPtr p_object, GDExtensionConstStringNamePtr p_method);
typedef void (*GDExtensionInterfaceObjectCallScriptMethod)(GDExtensionObjectPtr p_object, GDExtensionConstStringNamePtr p_method, GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionUninitializedVariantPtr r_return, GDExtensionCallError *r_error);
typedef GDExtensionObjectPtr (*GDExtensionInterfaceRefGetObject)(GDExtensionConstRefPtr p_ref);
typedef void (*GDExtensionInterfaceRefSetObject)(GDExtensionRefPtr p_ref, GDExtensionObjectPtr p_object);
typedef GDExtensionScriptInstancePtr (*GDExtensionInterfaceScriptInstanceCreate)(GDExtensionScriptInstanceInfo *p_info, GDExtensionScriptInstanceDataPtr p_instance_data);
typedef GDExtensionScriptInstancePtr (*GDExtensionInterfaceScriptInstanceCreate2)(GDExtensionScriptInstanceInfo2 *p_info, GDExtensionScriptInstanceDataPtr p_instance_data);
typedef GDExtensionScriptInstancePtr (*GDExtensionInterfaceScriptInstanceCreate3)(GDExtensionScriptInstanceInfo3 *p_info, GDExtensionScriptInstanceDataPtr p_instance_data);
typedef GDExtensionScriptInstancePtr (*GDExtensionInterfacePlaceHolderScriptInstanceCreate)(GDExtensionObjectPtr p_language, GDExtensionObjectPtr p_script, GDExtensionObjectPtr p_owner);
typedef void (*GDExtensionInterfacePlaceHolderScriptInstanceUpdate)(GDExtensionScriptInstancePtr p_placeholder, GDExtensionConstTypePtr p_properties, GDExtensionConstTypePtr p_values);
typedef GDExtensionScriptInstanceDataPtr (*GDExtensionInterfaceObjectGetScriptInstance)(GDExtensionConstObjectPtr p_object, GDExtensionObjectPtr p_language);
typedef void (*GDExtensionInterfaceObjectSetScriptInstance)(GDExtensionObjectPtr p_object, GDExtensionScriptInstanceDataPtr p_script_instance);
typedef void (*GDExtensionInterfaceCallableCustomCreate)(GDExtensionUninitializedTypePtr r_callable, GDExtensionCallableCustomInfo *p_callable_custom_info);
typedef void (*GDExtensionInterfaceCallableCustomCreate2)(GDExtensionUninitializedTypePtr r_callable, GDExtensionCallableCustomInfo2 *p_callable_custom_info);
typedef void *(*GDExtensionInterfaceCallableCustomGetUserData)(GDExtensionConstTypePtr p_callable, void *p_token);
typedef GDExtensionObjectPtr (*GDExtensionInterfaceClassdbConstructObject)(GDExtensionConstStringNamePtr p_classname);
typedef GDExtensionObjectPtr (*GDExtensionInterfaceClassdbConstructObject2)(GDExtensionConstStringNamePtr p_classname);
typedef GDExtensionMethodBindPtr (*GDExtensionInterfaceClassdbGetMethodBind)(GDExtensionConstStringNamePtr p_classname, GDExtensionConstStringNamePtr p_methodname, GDExtensionInt p_hash);
typedef void *(*GDExtensionInterfaceClassdbGetClassTag)(GDExtensionConstStringNamePtr p_classname);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClass)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringNamePtr p_parent_class_name, GDExtensionClassCreationInfo *p_extension_funcs);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClass2)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringNamePtr p_parent_class_name, GDExtensionClassCreationInfo2 *p_extension_funcs);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClass3)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringNamePtr p_parent_class_name, GDExtensionClassCreationInfo3 *p_extension_funcs);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClass4)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringNamePtr p_parent_class_name, GDExtensionClassCreationInfo4 *p_extension_funcs);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClass5)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringNamePtr p_parent_class_name, GDExtensionClassCreationInfo5 *p_extension_funcs);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassMethod)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionClassMethodInfo *p_method_info);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassVirtualMethod)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionClassVirtualMethodInfo *p_method_info);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringNamePtr p_enum_name, GDExtensionConstStringNamePtr p_constant_name, GDExtensionInt p_constant_value, GDExtensionBool p_is_bitfield);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassProperty)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionPropertyInfo *p_info, GDExtensionConstStringNamePtr p_setter, GDExtensionConstStringNamePtr p_getter);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassPropertyIndexed)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionPropertyInfo *p_info, GDExtensionConstStringNamePtr p_setter, GDExtensionConstStringNamePtr p_getter, GDExtensionInt p_index);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringPtr p_group_name, GDExtensionConstStringPtr p_prefix);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringPtr p_subgroup_name, GDExtensionConstStringPtr p_prefix);
typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassSignal)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, GDExtensionConstStringNamePtr p_signal_name, GDExtensionPropertyInfo *p_argument_info, GDExtensionInt p_argument_count);
typedef void (*GDExtensionInterfaceClassdbUnregisterExtensionClass)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name);
typedef void (*GDExtensionInterfaceGetLibraryPath)(GDExtensionClassLibraryPtr p_library, GDExtensionUninitializedStringPtr r_path);
typedef void (*GDExtensionInterfaceEditorAddPlugin)(GDExtensionConstStringNamePtr p_class_name);
typedef void (*GDExtensionInterfaceEditorRemovePlugin)(GDExtensionConstStringNamePtr p_class_name);
typedef void (*GDExtensionsInterfaceEditorHelpLoadXmlFromUtf8Chars)(char *p_data);
typedef void (*GDExtensionsInterfaceEditorHelpLoadXmlFromUtf8CharsAndLen)(char *p_data, GDExtensionInt p_size);
typedef void (*GDExtensionInterfaceEditorRegisterGetClassesUsedCallback)(GDExtensionClassLibraryPtr p_library, GDExtensionEditorGetClassesUsedCallback p_callback);
typedef void (*GDExtensionInterfaceRegisterMainLoopCallbacks)(GDExtensionClassLibraryPtr p_library, GDExtensionMainLoopCallbacks *p_callbacks);