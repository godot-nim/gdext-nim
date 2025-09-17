
type
  char32T* = uint32T
  char16T* = uint16T
  VariantType* {.size: EnumSize.default.} = enum
    VariantTypeNil, VariantTypeBool, VariantTypeInt, VariantTypeFloat,
    VariantTypeString, VariantTypeVector2, VariantTypeVector2I,
    VariantTypeRect2, VariantTypeRect2I, VariantTypeVector3,
    VariantTypeVector3I, VariantTypeTransform2D, VariantTypeVector4,
    VariantTypeVector4I, VariantTypePlane, VariantTypeQuaternion,
    VariantTypeAabb, VariantTypeBasis, VariantTypeTransform3D,
    VariantTypeProjection, VariantTypeColor, VariantTypeStringName,
    VariantTypeNodePath, VariantTypeRid, VariantTypeObject, VariantTypeCallable,
    VariantTypeSignal, VariantTypeDictionary, VariantTypeArray,
    VariantTypePackedByteArray, VariantTypePackedInt32Array,
    VariantTypePackedInt64Array, VariantTypePackedFloat32Array,
    VariantTypePackedFloat64Array, VariantTypePackedStringArray,
    VariantTypePackedVector2Array, VariantTypePackedVector3Array,
    VariantTypePackedColorArray, VariantTypePackedVector4Array
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
  Int* = int64T
  Bool* = bool
  GdObjectInstanceId* = uint64T
  RefPtr* = pointer
  ConstRefPtr* = pointer
  CallErrorType* = enum
    CallOk, CallErrorInvalidMethod, CallErrorInvalidArgument,
    CallErrorTooManyArguments, CallErrorTooFewArguments,
    CallErrorInstanceIsNull, CallErrorMethodNotConst
  CallError* {.byref.} = object
    error*: CallErrorType
    argument*: int32T
    expected*: int32T
  VariantFromTypeConstructorFunc* = proc (a1: UninitializedVariantPtr;
      a2: TypePtr) {.gdcall, raises: [].}
  TypeFromVariantConstructorFunc* = proc (a1: UninitializedTypePtr;
      a2: VariantPtr) {.gdcall, raises: [].}
  VariantGetInternalPtrFunc* = proc (a1: VariantPtr): pointer {.gdcall,
      raises: [].}
  PtrOperatorEvaluator* = proc (pLeft: ConstTypePtr; pRight: ConstTypePtr;
                                rResult: TypePtr) {.gdcall, raises: [].}
  PtrBuiltInMethod* = proc (pBase: TypePtr; pArgs: ptr ConstTypePtr;
                            rReturn: TypePtr; pArgumentCount: cint) {.gdcall,
      raises: [].}
  PtrConstructor* = proc (pBase: UninitializedTypePtr; pArgs: ptr ConstTypePtr) {.
      gdcall, raises: [].}
  PtrDestructor* = proc (pBase: TypePtr) {.gdcall, raises: [].}
  PtrSetter* = proc (pBase: TypePtr; pValue: ConstTypePtr) {.gdcall, raises: [].}
  PtrGetter* = proc (pBase: ConstTypePtr; rValue: TypePtr) {.gdcall, raises: [].}
  PtrIndexedSetter* = proc (pBase: TypePtr; pIndex: Int; pValue: ConstTypePtr) {.
      gdcall, raises: [].}
  PtrIndexedGetter* = proc (pBase: ConstTypePtr; pIndex: Int; rValue: TypePtr) {.
      gdcall, raises: [].}
  PtrKeyedSetter* = proc (pBase: TypePtr; pKey: ConstTypePtr;
                          pValue: ConstTypePtr) {.gdcall, raises: [].}
  PtrKeyedGetter* = proc (pBase: ConstTypePtr; pKey: ConstTypePtr;
                          rValue: TypePtr) {.gdcall, raises: [].}
  PtrKeyedChecker* = proc (pBase: ConstVariantPtr; pKey: ConstVariantPtr): uint32T {.
      gdcall, raises: [].}
  PtrUtilityFunction* = proc (rReturn: TypePtr; pArgs: ptr ConstTypePtr;
                              pArgumentCount: cint) {.gdcall, raises: [].}
  ClassConstructor* = proc (): ObjectPtr {.gdcall, raises: [].}
  InstanceBindingCreateCallback* = proc (pToken: pointer; pInstance: pointer): pointer {.
      gdcall, raises: [].}
  InstanceBindingFreeCallback* = proc (pToken: pointer; pInstance: pointer;
                                       pBinding: pointer) {.gdcall, raises: [].}
  InstanceBindingReferenceCallback* = proc (pToken: pointer; pBinding: pointer;
      pReference: Bool): Bool {.gdcall, raises: [].}
  InstanceBindingCallbacks* {.byref.} = object
    createCallback*: InstanceBindingCreateCallback
    freeCallback*: InstanceBindingFreeCallback
    referenceCallback*: InstanceBindingReferenceCallback
  ClassInstancePtr* = pointer
  ClassSet* = proc (pInstance: ClassInstancePtr; pName: ConstStringNamePtr;
                    pValue: ConstVariantPtr): Bool {.gdcall, raises: [].}
  ClassGet* = proc (pInstance: ClassInstancePtr; pName: ConstStringNamePtr;
                    rRet: VariantPtr): Bool {.gdcall, raises: [].}
  ClassGetRid* = proc (pInstance: ClassInstancePtr): uint64T {.gdcall,
      raises: [].}
  PropertyInfo* {.byref.} = object
    `type`*: VariantType
    name*: StringNamePtr
    className*: StringNamePtr
    hint*: uint32T
    hintString*: StringPtr
    usage*: uint32T
  MethodInfo* {.byref.} = object
    name*: StringNamePtr
    returnValue*: PropertyInfo
    flags*: uint32T
    id*: int32T
    argumentCount*: uint32T
    arguments*: ptr PropertyInfo
    defaultArgumentCount*: uint32T
    defaultArguments*: ptr VariantPtr
  ClassGetPropertyList* = proc (pInstance: ClassInstancePtr; rCount: ptr uint32T): ptr PropertyInfo {.
      gdcall, raises: [].}
  ClassFreePropertyList* = proc (pInstance: ClassInstancePtr;
                                 pList: ptr UncheckedArray[PropertyInfo]) {.
      gdcall, raises: [].}
  ClassFreePropertyList2* = proc (pInstance: ClassInstancePtr;
                                  pList: ptr UncheckedArray[PropertyInfo];
                                  pCount: uint32T) {.gdcall, raises: [].}
  ClassPropertyCanRevert* = proc (pInstance: ClassInstancePtr;
                                  pName: ConstStringNamePtr): Bool {.gdcall,
      raises: [].}
  ClassPropertyGetRevert* = proc (pInstance: ClassInstancePtr;
                                  pName: ConstStringNamePtr; rRet: VariantPtr): Bool {.
      gdcall, raises: [].}
  ClassValidateProperty* = proc (pInstance: ClassInstancePtr;
                                 pProperty: ptr PropertyInfo): Bool {.gdcall,
      raises: [].}
  ClassNotification* = proc (pInstance: ClassInstancePtr; pWhat: int32T) {.
      gdcall, raises: [].}
  ClassNotification2* = proc (pInstance: ClassInstancePtr; pWhat: int32T;
                              pReversed: Bool) {.gdcall, raises: [].}
  ClassToString* = proc (pInstance: ClassInstancePtr; rIsValid: ptr Bool;
                         pOut: StringPtr) {.gdcall, raises: [].}
  ClassReference* = proc (pInstance: ClassInstancePtr) {.gdcall, raises: [].}
  ClassUnreference* = proc (pInstance: ClassInstancePtr) {.gdcall, raises: [].}
  ClassCallVirtual* = proc (pInstance: ClassInstancePtr;
                            pArgs: ptr UncheckedArray[ConstTypePtr];
                            rRet: TypePtr) {.gdcall, raises: [].}
  ClassCreateInstance* = proc (pClassUserdata: pointer): ObjectPtr {.gdcall,
      raises: [].}
  ClassCreateInstance2* = proc (pClassUserdata: pointer;
                                pNotifyPostinitialize: Bool): ObjectPtr {.
      gdcall, raises: [].}
  ClassFreeInstance* = proc (pClassUserdata: pointer;
                             pInstance: ClassInstancePtr) {.gdcall, raises: [].}
  ClassRecreateInstance* = proc (pClassUserdata: pointer; pObject: ObjectPtr): ClassInstancePtr {.
      gdcall, raises: [].}
  ClassGetVirtual* = proc (pClassUserdata: pointer; pName: ConstStringNamePtr): ClassCallVirtual {.
      gdcall, raises: [].}
  ClassGetVirtual2* = proc (pClassUserdata: pointer; pName: ConstStringNamePtr;
                            pHash: uint32T): ClassCallVirtual {.gdcall,
      raises: [].}
  ClassGetVirtualCallData* = proc (pClassUserdata: pointer;
                                   pName: ConstStringNamePtr): pointer {.gdcall,
      raises: [].}
  ClassGetVirtualCallData2* = proc (pClassUserdata: pointer;
                                    pName: ConstStringNamePtr; pHash: uint32T): pointer {.
      gdcall, raises: [].}
  ClassCallVirtualWithData* = proc (pInstance: ClassInstancePtr;
                                    pName: ConstStringNamePtr;
                                    pVirtualCallUserdata: pointer;
                                    pArgs: ptr UncheckedArray[ConstTypePtr];
                                    rRet: TypePtr) {.gdcall, raises: [].}
  ClassCreationInfo* {.byref.} = object
    isVirtual*: Bool
    isAbstract*: Bool
    setFunc*: ClassSet
    getFunc*: ClassGet
    getPropertyListFunc*: ClassGetPropertyList
    freePropertyListFunc*: ClassFreePropertyList
    propertyCanRevertFunc*: ClassPropertyCanRevert
    propertyGetRevertFunc*: ClassPropertyGetRevert
    notificationFunc*: ClassNotification
    toStringFunc*: ClassToString
    referenceFunc*: ClassReference
    unreferenceFunc*: ClassUnreference
    createInstanceFunc*: ClassCreateInstance
    freeInstanceFunc*: ClassFreeInstance
    getVirtualFunc*: ClassGetVirtual
    getRidFunc*: ClassGetRid
    classUserdata*: pointer
  ClassCreationInfo2* {.byref.} = object
    isVirtual*: Bool
    isAbstract*: Bool
    isExposed*: Bool
    setFunc*: ClassSet
    getFunc*: ClassGet
    getPropertyListFunc*: ClassGetPropertyList
    freePropertyListFunc*: ClassFreePropertyList
    propertyCanRevertFunc*: ClassPropertyCanRevert
    propertyGetRevertFunc*: ClassPropertyGetRevert
    validatePropertyFunc*: ClassValidateProperty
    notificationFunc*: ClassNotification2
    toStringFunc*: ClassToString
    referenceFunc*: ClassReference
    unreferenceFunc*: ClassUnreference
    createInstanceFunc*: ClassCreateInstance
    freeInstanceFunc*: ClassFreeInstance
    recreateInstanceFunc*: ClassRecreateInstance
    getVirtualFunc*: ClassGetVirtual
    getVirtualCallDataFunc*: ClassGetVirtualCallData
    callVirtualWithDataFunc*: ClassCallVirtualWithData
    getRidFunc*: ClassGetRid
    classUserdata*: pointer
  ClassCreationInfo3* {.byref.} = object
    isVirtual*: Bool
    isAbstract*: Bool
    isExposed*: Bool
    isRuntime*: Bool
    setFunc*: ClassSet
    getFunc*: ClassGet
    getPropertyListFunc*: ClassGetPropertyList
    freePropertyListFunc*: ClassFreePropertyList2
    propertyCanRevertFunc*: ClassPropertyCanRevert
    propertyGetRevertFunc*: ClassPropertyGetRevert
    validatePropertyFunc*: ClassValidateProperty
    notificationFunc*: ClassNotification2
    toStringFunc*: ClassToString
    referenceFunc*: ClassReference
    unreferenceFunc*: ClassUnreference
    createInstanceFunc*: ClassCreateInstance
    freeInstanceFunc*: ClassFreeInstance
    recreateInstanceFunc*: ClassRecreateInstance
    getVirtualFunc*: ClassGetVirtual
    getVirtualCallDataFunc*: ClassGetVirtualCallData
    callVirtualWithDataFunc*: ClassCallVirtualWithData
    getRidFunc*: ClassGetRid
    classUserdata*: pointer
  ClassCreationInfo4* {.byref.} = object
    isVirtual*: Bool
    isAbstract*: Bool
    isExposed*: Bool
    isRuntime*: Bool
    iconPath*: ConstStringPtr
    setFunc*: ClassSet
    getFunc*: ClassGet
    getPropertyListFunc*: ClassGetPropertyList
    freePropertyListFunc*: ClassFreePropertyList2
    propertyCanRevertFunc*: ClassPropertyCanRevert
    propertyGetRevertFunc*: ClassPropertyGetRevert
    validatePropertyFunc*: ClassValidateProperty
    notificationFunc*: ClassNotification2
    toStringFunc*: ClassToString
    referenceFunc*: ClassReference
    unreferenceFunc*: ClassUnreference
    createInstanceFunc*: ClassCreateInstance2
    freeInstanceFunc*: ClassFreeInstance
    recreateInstanceFunc*: ClassRecreateInstance
    getVirtualFunc*: ClassGetVirtual2
    getVirtualCallDataFunc*: ClassGetVirtualCallData2
    callVirtualWithDataFunc*: ClassCallVirtualWithData
    classUserdata*: pointer
  ClassLibraryPtr* = pointer
  ClassMethodFlags* = enum
    MethodFlagNormal = 0, MethodFlagEditor = 1, MethodFlagConst = 2,
    MethodFlagVirtual = 3, MethodFlagVararg = 4, MethodFlagStatic = 5
  ClassMethodArgumentMetadata* = enum
    MethodArgumentMetadataNone, MethodArgumentMetadataIntIsInt8,
    MethodArgumentMetadataIntIsInt16, MethodArgumentMetadataIntIsInt32,
    MethodArgumentMetadataIntIsInt64, MethodArgumentMetadataIntIsUint8,
    MethodArgumentMetadataIntIsUint16, MethodArgumentMetadataIntIsUint32,
    MethodArgumentMetadataIntIsUint64, MethodArgumentMetadataRealIsFloat,
    MethodArgumentMetadataRealIsDouble, MethodArgumentMetadataIntIsChar16,
    MethodArgumentMetadataIntIsChar32
  ClassMethodCall* = proc (methodUserdata: pointer; pInstance: ClassInstancePtr;
                           pArgs: ptr UncheckedArray[ConstVariantPtr];
                           pArgumentCount: Int; rReturn: VariantPtr;
                           rError: ptr CallError) {.gdcall, raises: [].}
  ClassMethodValidatedCall* = proc (methodUserdata: pointer;
                                    pInstance: ClassInstancePtr;
                                    pArgs: ptr UncheckedArray[ConstVariantPtr];
                                    rReturn: VariantPtr) {.gdcall, raises: [].}
  ClassMethodPtrCall* = proc (methodUserdata: pointer;
                              pInstance: ClassInstancePtr;
                              pArgs: ptr UncheckedArray[ConstTypePtr];
                              rRet: TypePtr) {.gdcall, raises: [].}
  ClassMethodInfo* {.byref.} = object
    name*: StringNamePtr
    methodUserdata*: pointer
    callFunc*: ClassMethodCall
    ptrcallFunc*: ClassMethodPtrCall
    methodFlags*: uint32T
    hasReturnValue*: Bool
    returnValueInfo*: ptr PropertyInfo
    returnValueMetadata*: ClassMethodArgumentMetadata
    argumentCount*: uint32T
    argumentsInfo*: ptr PropertyInfo
    argumentsMetadata*: ptr ClassMethodArgumentMetadata
    defaultArgumentCount*: uint32T
    defaultArguments*: ptr VariantPtr
  ClassVirtualMethodInfo* {.byref.} = object
    name*: StringNamePtr
    methodFlags*: uint32T
    returnValue*: PropertyInfo
    returnValueMetadata*: ClassMethodArgumentMetadata
    argumentCount*: uint32T
    arguments*: ptr PropertyInfo
    argumentsMetadata*: ptr ClassMethodArgumentMetadata
  CallableCustomCall* = proc (callableUserdata: pointer;
                              pArgs: ptr UncheckedArray[ConstVariantPtr];
                              pArgumentCount: Int; rReturn: VariantPtr;
                              rError: ptr CallError) {.gdcall, raises: [].}
  CallableCustomIsValid* = proc (callableUserdata: pointer): Bool {.gdcall,
      raises: [].}
  CallableCustomFree* = proc (callableUserdata: pointer) {.gdcall, raises: [].}
  CallableCustomHash* = proc (callableUserdata: pointer): uint32T {.gdcall,
      raises: [].}
  CallableCustomEqual* = proc (callableUserdataA: pointer;
                               callableUserdataB: pointer): Bool {.gdcall,
      raises: [].}
  CallableCustomLessThan* = proc (callableUserdataA: pointer;
                                  callableUserdataB: pointer): Bool {.gdcall,
      raises: [].}
  CallableCustomToString* = proc (callableUserdata: pointer; rIsValid: ptr Bool;
                                  rOut: StringPtr) {.gdcall, raises: [].}
  CallableCustomGetArgumentCount* = proc (callableUserdata: pointer;
      rIsValid: ptr Bool): Int {.gdcall, raises: [].}
  CallableCustomInfo* {.byref.} = object
    callableUserdata*: pointer
    token*: pointer
    objectId*: GdObjectInstanceId
    callFunc*: CallableCustomCall
    isValidFunc*: CallableCustomIsValid
    freeFunc*: CallableCustomFree
    hashFunc*: CallableCustomHash
    equalFunc*: CallableCustomEqual
    lessThanFunc*: CallableCustomLessThan
    toStringFunc*: CallableCustomToString
  CallableCustomInfo2* {.byref.} = object
    callableUserdata*: pointer
    token*: pointer
    objectId*: GdObjectInstanceId
    callFunc*: CallableCustomCall
    isValidFunc*: CallableCustomIsValid
    freeFunc*: CallableCustomFree
    hashFunc*: CallableCustomHash
    equalFunc*: CallableCustomEqual
    lessThanFunc*: CallableCustomLessThan
    toStringFunc*: CallableCustomToString
    getArgumentCountFunc*: CallableCustomGetArgumentCount
  ScriptInstanceDataPtr* = pointer
  ScriptInstanceSet* = proc (pInstance: ScriptInstanceDataPtr;
                             pName: ConstStringNamePtr; pValue: ConstVariantPtr): Bool {.
      gdcall, raises: [].}
  ScriptInstanceGet* = proc (pInstance: ScriptInstanceDataPtr;
                             pName: ConstStringNamePtr; rRet: VariantPtr): Bool {.
      gdcall, raises: [].}
  ScriptInstanceGetPropertyList* = proc (pInstance: ScriptInstanceDataPtr;
      rCount: ptr uint32T): ptr PropertyInfo {.gdcall, raises: [].}
  ScriptInstanceFreePropertyList* = proc (pInstance: ScriptInstanceDataPtr;
      pList: ptr UncheckedArray[PropertyInfo]) {.gdcall, raises: [].}
  ScriptInstanceFreePropertyList2* = proc (pInstance: ScriptInstanceDataPtr;
      pList: ptr UncheckedArray[PropertyInfo]; pCount: uint32T) {.gdcall,
      raises: [].}
  ScriptInstanceGetClassCategory* = proc (pInstance: ScriptInstanceDataPtr;
      pClassCategory: ptr PropertyInfo): Bool {.gdcall, raises: [].}
  ScriptInstanceGetPropertyType* = proc (pInstance: ScriptInstanceDataPtr;
      pName: ConstStringNamePtr; rIsValid: ptr Bool): VariantType {.gdcall,
      raises: [].}
  ScriptInstanceValidateProperty* = proc (pInstance: ScriptInstanceDataPtr;
      pProperty: ptr PropertyInfo): Bool {.gdcall, raises: [].}
  ScriptInstancePropertyCanRevert* = proc (pInstance: ScriptInstanceDataPtr;
      pName: ConstStringNamePtr): Bool {.gdcall, raises: [].}
  ScriptInstancePropertyGetRevert* = proc (pInstance: ScriptInstanceDataPtr;
      pName: ConstStringNamePtr; rRet: VariantPtr): Bool {.gdcall, raises: [].}
  ScriptInstanceGetOwner* = proc (pInstance: ScriptInstanceDataPtr): ObjectPtr {.
      gdcall, raises: [].}
  ScriptInstancePropertyStateAdd* = proc (pName: ConstStringNamePtr;
      pValue: ConstVariantPtr; pUserdata: pointer) {.gdcall, raises: [].}
  ScriptInstanceGetPropertyState* = proc (pInstance: ScriptInstanceDataPtr;
      pAddFunc: ScriptInstancePropertyStateAdd; pUserdata: pointer) {.gdcall,
      raises: [].}
  ScriptInstanceGetMethodList* = proc (pInstance: ScriptInstanceDataPtr;
                                       rCount: ptr uint32T): ptr MethodInfo {.
      gdcall, raises: [].}
  ScriptInstanceFreeMethodList* = proc (pInstance: ScriptInstanceDataPtr;
                                        pList: ptr UncheckedArray[MethodInfo]) {.
      gdcall, raises: [].}
  ScriptInstanceFreeMethodList2* = proc (pInstance: ScriptInstanceDataPtr;
      pList: ptr UncheckedArray[MethodInfo]; pCount: uint32T) {.gdcall,
      raises: [].}
  ScriptInstanceHasMethod* = proc (pInstance: ScriptInstanceDataPtr;
                                   pName: ConstStringNamePtr): Bool {.gdcall,
      raises: [].}
  ScriptInstanceGetMethodArgumentCount* = proc (
      pInstance: ScriptInstanceDataPtr; pName: ConstStringNamePtr;
      rIsValid: ptr Bool): Int {.gdcall, raises: [].}
  ScriptInstanceCall* = proc (pSelf: ScriptInstanceDataPtr;
                              pMethod: ConstStringNamePtr;
                              pArgs: ptr UncheckedArray[ConstVariantPtr];
                              pArgumentCount: Int; rReturn: VariantPtr;
                              rError: ptr CallError) {.gdcall, raises: [].}
  ScriptInstanceNotification* = proc (pInstance: ScriptInstanceDataPtr;
                                      pWhat: int32T) {.gdcall, raises: [].}
  ScriptInstanceNotification2* = proc (pInstance: ScriptInstanceDataPtr;
                                       pWhat: int32T; pReversed: Bool) {.gdcall,
      raises: [].}
  ScriptInstanceToString* = proc (pInstance: ScriptInstanceDataPtr;
                                  rIsValid: ptr Bool; rOut: StringPtr) {.gdcall,
      raises: [].}
  ScriptInstanceRefCountIncremented* = proc (pInstance: ScriptInstanceDataPtr) {.
      gdcall, raises: [].}
  ScriptInstanceRefCountDecremented* = proc (pInstance: ScriptInstanceDataPtr): Bool {.
      gdcall, raises: [].}
  ScriptInstanceGetScript* = proc (pInstance: ScriptInstanceDataPtr): ObjectPtr {.
      gdcall, raises: [].}
  ScriptInstanceIsPlaceholder* = proc (pInstance: ScriptInstanceDataPtr): Bool {.
      gdcall, raises: [].}
  ScriptLanguagePtr* = pointer
  ScriptInstanceGetLanguage* = proc (pInstance: ScriptInstanceDataPtr): ScriptLanguagePtr {.
      gdcall, raises: [].}
  ScriptInstanceFree* = proc (pInstance: ScriptInstanceDataPtr) {.gdcall,
      raises: [].}
  ScriptInstancePtr* = pointer
  ScriptInstanceInfo* {.byref.} = object
    setFunc*: ScriptInstanceSet
    getFunc*: ScriptInstanceGet
    getPropertyListFunc*: ScriptInstanceGetPropertyList
    freePropertyListFunc*: ScriptInstanceFreePropertyList
    propertyCanRevertFunc*: ScriptInstancePropertyCanRevert
    propertyGetRevertFunc*: ScriptInstancePropertyGetRevert
    getOwnerFunc*: ScriptInstanceGetOwner
    getPropertyStateFunc*: ScriptInstanceGetPropertyState
    getMethodListFunc*: ScriptInstanceGetMethodList
    freeMethodListFunc*: ScriptInstanceFreeMethodList
    getPropertyTypeFunc*: ScriptInstanceGetPropertyType
    hasMethodFunc*: ScriptInstanceHasMethod
    callFunc*: ScriptInstanceCall
    notificationFunc*: ScriptInstanceNotification
    toStringFunc*: ScriptInstanceToString
    refcountIncrementedFunc*: ScriptInstanceRefCountIncremented
    refcountDecrementedFunc*: ScriptInstanceRefCountDecremented
    getScriptFunc*: ScriptInstanceGetScript
    isPlaceholderFunc*: ScriptInstanceIsPlaceholder
    setFallbackFunc*: ScriptInstanceSet
    getFallbackFunc*: ScriptInstanceGet
    getLanguageFunc*: ScriptInstanceGetLanguage
    freeFunc*: ScriptInstanceFree
  ScriptInstanceInfo2* {.byref.} = object
    setFunc*: ScriptInstanceSet
    getFunc*: ScriptInstanceGet
    getPropertyListFunc*: ScriptInstanceGetPropertyList
    freePropertyListFunc*: ScriptInstanceFreePropertyList
    getClassCategoryFunc*: ScriptInstanceGetClassCategory
    propertyCanRevertFunc*: ScriptInstancePropertyCanRevert
    propertyGetRevertFunc*: ScriptInstancePropertyGetRevert
    getOwnerFunc*: ScriptInstanceGetOwner
    getPropertyStateFunc*: ScriptInstanceGetPropertyState
    getMethodListFunc*: ScriptInstanceGetMethodList
    freeMethodListFunc*: ScriptInstanceFreeMethodList
    getPropertyTypeFunc*: ScriptInstanceGetPropertyType
    validatePropertyFunc*: ScriptInstanceValidateProperty
    hasMethodFunc*: ScriptInstanceHasMethod
    callFunc*: ScriptInstanceCall
    notificationFunc*: ScriptInstanceNotification2
    toStringFunc*: ScriptInstanceToString
    refcountIncrementedFunc*: ScriptInstanceRefCountIncremented
    refcountDecrementedFunc*: ScriptInstanceRefCountDecremented
    getScriptFunc*: ScriptInstanceGetScript
    isPlaceholderFunc*: ScriptInstanceIsPlaceholder
    setFallbackFunc*: ScriptInstanceSet
    getFallbackFunc*: ScriptInstanceGet
    getLanguageFunc*: ScriptInstanceGetLanguage
    freeFunc*: ScriptInstanceFree
  ScriptInstanceInfo3* {.byref.} = object
    setFunc*: ScriptInstanceSet
    getFunc*: ScriptInstanceGet
    getPropertyListFunc*: ScriptInstanceGetPropertyList
    freePropertyListFunc*: ScriptInstanceFreePropertyList2
    getClassCategoryFunc*: ScriptInstanceGetClassCategory
    propertyCanRevertFunc*: ScriptInstancePropertyCanRevert
    propertyGetRevertFunc*: ScriptInstancePropertyGetRevert
    getOwnerFunc*: ScriptInstanceGetOwner
    getPropertyStateFunc*: ScriptInstanceGetPropertyState
    getMethodListFunc*: ScriptInstanceGetMethodList
    freeMethodListFunc*: ScriptInstanceFreeMethodList2
    getPropertyTypeFunc*: ScriptInstanceGetPropertyType
    validatePropertyFunc*: ScriptInstanceValidateProperty
    hasMethodFunc*: ScriptInstanceHasMethod
    getMethodArgumentCountFunc*: ScriptInstanceGetMethodArgumentCount
    callFunc*: ScriptInstanceCall
    notificationFunc*: ScriptInstanceNotification2
    toStringFunc*: ScriptInstanceToString
    refcountIncrementedFunc*: ScriptInstanceRefCountIncremented
    refcountDecrementedFunc*: ScriptInstanceRefCountDecremented
    getScriptFunc*: ScriptInstanceGetScript
    isPlaceholderFunc*: ScriptInstanceIsPlaceholder
    setFallbackFunc*: ScriptInstanceSet
    getFallbackFunc*: ScriptInstanceGet
    getLanguageFunc*: ScriptInstanceGetLanguage
    freeFunc*: ScriptInstanceFree
  InitializationLevel* = enum
    InitializationCore, InitializationServers, InitializationScene,
    InitializationEditor
  Initialization* {.byref.} = object
    minimumInitializationLevel*: InitializationLevel
    userdata*: pointer
    initialize*: proc (userdata: pointer; pLevel: InitializationLevel) {.gdcall,
        raises: [].}
    deinitialize*: proc (userdata: pointer; pLevel: InitializationLevel) {.
        gdcall, raises: [].}
  InterfaceFunctionPtr* = proc () {.gdcall, raises: [].}
  InterfaceGetProcAddress* = proc (pFunctionName: cstring): InterfaceFunctionPtr {.
      gdcall, raises: [].}
  InitializationFunction* = proc (pGetProcAddress: InterfaceGetProcAddress;
                                  pLibrary: ClassLibraryPtr;
                                  rInitialization: ptr Initialization): Bool {.
      gdcall, raises: [].}
  GodotVersion* {.byref.} = object
    major*: uint32T
    minor*: uint32T
    patch*: uint32T
    string*: cstring
  InterfaceGetGodotVersion* = proc (rGodotVersion: ptr GodotVersion) {.gdcall,
      raises: [].}
  InterfaceMemAlloc* = proc (pBytes: csizeT): pointer {.gdcall, raises: [].}
  InterfaceMemRealloc* = proc (pPtr: pointer; pBytes: csizeT): pointer {.gdcall,
      raises: [].}
  InterfaceMemFree* = proc (pPtr: pointer) {.gdcall, raises: [].}
  InterfacePrintError* = proc (pDescription: cstring; pFunction: cstring;
                               pFile: cstring; pLine: int32T;
                               pEditorNotify: Bool) {.gdcall, raises: [].}
  InterfacePrintErrorWithMessage* = proc (pDescription: cstring;
      pMessage: cstring; pFunction: cstring; pFile: cstring; pLine: int32T;
      pEditorNotify: Bool) {.gdcall, raises: [].}
  InterfacePrintWarning* = proc (pDescription: cstring; pFunction: cstring;
                                 pFile: cstring; pLine: int32T;
                                 pEditorNotify: Bool) {.gdcall, raises: [].}
  InterfacePrintWarningWithMessage* = proc (pDescription: cstring;
      pMessage: cstring; pFunction: cstring; pFile: cstring; pLine: int32T;
      pEditorNotify: Bool) {.gdcall, raises: [].}
  InterfacePrintScriptError* = proc (pDescription: cstring; pFunction: cstring;
                                     pFile: cstring; pLine: int32T;
                                     pEditorNotify: Bool) {.gdcall, raises: [].}
  InterfacePrintScriptErrorWithMessage* = proc (pDescription: cstring;
      pMessage: cstring; pFunction: cstring; pFile: cstring; pLine: int32T;
      pEditorNotify: Bool) {.gdcall, raises: [].}
  InterfaceGetNativeStructSize* = proc (pName: ConstStringNamePtr): uint64T {.
      gdcall, raises: [].}
  InterfaceVariantNewCopy* = proc (rDest: UninitializedVariantPtr;
                                   pSrc: ConstVariantPtr) {.gdcall, raises: [].}
  InterfaceVariantNewNil* = proc (rDest: UninitializedVariantPtr) {.gdcall,
      raises: [].}
  InterfaceVariantDestroy* = proc (pSelf: VariantPtr) {.gdcall, raises: [].}
  InterfaceVariantCall* = proc (pSelf: VariantPtr; pMethod: ConstStringNamePtr;
                                pArgs: ptr ConstVariantPtr; pArgumentCount: Int;
                                rReturn: UninitializedVariantPtr;
                                rError: ptr CallError) {.gdcall, raises: [].}
  InterfaceVariantCallStatic* = proc (pType: VariantType;
                                      pMethod: ConstStringNamePtr;
                                      pArgs: ptr ConstVariantPtr;
                                      pArgumentCount: Int;
                                      rReturn: UninitializedVariantPtr;
                                      rError: ptr CallError) {.gdcall,
      raises: [].}
  InterfaceVariantEvaluate* = proc (pOp: VariantOperator; pA: ConstVariantPtr;
                                    pB: ConstVariantPtr;
                                    rReturn: UninitializedVariantPtr;
                                    rValid: ptr Bool) {.gdcall, raises: [].}
  InterfaceVariantSet* = proc (pSelf: VariantPtr; pKey: ConstVariantPtr;
                               pValue: ConstVariantPtr; rValid: ptr Bool) {.
      gdcall, raises: [].}
  InterfaceVariantSetNamed* = proc (pSelf: VariantPtr; pKey: ConstStringNamePtr;
                                    pValue: ConstVariantPtr; rValid: ptr Bool) {.
      gdcall, raises: [].}
  InterfaceVariantSetKeyed* = proc (pSelf: VariantPtr; pKey: ConstVariantPtr;
                                    pValue: ConstVariantPtr; rValid: ptr Bool) {.
      gdcall, raises: [].}
  InterfaceVariantSetIndexed* = proc (pSelf: VariantPtr; pIndex: Int;
                                      pValue: ConstVariantPtr; rValid: ptr Bool;
                                      rOob: ptr Bool) {.gdcall, raises: [].}
  InterfaceVariantGet* = proc (pSelf: ConstVariantPtr; pKey: ConstVariantPtr;
                               rRet: UninitializedVariantPtr; rValid: ptr Bool) {.
      gdcall, raises: [].}
  InterfaceVariantGetNamed* = proc (pSelf: ConstVariantPtr;
                                    pKey: ConstStringNamePtr;
                                    rRet: UninitializedVariantPtr;
                                    rValid: ptr Bool) {.gdcall, raises: [].}
  InterfaceVariantGetKeyed* = proc (pSelf: ConstVariantPtr;
                                    pKey: ConstVariantPtr;
                                    rRet: UninitializedVariantPtr;
                                    rValid: ptr Bool) {.gdcall, raises: [].}
  InterfaceVariantGetIndexed* = proc (pSelf: ConstVariantPtr; pIndex: Int;
                                      rRet: UninitializedVariantPtr;
                                      rValid: ptr Bool; rOob: ptr Bool) {.
      gdcall, raises: [].}
  InterfaceVariantIterInit* = proc (pSelf: ConstVariantPtr;
                                    rIter: UninitializedVariantPtr;
                                    rValid: ptr Bool): Bool {.gdcall, raises: [].}
  InterfaceVariantIterNext* = proc (pSelf: ConstVariantPtr; rIter: VariantPtr;
                                    rValid: ptr Bool): Bool {.gdcall, raises: [].}
  InterfaceVariantIterGet* = proc (pSelf: ConstVariantPtr; rIter: VariantPtr;
                                   rRet: UninitializedVariantPtr;
                                   rValid: ptr Bool) {.gdcall, raises: [].}
  InterfaceVariantHash* = proc (pSelf: ConstVariantPtr): Int {.gdcall,
      raises: [].}
  InterfaceVariantRecursiveHash* = proc (pSelf: ConstVariantPtr;
      pRecursionCount: Int): Int {.gdcall, raises: [].}
  InterfaceVariantHashCompare* = proc (pSelf: ConstVariantPtr;
                                       pOther: ConstVariantPtr): Bool {.gdcall,
      raises: [].}
  InterfaceVariantBooleanize* = proc (pSelf: ConstVariantPtr): Bool {.gdcall,
      raises: [].}
  InterfaceVariantDuplicate* = proc (pSelf: ConstVariantPtr; rRet: VariantPtr;
                                     pDeep: Bool) {.gdcall, raises: [].}
  InterfaceVariantStringify* = proc (pSelf: ConstVariantPtr; rRet: StringPtr) {.
      gdcall, raises: [].}
  InterfaceVariantGetType* = proc (pSelf: ConstVariantPtr): VariantType {.
      gdcall, raises: [].}
  InterfaceVariantHasMethod* = proc (pSelf: ConstVariantPtr;
                                     pMethod: ConstStringNamePtr): Bool {.
      gdcall, raises: [].}
  InterfaceVariantHasMember* = proc (pType: VariantType;
                                     pMember: ConstStringNamePtr): Bool {.
      gdcall, raises: [].}
  InterfaceVariantHasKey* = proc (pSelf: ConstVariantPtr; pKey: ConstVariantPtr;
                                  rValid: ptr Bool): Bool {.gdcall, raises: [].}
  InterfaceVariantGetObjectInstanceId* = proc (pSelf: ConstVariantPtr): GdObjectInstanceId {.
      gdcall, raises: [].}
  InterfaceVariantGetTypeName* = proc (pType: VariantType;
                                       rName: UninitializedStringPtr) {.gdcall,
      raises: [].}
  InterfaceVariantCanConvert* = proc (pFrom: VariantType; pTo: VariantType): Bool {.
      gdcall, raises: [].}
  InterfaceVariantCanConvertStrict* = proc (pFrom: VariantType; pTo: VariantType): Bool {.
      gdcall, raises: [].}
  InterfaceGetVariantFromTypeConstructor* = proc (pType: VariantType): VariantFromTypeConstructorFunc {.
      gdcall, raises: [].}
  InterfaceGetVariantToTypeConstructor* = proc (pType: VariantType): TypeFromVariantConstructorFunc {.
      gdcall, raises: [].}
  InterfaceGetVariantGetInternalPtrFunc* = proc (pType: VariantType): VariantGetInternalPtrFunc {.
      gdcall, raises: [].}
  InterfaceVariantGetPtrOperatorEvaluator* = proc (pOperator: VariantOperator;
      pTypeA: VariantType; pTypeB: VariantType): PtrOperatorEvaluator {.gdcall,
      raises: [].}
  InterfaceVariantGetPtrBuiltinMethod* = proc (pType: VariantType;
      pMethod: ConstStringNamePtr; pHash: Int): PtrBuiltInMethod {.gdcall,
      raises: [].}
  InterfaceVariantGetPtrConstructor* = proc (pType: VariantType;
      pConstructor: int32T): PtrConstructor {.gdcall, raises: [].}
  InterfaceVariantGetPtrDestructor* = proc (pType: VariantType): PtrDestructor {.
      gdcall, raises: [].}
  InterfaceVariantConstruct* = proc (pType: VariantType;
                                     rBase: UninitializedVariantPtr;
                                     pArgs: ptr ConstVariantPtr;
                                     pArgumentCount: int32T;
                                     rError: ptr CallError) {.gdcall, raises: [].}
  InterfaceVariantGetPtrSetter* = proc (pType: VariantType;
                                        pMember: ConstStringNamePtr): PtrSetter {.
      gdcall, raises: [].}
  InterfaceVariantGetPtrGetter* = proc (pType: VariantType;
                                        pMember: ConstStringNamePtr): PtrGetter {.
      gdcall, raises: [].}
  InterfaceVariantGetPtrIndexedSetter* = proc (pType: VariantType): PtrIndexedSetter {.
      gdcall, raises: [].}
  InterfaceVariantGetPtrIndexedGetter* = proc (pType: VariantType): PtrIndexedGetter {.
      gdcall, raises: [].}
  InterfaceVariantGetPtrKeyedSetter* = proc (pType: VariantType): PtrKeyedSetter {.
      gdcall, raises: [].}
  InterfaceVariantGetPtrKeyedGetter* = proc (pType: VariantType): PtrKeyedGetter {.
      gdcall, raises: [].}
  InterfaceVariantGetPtrKeyedChecker* = proc (pType: VariantType): PtrKeyedChecker {.
      gdcall, raises: [].}
  InterfaceVariantGetConstantValue* = proc (pType: VariantType;
      pConstant: ConstStringNamePtr; rRet: UninitializedVariantPtr) {.gdcall,
      raises: [].}
  InterfaceVariantGetPtrUtilityFunction* = proc (pFunction: ConstStringNamePtr;
      pHash: Int): PtrUtilityFunction {.gdcall, raises: [].}
  InterfaceStringNewWithLatin1Chars* = proc (rDest: UninitializedStringPtr;
      pContents: cstring) {.gdcall, raises: [].}
  InterfaceStringNewWithUtf8Chars* = proc (rDest: UninitializedStringPtr;
      pContents: cstring) {.gdcall, raises: [].}
  InterfaceStringNewWithUtf16Chars* = proc (rDest: UninitializedStringPtr;
      pContents: ptr char16T) {.gdcall, raises: [].}
  InterfaceStringNewWithUtf32Chars* = proc (rDest: UninitializedStringPtr;
      pContents: ptr char32T) {.gdcall, raises: [].}
  InterfaceStringNewWithWideChars* = proc (rDest: UninitializedStringPtr;
      pContents: ptr wcharT) {.gdcall, raises: [].}
  InterfaceStringNewWithLatin1CharsAndLen* = proc (
      rDest: UninitializedStringPtr; pContents: cstring; pSize: Int) {.gdcall,
      raises: [].}
  InterfaceStringNewWithUtf8CharsAndLen* = proc (rDest: UninitializedStringPtr;
      pContents: cstring; pSize: Int) {.gdcall, raises: [].}
  InterfaceStringNewWithUtf8CharsAndLen2* = proc (rDest: UninitializedStringPtr;
      pContents: cstring; pSize: Int): Int {.gdcall, raises: [].}
  InterfaceStringNewWithUtf16CharsAndLen* = proc (rDest: UninitializedStringPtr;
      pContents: ptr char16T; pCharCount: Int) {.gdcall, raises: [].}
  InterfaceStringNewWithUtf16CharsAndLen2* = proc (
      rDest: UninitializedStringPtr; pContents: ptr char16T; pCharCount: Int;
      pDefaultLittleEndian: Bool): Int {.gdcall, raises: [].}
  InterfaceStringNewWithUtf32CharsAndLen* = proc (rDest: UninitializedStringPtr;
      pContents: ptr char32T; pCharCount: Int) {.gdcall, raises: [].}
  InterfaceStringNewWithWideCharsAndLen* = proc (rDest: UninitializedStringPtr;
      pContents: ptr wcharT; pCharCount: Int) {.gdcall, raises: [].}
  InterfaceStringToLatin1Chars* = proc (pSelf: ConstStringPtr; rText: cstring;
                                        pMaxWriteLength: Int): Int {.gdcall,
      raises: [].}
  InterfaceStringToUtf8Chars* = proc (pSelf: ConstStringPtr; rText: cstring;
                                      pMaxWriteLength: Int): Int {.gdcall,
      raises: [].}
  InterfaceStringToUtf16Chars* = proc (pSelf: ConstStringPtr;
                                       rText: ptr char16T; pMaxWriteLength: Int): Int {.
      gdcall, raises: [].}
  InterfaceStringToUtf32Chars* = proc (pSelf: ConstStringPtr;
                                       rText: ptr char32T; pMaxWriteLength: Int): Int {.
      gdcall, raises: [].}
  InterfaceStringToWideChars* = proc (pSelf: ConstStringPtr; rText: ptr wcharT;
                                      pMaxWriteLength: Int): Int {.gdcall,
      raises: [].}
  InterfaceStringOperatorIndex* = proc (pSelf: StringPtr; pIndex: Int): ptr char32T {.
      gdcall, raises: [].}
  InterfaceStringOperatorIndexConst* = proc (pSelf: ConstStringPtr; pIndex: Int): ptr char32T {.
      gdcall, raises: [].}
  InterfaceStringOperatorPlusEqString* = proc (pSelf: StringPtr;
      pB: ConstStringPtr) {.gdcall, raises: [].}
  InterfaceStringOperatorPlusEqChar* = proc (pSelf: StringPtr; pB: char32T) {.
      gdcall, raises: [].}
  InterfaceStringOperatorPlusEqCstr* = proc (pSelf: StringPtr; pB: cstring) {.
      gdcall, raises: [].}
  InterfaceStringOperatorPlusEqWcstr* = proc (pSelf: StringPtr; pB: ptr wcharT) {.
      gdcall, raises: [].}
  InterfaceStringOperatorPlusEqC32str* = proc (pSelf: StringPtr; pB: ptr char32T) {.
      gdcall, raises: [].}
  InterfaceStringResize* = proc (pSelf: StringPtr; pResize: Int): Int {.gdcall,
      raises: [].}
  InterfaceStringNameNewWithLatin1Chars* = proc (
      rDest: UninitializedStringNamePtr; pContents: cstring; pIsStatic: Bool) {.
      gdcall, raises: [].}
  InterfaceStringNameNewWithUtf8Chars* = proc (
      rDest: UninitializedStringNamePtr; pContents: cstring) {.gdcall,
      raises: [].}
  InterfaceStringNameNewWithUtf8CharsAndLen* = proc (
      rDest: UninitializedStringNamePtr; pContents: cstring; pSize: Int) {.
      gdcall, raises: [].}
  InterfaceXmlParserOpenBuffer* = proc (pInstance: ObjectPtr;
                                        pBuffer: ptr uint8T; pSize: csizeT): Int {.
      gdcall, raises: [].}
  InterfaceFileAccessStoreBuffer* = proc (pInstance: ObjectPtr;
      pSrc: ptr uint8T; pLength: uint64T) {.gdcall, raises: [].}
  InterfaceFileAccessGetBuffer* = proc (pInstance: ConstObjectPtr;
                                        pDst: ptr uint8T; pLength: uint64T): uint64T {.
      gdcall, raises: [].}
  InterfaceImagePtrw* = proc (pInstance: ObjectPtr): ptr uint8T {.gdcall,
      raises: [].}
  InterfaceImagePtr* = proc (pInstance: ObjectPtr): ptr uint8T {.gdcall,
      raises: [].}
  InterfaceWorkerThreadPoolAddNativeGroupTask* = proc (pInstance: ObjectPtr;
      pFunc: proc (a1: pointer; a2: uint32T) {.gdcall, raises: [].};
      pUserdata: pointer; pElements: cint; pTasks: cint; pHighPriority: Bool;
      pDescription: ConstStringPtr): int64T {.gdcall, raises: [].}
  InterfaceWorkerThreadPoolAddNativeTask* = proc (pInstance: ObjectPtr;
      pFunc: proc (a1: pointer) {.gdcall, raises: [].}; pUserdata: pointer;
      pHighPriority: Bool; pDescription: ConstStringPtr): int64T {.gdcall,
      raises: [].}
  InterfacePackedByteArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr uint8T {.
      gdcall, raises: [].}
  InterfacePackedByteArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr uint8T {.gdcall, raises: [].}
  InterfacePackedFloat32ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr cfloat {.
      gdcall, raises: [].}
  InterfacePackedFloat32ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr cfloat {.gdcall, raises: [].}
  InterfacePackedFloat64ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr cdouble {.
      gdcall, raises: [].}
  InterfacePackedFloat64ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr cdouble {.gdcall, raises: [].}
  InterfacePackedInt32ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr int32T {.
      gdcall, raises: [].}
  InterfacePackedInt32ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr int32T {.gdcall, raises: [].}
  InterfacePackedInt64ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr int64T {.
      gdcall, raises: [].}
  InterfacePackedInt64ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr int64T {.gdcall, raises: [].}
  InterfacePackedStringArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): StringPtr {.
      gdcall, raises: [].}
  InterfacePackedStringArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): StringPtr {.gdcall, raises: [].}
  InterfacePackedVector2ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): TypePtr {.
      gdcall, raises: [].}
  InterfacePackedVector2ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): TypePtr {.gdcall, raises: [].}
  InterfacePackedVector3ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): TypePtr {.
      gdcall, raises: [].}
  InterfacePackedVector3ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): TypePtr {.gdcall, raises: [].}
  InterfacePackedVector4ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): TypePtr {.
      gdcall, raises: [].}
  InterfacePackedVector4ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): TypePtr {.gdcall, raises: [].}
  InterfacePackedColorArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): TypePtr {.
      gdcall, raises: [].}
  InterfacePackedColorArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): TypePtr {.gdcall, raises: [].}
  InterfaceArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): VariantPtr {.
      gdcall, raises: [].}
  InterfaceArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr; pIndex: Int): VariantPtr {.
      gdcall, raises: [].}
  InterfaceArrayRef* = proc (pSelf: TypePtr; pFrom: ConstTypePtr) {.gdcall,
      raises: [].}
  InterfaceArraySetTyped* = proc (pSelf: TypePtr; pType: VariantType;
                                  pClassName: ConstStringNamePtr;
                                  pScript: ConstVariantPtr) {.gdcall, raises: [].}
  InterfaceDictionaryOperatorIndex* = proc (pSelf: TypePtr;
      pKey: ConstVariantPtr): VariantPtr {.gdcall, raises: [].}
  InterfaceDictionaryOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pKey: ConstVariantPtr): VariantPtr {.gdcall, raises: [].}
  InterfaceDictionarySetTyped* = proc (pSelf: TypePtr; pKeyType: VariantType;
                                       pKeyClassName: ConstStringNamePtr;
                                       pKeyScript: ConstVariantPtr;
                                       pValueType: VariantType;
                                       pValueClassName: ConstStringNamePtr;
                                       pValueScript: ConstVariantPtr) {.gdcall,
      raises: [].}
  InterfaceObjectMethodBindCall* = proc (pMethodBind: MethodBindPtr;
      pInstance: ObjectPtr; pArgs: ptr ConstVariantPtr; pArgCount: Int;
      rRet: UninitializedVariantPtr; rError: ptr CallError) {.gdcall, raises: [].}
  InterfaceObjectMethodBindPtrcall* = proc (pMethodBind: MethodBindPtr;
      pInstance: ObjectPtr; pArgs: ptr ConstTypePtr; rRet: TypePtr) {.gdcall,
      raises: [].}
  InterfaceObjectDestroy* = proc (pO: ObjectPtr) {.gdcall, raises: [].}
  InterfaceGlobalGetSingleton* = proc (pName: ConstStringNamePtr): ObjectPtr {.
      gdcall, raises: [].}
  InterfaceObjectGetInstanceBinding* = proc (pO: ObjectPtr; pToken: pointer;
      pCallbacks: ptr InstanceBindingCallbacks): pointer {.gdcall, raises: [].}
  InterfaceObjectSetInstanceBinding* = proc (pO: ObjectPtr; pToken: pointer;
      pBinding: pointer; pCallbacks: ptr InstanceBindingCallbacks) {.gdcall,
      raises: [].}
  InterfaceObjectFreeInstanceBinding* = proc (pO: ObjectPtr; pToken: pointer) {.
      gdcall, raises: [].}
  InterfaceObjectSetInstance* = proc (pO: ObjectPtr;
                                      pClassname: ConstStringNamePtr;
                                      pInstance: ClassInstancePtr) {.gdcall,
      raises: [].}
  InterfaceObjectGetClassName* = proc (pObject: ConstObjectPtr;
                                       pLibrary: ClassLibraryPtr;
                                       rClassName: UninitializedStringNamePtr): Bool {.
      gdcall, raises: [].}
  InterfaceObjectCastTo* = proc (pObject: ConstObjectPtr; pClassTag: pointer): ObjectPtr {.
      gdcall, raises: [].}
  InterfaceObjectGetInstanceFromId* = proc (pInstanceId: GdObjectInstanceId): ObjectPtr {.
      gdcall, raises: [].}
  InterfaceObjectGetInstanceId* = proc (pObject: ConstObjectPtr): GdObjectInstanceId {.
      gdcall, raises: [].}
  InterfaceObjectHasScriptMethod* = proc (pObject: ConstObjectPtr;
      pMethod: ConstStringNamePtr): Bool {.gdcall, raises: [].}
  InterfaceObjectCallScriptMethod* = proc (pObject: ObjectPtr;
      pMethod: ConstStringNamePtr; pArgs: ptr ConstVariantPtr;
      pArgumentCount: Int; rReturn: UninitializedVariantPtr;
      rError: ptr CallError) {.gdcall, raises: [].}
  InterfaceRefGetObject* = proc (pRef: ConstRefPtr): ObjectPtr {.gdcall,
      raises: [].}
  InterfaceRefSetObject* = proc (pRef: RefPtr; pObject: ObjectPtr) {.gdcall,
      raises: [].}
  InterfaceScriptInstanceCreate* = proc (pInfo: ptr ScriptInstanceInfo;
      pInstanceData: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall,
      raises: [].}
  InterfaceScriptInstanceCreate2* = proc (pInfo: ptr ScriptInstanceInfo2;
      pInstanceData: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall,
      raises: [].}
  InterfaceScriptInstanceCreate3* = proc (pInfo: ptr ScriptInstanceInfo3;
      pInstanceData: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall,
      raises: [].}
  InterfacePlaceHolderScriptInstanceCreate* = proc (pLanguage: ObjectPtr;
      pScript: ObjectPtr; pOwner: ObjectPtr): ScriptInstancePtr {.gdcall,
      raises: [].}
  InterfacePlaceHolderScriptInstanceUpdate* = proc (
      pPlaceholder: ScriptInstancePtr; pProperties: ConstTypePtr;
      pValues: ConstTypePtr) {.gdcall, raises: [].}
  InterfaceObjectGetScriptInstance* = proc (pObject: ConstObjectPtr;
      pLanguage: ObjectPtr): ScriptInstanceDataPtr {.gdcall, raises: [].}
  InterfaceCallableCustomCreate* = proc (rCallable: UninitializedTypePtr;
      pCallableCustomInfo: ptr CallableCustomInfo) {.gdcall, raises: [].}
  InterfaceCallableCustomCreate2* = proc (rCallable: UninitializedTypePtr;
      pCallableCustomInfo: ptr CallableCustomInfo2) {.gdcall, raises: [].}
  InterfaceCallableCustomGetUserData* = proc (pCallable: ConstTypePtr;
      pToken: pointer): pointer {.gdcall, raises: [].}
  InterfaceClassdbConstructObject* = proc (pClassname: ConstStringNamePtr): ObjectPtr {.
      gdcall, raises: [].}
  InterfaceClassdbConstructObject2* = proc (pClassname: ConstStringNamePtr): ObjectPtr {.
      gdcall, raises: [].}
  InterfaceClassdbGetMethodBind* = proc (pClassname: ConstStringNamePtr;
      pMethodname: ConstStringNamePtr; pHash: Int): MethodBindPtr {.gdcall,
      raises: [].}
  InterfaceClassdbGetClassTag* = proc (pClassname: ConstStringNamePtr): pointer {.
      gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClass* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr; pParentClassName: ConstStringNamePtr;
      pExtensionFuncs: ptr ClassCreationInfo) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClass2* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr; pParentClassName: ConstStringNamePtr;
      pExtensionFuncs: ptr ClassCreationInfo2) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClass3* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr; pParentClassName: ConstStringNamePtr;
      pExtensionFuncs: ptr ClassCreationInfo3) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClass4* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr; pParentClassName: ConstStringNamePtr;
      pExtensionFuncs: ptr ClassCreationInfo4) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassMethod* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pMethodInfo: ptr ClassMethodInfo) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassVirtualMethod* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pMethodInfo: ptr ClassVirtualMethodInfo) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassIntegerConstant* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pEnumName: ConstStringNamePtr; pConstantName: ConstStringNamePtr;
      pConstantValue: Int; pIsBitfield: Bool) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassProperty* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pInfo: ptr PropertyInfo; pSetter: ConstStringNamePtr;
      pGetter: ConstStringNamePtr) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassPropertyIndexed* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pInfo: ptr PropertyInfo; pSetter: ConstStringNamePtr;
      pGetter: ConstStringNamePtr; pIndex: Int) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassPropertyGroup* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pGroupName: ConstStringPtr; pPrefix: ConstStringPtr) {.gdcall, raises: [].}
  InterfaceClassdbRegisterExtensionClassPropertySubgroup* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pSubgroupName: ConstStringPtr; pPrefix: ConstStringPtr) {.gdcall,
      raises: [].}
  InterfaceClassdbRegisterExtensionClassSignal* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pSignalName: ConstStringNamePtr; pArgumentInfo: ptr PropertyInfo;
      pArgumentCount: Int) {.gdcall, raises: [].}
  InterfaceClassdbUnregisterExtensionClass* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr) {.gdcall, raises: [].}
  InterfaceGetLibraryPath* = proc (pLibrary: ClassLibraryPtr;
                                   rPath: UninitializedStringPtr) {.gdcall,
      raises: [].}
  InterfaceEditorAddPlugin* = proc (pClassName: ConstStringNamePtr) {.gdcall,
      raises: [].}
  InterfaceEditorRemovePlugin* = proc (pClassName: ConstStringNamePtr) {.gdcall,
      raises: [].}
  InterfaceEditorHelpLoadXmlFromUtf8Chars* = proc (pData: cstring) {.gdcall,
      raises: [].}
  InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen* = proc (pData: cstring;
      pSize: Int) {.gdcall, raises: [].}