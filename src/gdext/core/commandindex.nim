{.warning[Deprecated]:off.}
import gdext/dirty/gdextensioninterface

type Environment* = ref object
  getProcAddress*: InterfaceGetProcAddress
  library*: ClassLibraryPtr
  version*: GodotVersion

var environment*: Environment

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
