
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
      a2: TypePtr) {.gdcall.}
  TypeFromVariantConstructorFunc* = proc (a1: UninitializedTypePtr;
      a2: VariantPtr) {.gdcall.}
  VariantGetInternalPtrFunc* = proc (a1: VariantPtr): pointer {.gdcall.}
  PtrOperatorEvaluator* = proc (pLeft: ConstTypePtr; pRight: ConstTypePtr;
                                rResult: TypePtr) {.gdcall.}
  PtrBuiltInMethod* = proc (pBase: TypePtr; pArgs: ptr ConstTypePtr;
                            rReturn: TypePtr; pArgumentCount: cint) {.gdcall.}
  PtrConstructor* = proc (pBase: UninitializedTypePtr; pArgs: ptr ConstTypePtr) {.
      gdcall.}
  PtrDestructor* = proc (pBase: TypePtr) {.gdcall.}
  PtrSetter* = proc (pBase: TypePtr; pValue: ConstTypePtr) {.gdcall.}
  PtrGetter* = proc (pBase: ConstTypePtr; rValue: TypePtr) {.gdcall.}
  PtrIndexedSetter* = proc (pBase: TypePtr; pIndex: Int; pValue: ConstTypePtr) {.
      gdcall.}
  PtrIndexedGetter* = proc (pBase: ConstTypePtr; pIndex: Int; rValue: TypePtr) {.
      gdcall.}
  PtrKeyedSetter* = proc (pBase: TypePtr; pKey: ConstTypePtr;
                          pValue: ConstTypePtr) {.gdcall.}
  PtrKeyedGetter* = proc (pBase: ConstTypePtr; pKey: ConstTypePtr;
                          rValue: TypePtr) {.gdcall.}
  PtrKeyedChecker* = proc (pBase: ConstVariantPtr; pKey: ConstVariantPtr): uint32T {.
      gdcall.}
  PtrUtilityFunction* = proc (rReturn: TypePtr; pArgs: ptr ConstTypePtr;
                              pArgumentCount: cint) {.gdcall.}
  ClassConstructor* = proc (): ObjectPtr {.gdcall.}
  InstanceBindingCreateCallback* = proc (pToken: pointer; pInstance: pointer): pointer {.
      gdcall.}
  InstanceBindingFreeCallback* = proc (pToken: pointer; pInstance: pointer;
                                       pBinding: pointer) {.gdcall.}
  InstanceBindingReferenceCallback* = proc (pToken: pointer; pBinding: pointer;
      pReference: Bool): Bool {.gdcall.}
  InstanceBindingCallbacks* {.byref.} = object
    createCallback*: InstanceBindingCreateCallback
    freeCallback*: InstanceBindingFreeCallback
    referenceCallback*: InstanceBindingReferenceCallback
  ClassInstancePtr* = pointer
  ClassSet* = proc (pInstance: ClassInstancePtr; pName: ConstStringNamePtr;
                    pValue: ConstVariantPtr): Bool {.gdcall.}
  ClassGet* = proc (pInstance: ClassInstancePtr; pName: ConstStringNamePtr;
                    rRet: VariantPtr): Bool {.gdcall.}
  ClassGetRid* = proc (pInstance: ClassInstancePtr): uint64T {.gdcall.}
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
      gdcall.}
  ClassFreePropertyList* = proc (pInstance: ClassInstancePtr;
                                 pList: ptr UncheckedArray[PropertyInfo]) {.
      gdcall.}
  ClassFreePropertyList2* = proc (pInstance: ClassInstancePtr;
                                  pList: ptr UncheckedArray[PropertyInfo];
                                  pCount: uint32T) {.gdcall.}
  ClassPropertyCanRevert* = proc (pInstance: ClassInstancePtr;
                                  pName: ConstStringNamePtr): Bool {.gdcall.}
  ClassPropertyGetRevert* = proc (pInstance: ClassInstancePtr;
                                  pName: ConstStringNamePtr; rRet: VariantPtr): Bool {.
      gdcall.}
  ClassValidateProperty* = proc (pInstance: ClassInstancePtr;
                                 pProperty: ptr PropertyInfo): Bool {.gdcall.}
  ClassNotification* = proc (pInstance: ClassInstancePtr; pWhat: int32T) {.
      gdcall.}
  ClassNotification2* = proc (pInstance: ClassInstancePtr; pWhat: int32T;
                              pReversed: Bool) {.gdcall.}
  ClassToString* = proc (pInstance: ClassInstancePtr; rIsValid: ptr Bool;
                         pOut: StringPtr) {.gdcall.}
  ClassReference* = proc (pInstance: ClassInstancePtr) {.gdcall.}
  ClassUnreference* = proc (pInstance: ClassInstancePtr) {.gdcall.}
  ClassCallVirtual* = proc (pInstance: ClassInstancePtr;
                            pArgs: ptr UncheckedArray[ConstTypePtr];
                            rRet: TypePtr) {.gdcall.}
  ClassCreateInstance* = proc (pClassUserdata: pointer): ObjectPtr {.gdcall.}
  ClassCreateInstance2* = proc (pClassUserdata: pointer;
                                pNotifyPostinitialize: Bool): ObjectPtr {.gdcall.}
  ClassFreeInstance* = proc (pClassUserdata: pointer;
                             pInstance: ClassInstancePtr) {.gdcall.}
  ClassRecreateInstance* = proc (pClassUserdata: pointer; pObject: ObjectPtr): ClassInstancePtr {.
      gdcall.}
  ClassGetVirtual* = proc (pClassUserdata: pointer; pName: ConstStringNamePtr): ClassCallVirtual {.
      gdcall.}
  ClassGetVirtual2* = proc (pClassUserdata: pointer; pName: ConstStringNamePtr;
                            pHash: uint32T): ClassCallVirtual {.gdcall.}
  ClassGetVirtualCallData* = proc (pClassUserdata: pointer;
                                   pName: ConstStringNamePtr): pointer {.gdcall.}
  ClassGetVirtualCallData2* = proc (pClassUserdata: pointer;
                                    pName: ConstStringNamePtr; pHash: uint32T): pointer {.
      gdcall.}
  ClassCallVirtualWithData* = proc (pInstance: ClassInstancePtr;
                                    pName: ConstStringNamePtr;
                                    pVirtualCallUserdata: pointer;
                                    pArgs: ptr UncheckedArray[ConstTypePtr];
                                    rRet: TypePtr) {.gdcall.}
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
                           rError: ptr CallError) {.gdcall.}
  ClassMethodValidatedCall* = proc (methodUserdata: pointer;
                                    pInstance: ClassInstancePtr;
                                    pArgs: ptr UncheckedArray[ConstVariantPtr];
                                    rReturn: VariantPtr) {.gdcall.}
  ClassMethodPtrCall* = proc (methodUserdata: pointer;
                              pInstance: ClassInstancePtr;
                              pArgs: ptr UncheckedArray[ConstTypePtr];
                              rRet: TypePtr) {.gdcall.}
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
                              rError: ptr CallError) {.gdcall.}
  CallableCustomIsValid* = proc (callableUserdata: pointer): Bool {.gdcall.}
  CallableCustomFree* = proc (callableUserdata: pointer) {.gdcall.}
  CallableCustomHash* = proc (callableUserdata: pointer): uint32T {.gdcall.}
  CallableCustomEqual* = proc (callableUserdataA: pointer;
                               callableUserdataB: pointer): Bool {.gdcall.}
  CallableCustomLessThan* = proc (callableUserdataA: pointer;
                                  callableUserdataB: pointer): Bool {.gdcall.}
  CallableCustomToString* = proc (callableUserdata: pointer; rIsValid: ptr Bool;
                                  rOut: StringPtr) {.gdcall.}
  CallableCustomGetArgumentCount* = proc (callableUserdata: pointer;
      rIsValid: ptr Bool): Int {.gdcall.}
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
      gdcall.}
  ScriptInstanceGet* = proc (pInstance: ScriptInstanceDataPtr;
                             pName: ConstStringNamePtr; rRet: VariantPtr): Bool {.
      gdcall.}
  ScriptInstanceGetPropertyList* = proc (pInstance: ScriptInstanceDataPtr;
      rCount: ptr uint32T): ptr PropertyInfo {.gdcall.}
  ScriptInstanceFreePropertyList* = proc (pInstance: ScriptInstanceDataPtr;
      pList: ptr UncheckedArray[PropertyInfo]) {.gdcall.}
  ScriptInstanceFreePropertyList2* = proc (pInstance: ScriptInstanceDataPtr;
      pList: ptr UncheckedArray[PropertyInfo]; pCount: uint32T) {.gdcall.}
  ScriptInstanceGetClassCategory* = proc (pInstance: ScriptInstanceDataPtr;
      pClassCategory: ptr PropertyInfo): Bool {.gdcall.}
  ScriptInstanceGetPropertyType* = proc (pInstance: ScriptInstanceDataPtr;
      pName: ConstStringNamePtr; rIsValid: ptr Bool): VariantType {.gdcall.}
  ScriptInstanceValidateProperty* = proc (pInstance: ScriptInstanceDataPtr;
      pProperty: ptr PropertyInfo): Bool {.gdcall.}
  ScriptInstancePropertyCanRevert* = proc (pInstance: ScriptInstanceDataPtr;
      pName: ConstStringNamePtr): Bool {.gdcall.}
  ScriptInstancePropertyGetRevert* = proc (pInstance: ScriptInstanceDataPtr;
      pName: ConstStringNamePtr; rRet: VariantPtr): Bool {.gdcall.}
  ScriptInstanceGetOwner* = proc (pInstance: ScriptInstanceDataPtr): ObjectPtr {.
      gdcall.}
  ScriptInstancePropertyStateAdd* = proc (pName: ConstStringNamePtr;
      pValue: ConstVariantPtr; pUserdata: pointer) {.gdcall.}
  ScriptInstanceGetPropertyState* = proc (pInstance: ScriptInstanceDataPtr;
      pAddFunc: ScriptInstancePropertyStateAdd; pUserdata: pointer) {.gdcall.}
  ScriptInstanceGetMethodList* = proc (pInstance: ScriptInstanceDataPtr;
                                       rCount: ptr uint32T): ptr MethodInfo {.
      gdcall.}
  ScriptInstanceFreeMethodList* = proc (pInstance: ScriptInstanceDataPtr;
                                        pList: ptr UncheckedArray[MethodInfo]) {.
      gdcall.}
  ScriptInstanceFreeMethodList2* = proc (pInstance: ScriptInstanceDataPtr;
      pList: ptr UncheckedArray[MethodInfo]; pCount: uint32T) {.gdcall.}
  ScriptInstanceHasMethod* = proc (pInstance: ScriptInstanceDataPtr;
                                   pName: ConstStringNamePtr): Bool {.gdcall.}
  ScriptInstanceGetMethodArgumentCount* = proc (
      pInstance: ScriptInstanceDataPtr; pName: ConstStringNamePtr;
      rIsValid: ptr Bool): Int {.gdcall.}
  ScriptInstanceCall* = proc (pSelf: ScriptInstanceDataPtr;
                              pMethod: ConstStringNamePtr;
                              pArgs: ptr UncheckedArray[ConstVariantPtr];
                              pArgumentCount: Int; rReturn: VariantPtr;
                              rError: ptr CallError) {.gdcall.}
  ScriptInstanceNotification* = proc (pInstance: ScriptInstanceDataPtr;
                                      pWhat: int32T) {.gdcall.}
  ScriptInstanceNotification2* = proc (pInstance: ScriptInstanceDataPtr;
                                       pWhat: int32T; pReversed: Bool) {.gdcall.}
  ScriptInstanceToString* = proc (pInstance: ScriptInstanceDataPtr;
                                  rIsValid: ptr Bool; rOut: StringPtr) {.gdcall.}
  ScriptInstanceRefCountIncremented* = proc (pInstance: ScriptInstanceDataPtr) {.
      gdcall.}
  ScriptInstanceRefCountDecremented* = proc (pInstance: ScriptInstanceDataPtr): Bool {.
      gdcall.}
  ScriptInstanceGetScript* = proc (pInstance: ScriptInstanceDataPtr): ObjectPtr {.
      gdcall.}
  ScriptInstanceIsPlaceholder* = proc (pInstance: ScriptInstanceDataPtr): Bool {.
      gdcall.}
  ScriptLanguagePtr* = pointer
  ScriptInstanceGetLanguage* = proc (pInstance: ScriptInstanceDataPtr): ScriptLanguagePtr {.
      gdcall.}
  ScriptInstanceFree* = proc (pInstance: ScriptInstanceDataPtr) {.gdcall.}
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
    initialize*: proc (userdata: pointer; pLevel: InitializationLevel) {.gdcall.}
    deinitialize*: proc (userdata: pointer; pLevel: InitializationLevel) {.
        gdcall.}
  InterfaceFunctionPtr* = proc () {.gdcall.}
  InterfaceGetProcAddress* = proc (pFunctionName: cstring): InterfaceFunctionPtr {.
      gdcall.}
  InitializationFunction* = proc (pGetProcAddress: InterfaceGetProcAddress;
                                  pLibrary: ClassLibraryPtr;
                                  rInitialization: ptr Initialization): Bool {.
      gdcall.}
  GodotVersion* {.byref.} = object
    major*: uint32T
    minor*: uint32T
    patch*: uint32T
    string*: cstring
  InterfaceGetGodotVersion* = proc (rGodotVersion: ptr GodotVersion) {.gdcall.}
  InterfaceMemAlloc* = proc (pBytes: csizeT): pointer {.gdcall.}
  InterfaceMemRealloc* = proc (pPtr: pointer; pBytes: csizeT): pointer {.gdcall.}
  InterfaceMemFree* = proc (pPtr: pointer) {.gdcall.}
  InterfacePrintError* = proc (pDescription: cstring; pFunction: cstring;
                               pFile: cstring; pLine: int32T;
                               pEditorNotify: Bool) {.gdcall.}
  InterfacePrintErrorWithMessage* = proc (pDescription: cstring;
      pMessage: cstring; pFunction: cstring; pFile: cstring; pLine: int32T;
      pEditorNotify: Bool) {.gdcall.}
  InterfacePrintWarning* = proc (pDescription: cstring; pFunction: cstring;
                                 pFile: cstring; pLine: int32T;
                                 pEditorNotify: Bool) {.gdcall.}
  InterfacePrintWarningWithMessage* = proc (pDescription: cstring;
      pMessage: cstring; pFunction: cstring; pFile: cstring; pLine: int32T;
      pEditorNotify: Bool) {.gdcall.}
  InterfacePrintScriptError* = proc (pDescription: cstring; pFunction: cstring;
                                     pFile: cstring; pLine: int32T;
                                     pEditorNotify: Bool) {.gdcall.}
  InterfacePrintScriptErrorWithMessage* = proc (pDescription: cstring;
      pMessage: cstring; pFunction: cstring; pFile: cstring; pLine: int32T;
      pEditorNotify: Bool) {.gdcall.}
  InterfaceGetNativeStructSize* = proc (pName: ConstStringNamePtr): uint64T {.
      gdcall.}
  InterfaceVariantNewCopy* = proc (rDest: UninitializedVariantPtr;
                                   pSrc: ConstVariantPtr) {.gdcall.}
  InterfaceVariantNewNil* = proc (rDest: UninitializedVariantPtr) {.gdcall.}
  InterfaceVariantDestroy* = proc (pSelf: VariantPtr) {.gdcall.}
  InterfaceVariantCall* = proc (pSelf: VariantPtr; pMethod: ConstStringNamePtr;
                                pArgs: ptr ConstVariantPtr; pArgumentCount: Int;
                                rReturn: UninitializedVariantPtr;
                                rError: ptr CallError) {.gdcall.}
  InterfaceVariantCallStatic* = proc (pType: VariantType;
                                      pMethod: ConstStringNamePtr;
                                      pArgs: ptr ConstVariantPtr;
                                      pArgumentCount: Int;
                                      rReturn: UninitializedVariantPtr;
                                      rError: ptr CallError) {.gdcall.}
  InterfaceVariantEvaluate* = proc (pOp: VariantOperator; pA: ConstVariantPtr;
                                    pB: ConstVariantPtr;
                                    rReturn: UninitializedVariantPtr;
                                    rValid: ptr Bool) {.gdcall.}
  InterfaceVariantSet* = proc (pSelf: VariantPtr; pKey: ConstVariantPtr;
                               pValue: ConstVariantPtr; rValid: ptr Bool) {.
      gdcall.}
  InterfaceVariantSetNamed* = proc (pSelf: VariantPtr; pKey: ConstStringNamePtr;
                                    pValue: ConstVariantPtr; rValid: ptr Bool) {.
      gdcall.}
  InterfaceVariantSetKeyed* = proc (pSelf: VariantPtr; pKey: ConstVariantPtr;
                                    pValue: ConstVariantPtr; rValid: ptr Bool) {.
      gdcall.}
  InterfaceVariantSetIndexed* = proc (pSelf: VariantPtr; pIndex: Int;
                                      pValue: ConstVariantPtr; rValid: ptr Bool;
                                      rOob: ptr Bool) {.gdcall.}
  InterfaceVariantGet* = proc (pSelf: ConstVariantPtr; pKey: ConstVariantPtr;
                               rRet: UninitializedVariantPtr; rValid: ptr Bool) {.
      gdcall.}
  InterfaceVariantGetNamed* = proc (pSelf: ConstVariantPtr;
                                    pKey: ConstStringNamePtr;
                                    rRet: UninitializedVariantPtr;
                                    rValid: ptr Bool) {.gdcall.}
  InterfaceVariantGetKeyed* = proc (pSelf: ConstVariantPtr;
                                    pKey: ConstVariantPtr;
                                    rRet: UninitializedVariantPtr;
                                    rValid: ptr Bool) {.gdcall.}
  InterfaceVariantGetIndexed* = proc (pSelf: ConstVariantPtr; pIndex: Int;
                                      rRet: UninitializedVariantPtr;
                                      rValid: ptr Bool; rOob: ptr Bool) {.gdcall.}
  InterfaceVariantIterInit* = proc (pSelf: ConstVariantPtr;
                                    rIter: UninitializedVariantPtr;
                                    rValid: ptr Bool): Bool {.gdcall.}
  InterfaceVariantIterNext* = proc (pSelf: ConstVariantPtr; rIter: VariantPtr;
                                    rValid: ptr Bool): Bool {.gdcall.}
  InterfaceVariantIterGet* = proc (pSelf: ConstVariantPtr; rIter: VariantPtr;
                                   rRet: UninitializedVariantPtr;
                                   rValid: ptr Bool) {.gdcall.}
  InterfaceVariantHash* = proc (pSelf: ConstVariantPtr): Int {.gdcall.}
  InterfaceVariantRecursiveHash* = proc (pSelf: ConstVariantPtr;
      pRecursionCount: Int): Int {.gdcall.}
  InterfaceVariantHashCompare* = proc (pSelf: ConstVariantPtr;
                                       pOther: ConstVariantPtr): Bool {.gdcall.}
  InterfaceVariantBooleanize* = proc (pSelf: ConstVariantPtr): Bool {.gdcall.}
  InterfaceVariantDuplicate* = proc (pSelf: ConstVariantPtr; rRet: VariantPtr;
                                     pDeep: Bool) {.gdcall.}
  InterfaceVariantStringify* = proc (pSelf: ConstVariantPtr; rRet: StringPtr) {.
      gdcall.}
  InterfaceVariantGetType* = proc (pSelf: ConstVariantPtr): VariantType {.gdcall.}
  InterfaceVariantHasMethod* = proc (pSelf: ConstVariantPtr;
                                     pMethod: ConstStringNamePtr): Bool {.gdcall.}
  InterfaceVariantHasMember* = proc (pType: VariantType;
                                     pMember: ConstStringNamePtr): Bool {.gdcall.}
  InterfaceVariantHasKey* = proc (pSelf: ConstVariantPtr; pKey: ConstVariantPtr;
                                  rValid: ptr Bool): Bool {.gdcall.}
  InterfaceVariantGetObjectInstanceId* = proc (pSelf: ConstVariantPtr): GdObjectInstanceId {.
      gdcall.}
  InterfaceVariantGetTypeName* = proc (pType: VariantType;
                                       rName: UninitializedStringPtr) {.gdcall.}
  InterfaceVariantCanConvert* = proc (pFrom: VariantType; pTo: VariantType): Bool {.
      gdcall.}
  InterfaceVariantCanConvertStrict* = proc (pFrom: VariantType; pTo: VariantType): Bool {.
      gdcall.}
  InterfaceGetVariantFromTypeConstructor* = proc (pType: VariantType): VariantFromTypeConstructorFunc {.
      gdcall.}
  InterfaceGetVariantToTypeConstructor* = proc (pType: VariantType): TypeFromVariantConstructorFunc {.
      gdcall.}
  InterfaceGetVariantGetInternalPtrFunc* = proc (pType: VariantType): VariantGetInternalPtrFunc {.
      gdcall.}
  InterfaceVariantGetPtrOperatorEvaluator* = proc (pOperator: VariantOperator;
      pTypeA: VariantType; pTypeB: VariantType): PtrOperatorEvaluator {.gdcall.}
  InterfaceVariantGetPtrBuiltinMethod* = proc (pType: VariantType;
      pMethod: ConstStringNamePtr; pHash: Int): PtrBuiltInMethod {.gdcall.}
  InterfaceVariantGetPtrConstructor* = proc (pType: VariantType;
      pConstructor: int32T): PtrConstructor {.gdcall.}
  InterfaceVariantGetPtrDestructor* = proc (pType: VariantType): PtrDestructor {.
      gdcall.}
  InterfaceVariantConstruct* = proc (pType: VariantType;
                                     rBase: UninitializedVariantPtr;
                                     pArgs: ptr ConstVariantPtr;
                                     pArgumentCount: int32T;
                                     rError: ptr CallError) {.gdcall.}
  InterfaceVariantGetPtrSetter* = proc (pType: VariantType;
                                        pMember: ConstStringNamePtr): PtrSetter {.
      gdcall.}
  InterfaceVariantGetPtrGetter* = proc (pType: VariantType;
                                        pMember: ConstStringNamePtr): PtrGetter {.
      gdcall.}
  InterfaceVariantGetPtrIndexedSetter* = proc (pType: VariantType): PtrIndexedSetter {.
      gdcall.}
  InterfaceVariantGetPtrIndexedGetter* = proc (pType: VariantType): PtrIndexedGetter {.
      gdcall.}
  InterfaceVariantGetPtrKeyedSetter* = proc (pType: VariantType): PtrKeyedSetter {.
      gdcall.}
  InterfaceVariantGetPtrKeyedGetter* = proc (pType: VariantType): PtrKeyedGetter {.
      gdcall.}
  InterfaceVariantGetPtrKeyedChecker* = proc (pType: VariantType): PtrKeyedChecker {.
      gdcall.}
  InterfaceVariantGetConstantValue* = proc (pType: VariantType;
      pConstant: ConstStringNamePtr; rRet: UninitializedVariantPtr) {.gdcall.}
  InterfaceVariantGetPtrUtilityFunction* = proc (pFunction: ConstStringNamePtr;
      pHash: Int): PtrUtilityFunction {.gdcall.}
  InterfaceStringNewWithLatin1Chars* = proc (rDest: UninitializedStringPtr;
      pContents: cstring) {.gdcall.}
  InterfaceStringNewWithUtf8Chars* = proc (rDest: UninitializedStringPtr;
      pContents: cstring) {.gdcall.}
  InterfaceStringNewWithUtf16Chars* = proc (rDest: UninitializedStringPtr;
      pContents: ptr char16T) {.gdcall.}
  InterfaceStringNewWithUtf32Chars* = proc (rDest: UninitializedStringPtr;
      pContents: ptr char32T) {.gdcall.}
  InterfaceStringNewWithWideChars* = proc (rDest: UninitializedStringPtr;
      pContents: ptr wcharT) {.gdcall.}
  InterfaceStringNewWithLatin1CharsAndLen* = proc (
      rDest: UninitializedStringPtr; pContents: cstring; pSize: Int) {.gdcall.}
  InterfaceStringNewWithUtf8CharsAndLen* = proc (rDest: UninitializedStringPtr;
      pContents: cstring; pSize: Int) {.gdcall.}
  InterfaceStringNewWithUtf8CharsAndLen2* = proc (rDest: UninitializedStringPtr;
      pContents: cstring; pSize: Int): Int {.gdcall.}
  InterfaceStringNewWithUtf16CharsAndLen* = proc (rDest: UninitializedStringPtr;
      pContents: ptr char16T; pCharCount: Int) {.gdcall.}
  InterfaceStringNewWithUtf16CharsAndLen2* = proc (
      rDest: UninitializedStringPtr; pContents: ptr char16T; pCharCount: Int;
      pDefaultLittleEndian: Bool): Int {.gdcall.}
  InterfaceStringNewWithUtf32CharsAndLen* = proc (rDest: UninitializedStringPtr;
      pContents: ptr char32T; pCharCount: Int) {.gdcall.}
  InterfaceStringNewWithWideCharsAndLen* = proc (rDest: UninitializedStringPtr;
      pContents: ptr wcharT; pCharCount: Int) {.gdcall.}
  InterfaceStringToLatin1Chars* = proc (pSelf: ConstStringPtr; rText: cstring;
                                        pMaxWriteLength: Int): Int {.gdcall.}
  InterfaceStringToUtf8Chars* = proc (pSelf: ConstStringPtr; rText: cstring;
                                      pMaxWriteLength: Int): Int {.gdcall.}
  InterfaceStringToUtf16Chars* = proc (pSelf: ConstStringPtr;
                                       rText: ptr char16T; pMaxWriteLength: Int): Int {.
      gdcall.}
  InterfaceStringToUtf32Chars* = proc (pSelf: ConstStringPtr;
                                       rText: ptr char32T; pMaxWriteLength: Int): Int {.
      gdcall.}
  InterfaceStringToWideChars* = proc (pSelf: ConstStringPtr; rText: ptr wcharT;
                                      pMaxWriteLength: Int): Int {.gdcall.}
  InterfaceStringOperatorIndex* = proc (pSelf: StringPtr; pIndex: Int): ptr char32T {.
      gdcall.}
  InterfaceStringOperatorIndexConst* = proc (pSelf: ConstStringPtr; pIndex: Int): ptr char32T {.
      gdcall.}
  InterfaceStringOperatorPlusEqString* = proc (pSelf: StringPtr;
      pB: ConstStringPtr) {.gdcall.}
  InterfaceStringOperatorPlusEqChar* = proc (pSelf: StringPtr; pB: char32T) {.
      gdcall.}
  InterfaceStringOperatorPlusEqCstr* = proc (pSelf: StringPtr; pB: cstring) {.
      gdcall.}
  InterfaceStringOperatorPlusEqWcstr* = proc (pSelf: StringPtr; pB: ptr wcharT) {.
      gdcall.}
  InterfaceStringOperatorPlusEqC32str* = proc (pSelf: StringPtr; pB: ptr char32T) {.
      gdcall.}
  InterfaceStringResize* = proc (pSelf: StringPtr; pResize: Int): Int {.gdcall.}
  InterfaceStringNameNewWithLatin1Chars* = proc (
      rDest: UninitializedStringNamePtr; pContents: cstring; pIsStatic: Bool) {.
      gdcall.}
  InterfaceStringNameNewWithUtf8Chars* = proc (
      rDest: UninitializedStringNamePtr; pContents: cstring) {.gdcall.}
  InterfaceStringNameNewWithUtf8CharsAndLen* = proc (
      rDest: UninitializedStringNamePtr; pContents: cstring; pSize: Int) {.
      gdcall.}
  InterfaceXmlParserOpenBuffer* = proc (pInstance: ObjectPtr;
                                        pBuffer: ptr uint8T; pSize: csizeT): Int {.
      gdcall.}
  InterfaceFileAccessStoreBuffer* = proc (pInstance: ObjectPtr;
      pSrc: ptr uint8T; pLength: uint64T) {.gdcall.}
  InterfaceFileAccessGetBuffer* = proc (pInstance: ConstObjectPtr;
                                        pDst: ptr uint8T; pLength: uint64T): uint64T {.
      gdcall.}
  InterfaceImagePtrw* = proc (pInstance: ObjectPtr): ptr uint8T {.gdcall.}
  InterfaceImagePtr* = proc (pInstance: ObjectPtr): ptr uint8T {.gdcall.}
  InterfaceWorkerThreadPoolAddNativeGroupTask* = proc (pInstance: ObjectPtr;
      pFunc: proc (a1: pointer; a2: uint32T) {.gdcall.}; pUserdata: pointer;
      pElements: cint; pTasks: cint; pHighPriority: Bool;
      pDescription: ConstStringPtr): int64T {.gdcall.}
  InterfaceWorkerThreadPoolAddNativeTask* = proc (pInstance: ObjectPtr;
      pFunc: proc (a1: pointer) {.gdcall.}; pUserdata: pointer;
      pHighPriority: Bool; pDescription: ConstStringPtr): int64T {.gdcall.}
  InterfacePackedByteArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr uint8T {.
      gdcall.}
  InterfacePackedByteArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr uint8T {.gdcall.}
  InterfacePackedFloat32ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr cfloat {.
      gdcall.}
  InterfacePackedFloat32ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr cfloat {.gdcall.}
  InterfacePackedFloat64ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr cdouble {.
      gdcall.}
  InterfacePackedFloat64ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr cdouble {.gdcall.}
  InterfacePackedInt32ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr int32T {.
      gdcall.}
  InterfacePackedInt32ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr int32T {.gdcall.}
  InterfacePackedInt64ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): ptr int64T {.
      gdcall.}
  InterfacePackedInt64ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): ptr int64T {.gdcall.}
  InterfacePackedStringArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): StringPtr {.
      gdcall.}
  InterfacePackedStringArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): StringPtr {.gdcall.}
  InterfacePackedVector2ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): TypePtr {.
      gdcall.}
  InterfacePackedVector2ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): TypePtr {.gdcall.}
  InterfacePackedVector3ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): TypePtr {.
      gdcall.}
  InterfacePackedVector3ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): TypePtr {.gdcall.}
  InterfacePackedVector4ArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): TypePtr {.
      gdcall.}
  InterfacePackedVector4ArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): TypePtr {.gdcall.}
  InterfacePackedColorArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): TypePtr {.
      gdcall.}
  InterfacePackedColorArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pIndex: Int): TypePtr {.gdcall.}
  InterfaceArrayOperatorIndex* = proc (pSelf: TypePtr; pIndex: Int): VariantPtr {.
      gdcall.}
  InterfaceArrayOperatorIndexConst* = proc (pSelf: ConstTypePtr; pIndex: Int): VariantPtr {.
      gdcall.}
  InterfaceArrayRef* = proc (pSelf: TypePtr; pFrom: ConstTypePtr) {.gdcall.}
  InterfaceArraySetTyped* = proc (pSelf: TypePtr; pType: VariantType;
                                  pClassName: ConstStringNamePtr;
                                  pScript: ConstVariantPtr) {.gdcall.}
  InterfaceDictionaryOperatorIndex* = proc (pSelf: TypePtr;
      pKey: ConstVariantPtr): VariantPtr {.gdcall.}
  InterfaceDictionaryOperatorIndexConst* = proc (pSelf: ConstTypePtr;
      pKey: ConstVariantPtr): VariantPtr {.gdcall.}
  InterfaceDictionarySetTyped* = proc (pSelf: TypePtr; pKeyType: VariantType;
                                       pKeyClassName: ConstStringNamePtr;
                                       pKeyScript: ConstVariantPtr;
                                       pValueType: VariantType;
                                       pValueClassName: ConstStringNamePtr;
                                       pValueScript: ConstVariantPtr) {.gdcall.}
  InterfaceObjectMethodBindCall* = proc (pMethodBind: MethodBindPtr;
      pInstance: ObjectPtr; pArgs: ptr ConstVariantPtr; pArgCount: Int;
      rRet: UninitializedVariantPtr; rError: ptr CallError) {.gdcall.}
  InterfaceObjectMethodBindPtrcall* = proc (pMethodBind: MethodBindPtr;
      pInstance: ObjectPtr; pArgs: ptr ConstTypePtr; rRet: TypePtr) {.gdcall.}
  InterfaceObjectDestroy* = proc (pO: ObjectPtr) {.gdcall.}
  InterfaceGlobalGetSingleton* = proc (pName: ConstStringNamePtr): ObjectPtr {.
      gdcall.}
  InterfaceObjectGetInstanceBinding* = proc (pO: ObjectPtr; pToken: pointer;
      pCallbacks: ptr InstanceBindingCallbacks): pointer {.gdcall.}
  InterfaceObjectSetInstanceBinding* = proc (pO: ObjectPtr; pToken: pointer;
      pBinding: pointer; pCallbacks: ptr InstanceBindingCallbacks) {.gdcall.}
  InterfaceObjectFreeInstanceBinding* = proc (pO: ObjectPtr; pToken: pointer) {.
      gdcall.}
  InterfaceObjectSetInstance* = proc (pO: ObjectPtr;
                                      pClassname: ConstStringNamePtr;
                                      pInstance: ClassInstancePtr) {.gdcall.}
  InterfaceObjectGetClassName* = proc (pObject: ConstObjectPtr;
                                       pLibrary: ClassLibraryPtr;
                                       rClassName: UninitializedStringNamePtr): Bool {.
      gdcall.}
  InterfaceObjectCastTo* = proc (pObject: ConstObjectPtr; pClassTag: pointer): ObjectPtr {.
      gdcall.}
  InterfaceObjectGetInstanceFromId* = proc (pInstanceId: GdObjectInstanceId): ObjectPtr {.
      gdcall.}
  InterfaceObjectGetInstanceId* = proc (pObject: ConstObjectPtr): GdObjectInstanceId {.
      gdcall.}
  InterfaceObjectHasScriptMethod* = proc (pObject: ConstObjectPtr;
      pMethod: ConstStringNamePtr): Bool {.gdcall.}
  InterfaceObjectCallScriptMethod* = proc (pObject: ObjectPtr;
      pMethod: ConstStringNamePtr; pArgs: ptr ConstVariantPtr;
      pArgumentCount: Int; rReturn: UninitializedVariantPtr;
      rError: ptr CallError) {.gdcall.}
  InterfaceRefGetObject* = proc (pRef: ConstRefPtr): ObjectPtr {.gdcall.}
  InterfaceRefSetObject* = proc (pRef: RefPtr; pObject: ObjectPtr) {.gdcall.}
  InterfaceScriptInstanceCreate* = proc (pInfo: ptr ScriptInstanceInfo;
      pInstanceData: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall.}
  InterfaceScriptInstanceCreate2* = proc (pInfo: ptr ScriptInstanceInfo2;
      pInstanceData: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall.}
  InterfaceScriptInstanceCreate3* = proc (pInfo: ptr ScriptInstanceInfo3;
      pInstanceData: ScriptInstanceDataPtr): ScriptInstancePtr {.gdcall.}
  InterfacePlaceHolderScriptInstanceCreate* = proc (pLanguage: ObjectPtr;
      pScript: ObjectPtr; pOwner: ObjectPtr): ScriptInstancePtr {.gdcall.}
  InterfacePlaceHolderScriptInstanceUpdate* = proc (
      pPlaceholder: ScriptInstancePtr; pProperties: ConstTypePtr;
      pValues: ConstTypePtr) {.gdcall.}
  InterfaceObjectGetScriptInstance* = proc (pObject: ConstObjectPtr;
      pLanguage: ObjectPtr): ScriptInstanceDataPtr {.gdcall.}
  InterfaceCallableCustomCreate* = proc (rCallable: UninitializedTypePtr;
      pCallableCustomInfo: ptr CallableCustomInfo) {.gdcall.}
  InterfaceCallableCustomCreate2* = proc (rCallable: UninitializedTypePtr;
      pCallableCustomInfo: ptr CallableCustomInfo2) {.gdcall.}
  InterfaceCallableCustomGetUserData* = proc (pCallable: ConstTypePtr;
      pToken: pointer): pointer {.gdcall.}
  InterfaceClassdbConstructObject* = proc (pClassname: ConstStringNamePtr): ObjectPtr {.
      gdcall.}
  InterfaceClassdbConstructObject2* = proc (pClassname: ConstStringNamePtr): ObjectPtr {.
      gdcall.}
  InterfaceClassdbGetMethodBind* = proc (pClassname: ConstStringNamePtr;
      pMethodname: ConstStringNamePtr; pHash: Int): MethodBindPtr {.gdcall.}
  InterfaceClassdbGetClassTag* = proc (pClassname: ConstStringNamePtr): pointer {.
      gdcall.}
  InterfaceClassdbRegisterExtensionClass* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr; pParentClassName: ConstStringNamePtr;
      pExtensionFuncs: ptr ClassCreationInfo) {.gdcall.}
  InterfaceClassdbRegisterExtensionClass2* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr; pParentClassName: ConstStringNamePtr;
      pExtensionFuncs: ptr ClassCreationInfo2) {.gdcall.}
  InterfaceClassdbRegisterExtensionClass3* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr; pParentClassName: ConstStringNamePtr;
      pExtensionFuncs: ptr ClassCreationInfo3) {.gdcall.}
  InterfaceClassdbRegisterExtensionClass4* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr; pParentClassName: ConstStringNamePtr;
      pExtensionFuncs: ptr ClassCreationInfo4) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassMethod* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pMethodInfo: ptr ClassMethodInfo) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassVirtualMethod* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pMethodInfo: ptr ClassVirtualMethodInfo) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassIntegerConstant* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pEnumName: ConstStringNamePtr; pConstantName: ConstStringNamePtr;
      pConstantValue: Int; pIsBitfield: Bool) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassProperty* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pInfo: ptr PropertyInfo; pSetter: ConstStringNamePtr;
      pGetter: ConstStringNamePtr) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassPropertyIndexed* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pInfo: ptr PropertyInfo; pSetter: ConstStringNamePtr;
      pGetter: ConstStringNamePtr; pIndex: Int) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassPropertyGroup* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pGroupName: ConstStringPtr; pPrefix: ConstStringPtr) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassPropertySubgroup* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pSubgroupName: ConstStringPtr; pPrefix: ConstStringPtr) {.gdcall.}
  InterfaceClassdbRegisterExtensionClassSignal* = proc (
      pLibrary: ClassLibraryPtr; pClassName: ConstStringNamePtr;
      pSignalName: ConstStringNamePtr; pArgumentInfo: ptr PropertyInfo;
      pArgumentCount: Int) {.gdcall.}
  InterfaceClassdbUnregisterExtensionClass* = proc (pLibrary: ClassLibraryPtr;
      pClassName: ConstStringNamePtr) {.gdcall.}
  InterfaceGetLibraryPath* = proc (pLibrary: ClassLibraryPtr;
                                   rPath: UninitializedStringPtr) {.gdcall.}
  InterfaceEditorAddPlugin* = proc (pClassName: ConstStringNamePtr) {.gdcall.}
  InterfaceEditorRemovePlugin* = proc (pClassName: ConstStringNamePtr) {.gdcall.}
  InterfaceEditorHelpLoadXmlFromUtf8Chars* = proc (pData: cstring) {.gdcall.}
  InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen* = proc (pData: cstring;
      pSize: Int) {.gdcall.}
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
  interfaceVariantGetObjectInstanceId*: InterfaceVariantGetObjectInstanceId
  interfaceVariantGetTypeName*: InterfaceVariantGetTypeName
  interfaceVariantCanConvert*: InterfaceVariantCanConvert
  interfaceVariantCanConvertStrict*: InterfaceVariantCanConvertStrict
  interfaceGetVariantFromTypeConstructor*: InterfaceGetVariantFromTypeConstructor
  interfaceGetVariantToTypeConstructor*: InterfaceGetVariantToTypeConstructor
  interfaceGetVariantGetInternalPtrFunc*: InterfaceGetVariantGetInternalPtrFunc
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
  interfaceStringNewWithUtf8CharsAndLen*: InterfaceStringNewWithUtf8CharsAndLen
  interfaceStringNewWithUtf8CharsAndLen2*: InterfaceStringNewWithUtf8CharsAndLen2
  interfaceStringNewWithUtf16CharsAndLen*: InterfaceStringNewWithUtf16CharsAndLen
  interfaceStringNewWithUtf16CharsAndLen2*: InterfaceStringNewWithUtf16CharsAndLen2
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
  interfaceStringResize*: InterfaceStringResize
  interfaceStringNameNewWithLatin1Chars*: InterfaceStringNameNewWithLatin1Chars
  interfaceStringNameNewWithUtf8Chars*: InterfaceStringNameNewWithUtf8Chars
  interfaceStringNameNewWithUtf8CharsAndLen*: InterfaceStringNameNewWithUtf8CharsAndLen
  interfaceXmlParserOpenBuffer*: InterfaceXmlParserOpenBuffer
  interfaceFileAccessStoreBuffer*: InterfaceFileAccessStoreBuffer
  interfaceFileAccessGetBuffer*: InterfaceFileAccessGetBuffer
  interfaceImagePtrw*: InterfaceImagePtrw
  interfaceImagePtr*: InterfaceImagePtr
  interfaceWorkerThreadPoolAddNativeGroupTask*: InterfaceWorkerThreadPoolAddNativeGroupTask
  interfaceWorkerThreadPoolAddNativeTask*: InterfaceWorkerThreadPoolAddNativeTask
  interfacePackedByteArrayOperatorIndex*: InterfacePackedByteArrayOperatorIndex
  interfacePackedByteArrayOperatorIndexConst*: InterfacePackedByteArrayOperatorIndexConst
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
  interfacePackedVector4ArrayOperatorIndex*: InterfacePackedVector4ArrayOperatorIndex
  interfacePackedVector4ArrayOperatorIndexConst*: InterfacePackedVector4ArrayOperatorIndexConst
  interfacePackedColorArrayOperatorIndex*: InterfacePackedColorArrayOperatorIndex
  interfacePackedColorArrayOperatorIndexConst*: InterfacePackedColorArrayOperatorIndexConst
  interfaceArrayOperatorIndex*: InterfaceArrayOperatorIndex
  interfaceArrayOperatorIndexConst*: InterfaceArrayOperatorIndexConst
  interfaceArrayRef*: InterfaceArrayRef
  interfaceArraySetTyped*: InterfaceArraySetTyped
  interfaceDictionaryOperatorIndex*: InterfaceDictionaryOperatorIndex
  interfaceDictionaryOperatorIndexConst*: InterfaceDictionaryOperatorIndexConst
  interfaceDictionarySetTyped*: InterfaceDictionarySetTyped
  interfaceObjectMethodBindCall*: InterfaceObjectMethodBindCall
  interfaceObjectMethodBindPtrcall*: InterfaceObjectMethodBindPtrcall
  interfaceObjectDestroy*: InterfaceObjectDestroy
  interfaceGlobalGetSingleton*: InterfaceGlobalGetSingleton
  interfaceObjectGetInstanceBinding*: InterfaceObjectGetInstanceBinding
  interfaceObjectSetInstanceBinding*: InterfaceObjectSetInstanceBinding
  interfaceObjectFreeInstanceBinding*: InterfaceObjectFreeInstanceBinding
  interfaceObjectSetInstance*: InterfaceObjectSetInstance
  interfaceObjectGetClassName*: InterfaceObjectGetClassName
  interfaceObjectCastTo*: InterfaceObjectCastTo
  interfaceObjectGetInstanceFromId*: InterfaceObjectGetInstanceFromId
  interfaceObjectGetInstanceId*: InterfaceObjectGetInstanceId
  interfaceObjectHasScriptMethod*: InterfaceObjectHasScriptMethod
  interfaceObjectCallScriptMethod*: InterfaceObjectCallScriptMethod
  interfaceRefGetObject*: InterfaceRefGetObject
  interfaceRefSetObject*: InterfaceRefSetObject
  interfaceScriptInstanceCreate*: InterfaceScriptInstanceCreate
  interfaceScriptInstanceCreate2*: InterfaceScriptInstanceCreate2
  interfaceScriptInstanceCreate3*: InterfaceScriptInstanceCreate3
  interfacePlaceHolderScriptInstanceCreate*: InterfacePlaceHolderScriptInstanceCreate
  interfacePlaceHolderScriptInstanceUpdate*: InterfacePlaceHolderScriptInstanceUpdate
  interfaceObjectGetScriptInstance*: InterfaceObjectGetScriptInstance
  interfaceCallableCustomCreate*: InterfaceCallableCustomCreate
  interfaceCallableCustomCreate2*: InterfaceCallableCustomCreate2
  interfaceCallableCustomGetUserData*: InterfaceCallableCustomGetUserData
  interfaceClassdbConstructObject*: InterfaceClassdbConstructObject
  interfaceClassdbConstructObject2*: InterfaceClassdbConstructObject2
  interfaceClassdbGetMethodBind*: InterfaceClassdbGetMethodBind
  interfaceClassdbGetClassTag*: InterfaceClassdbGetClassTag
  interfaceClassdbRegisterExtensionClass*: InterfaceClassdbRegisterExtensionClass
  interfaceClassdbRegisterExtensionClass2*: InterfaceClassdbRegisterExtensionClass2
  interfaceClassdbRegisterExtensionClass3*: InterfaceClassdbRegisterExtensionClass3
  interfaceClassdbRegisterExtensionClass4*: InterfaceClassdbRegisterExtensionClass4
  interfaceClassdbRegisterExtensionClassMethod*: InterfaceClassdbRegisterExtensionClassMethod
  interfaceClassdbRegisterExtensionClassVirtualMethod*: InterfaceClassdbRegisterExtensionClassVirtualMethod
  interfaceClassdbRegisterExtensionClassIntegerConstant*: InterfaceClassdbRegisterExtensionClassIntegerConstant
  interfaceClassdbRegisterExtensionClassProperty*: InterfaceClassdbRegisterExtensionClassProperty
  interfaceClassdbRegisterExtensionClassPropertyIndexed*: InterfaceClassdbRegisterExtensionClassPropertyIndexed
  interfaceClassdbRegisterExtensionClassPropertyGroup*: InterfaceClassdbRegisterExtensionClassPropertyGroup
  interfaceClassdbRegisterExtensionClassPropertySubgroup*: InterfaceClassdbRegisterExtensionClassPropertySubgroup
  interfaceClassdbRegisterExtensionClassSignal*: InterfaceClassdbRegisterExtensionClassSignal
  interfaceClassdbUnregisterExtensionClass*: InterfaceClassdbUnregisterExtensionClass
  interfaceGetLibraryPath*: InterfaceGetLibraryPath
  interfaceEditorAddPlugin*: InterfaceEditorAddPlugin
  interfaceEditorRemovePlugin*: InterfaceEditorRemovePlugin
  interfaceEditorHelpLoadXmlFromUtf8Chars*: InterfaceEditorHelpLoadXmlFromUtf8Chars
  interfaceEditorHelpLoadXmlFromUtf8CharsAndLen*: InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen
proc loadApi(getProcAddress: InterfaceGetProcAddress) =
  interfaceGetGodotVersion = cast[InterfaceGetGodotVersion](getProcAddress(
      cstring("get_godot_version")))
  interfaceMemAlloc = cast[InterfaceMemAlloc](getProcAddress(
      cstring("mem_alloc")))
  interfaceMemRealloc = cast[InterfaceMemRealloc](getProcAddress(
      cstring("mem_realloc")))
  interfaceMemFree = cast[InterfaceMemFree](getProcAddress(cstring("mem_free")))
  interfacePrintError = cast[InterfacePrintError](getProcAddress(
      cstring("print_error")))
  interfacePrintErrorWithMessage = cast[InterfacePrintErrorWithMessage](getProcAddress(
      cstring("print_error_with_message")))
  interfacePrintWarning = cast[InterfacePrintWarning](getProcAddress(
      cstring("print_warning")))
  interfacePrintWarningWithMessage = cast[InterfacePrintWarningWithMessage](getProcAddress(
      cstring("print_warning_with_message")))
  interfacePrintScriptError = cast[InterfacePrintScriptError](getProcAddress(
      cstring("print_script_error")))
  interfacePrintScriptErrorWithMessage = cast[InterfacePrintScriptErrorWithMessage](getProcAddress(
      cstring("print_script_error_with_message")))
  interfaceGetNativeStructSize = cast[InterfaceGetNativeStructSize](getProcAddress(
      cstring("get_native_struct_size")))
  interfaceVariantNewCopy = cast[InterfaceVariantNewCopy](getProcAddress(
      cstring("variant_new_copy")))
  interfaceVariantNewNil = cast[InterfaceVariantNewNil](getProcAddress(
      cstring("variant_new_nil")))
  interfaceVariantDestroy = cast[InterfaceVariantDestroy](getProcAddress(
      cstring("variant_destroy")))
  interfaceVariantCall = cast[InterfaceVariantCall](getProcAddress(
      cstring("variant_call")))
  interfaceVariantCallStatic = cast[InterfaceVariantCallStatic](getProcAddress(
      cstring("variant_call_static")))
  interfaceVariantEvaluate = cast[InterfaceVariantEvaluate](getProcAddress(
      cstring("variant_evaluate")))
  interfaceVariantSet = cast[InterfaceVariantSet](getProcAddress(
      cstring("variant_set")))
  interfaceVariantSetNamed = cast[InterfaceVariantSetNamed](getProcAddress(
      cstring("variant_set_named")))
  interfaceVariantSetKeyed = cast[InterfaceVariantSetKeyed](getProcAddress(
      cstring("variant_set_keyed")))
  interfaceVariantSetIndexed = cast[InterfaceVariantSetIndexed](getProcAddress(
      cstring("variant_set_indexed")))
  interfaceVariantGet = cast[InterfaceVariantGet](getProcAddress(
      cstring("variant_get")))
  interfaceVariantGetNamed = cast[InterfaceVariantGetNamed](getProcAddress(
      cstring("variant_get_named")))
  interfaceVariantGetKeyed = cast[InterfaceVariantGetKeyed](getProcAddress(
      cstring("variant_get_keyed")))
  interfaceVariantGetIndexed = cast[InterfaceVariantGetIndexed](getProcAddress(
      cstring("variant_get_indexed")))
  interfaceVariantIterInit = cast[InterfaceVariantIterInit](getProcAddress(
      cstring("variant_iter_init")))
  interfaceVariantIterNext = cast[InterfaceVariantIterNext](getProcAddress(
      cstring("variant_iter_next")))
  interfaceVariantIterGet = cast[InterfaceVariantIterGet](getProcAddress(
      cstring("variant_iter_get")))
  interfaceVariantHash = cast[InterfaceVariantHash](getProcAddress(
      cstring("variant_hash")))
  interfaceVariantRecursiveHash = cast[InterfaceVariantRecursiveHash](getProcAddress(
      cstring("variant_recursive_hash")))
  interfaceVariantHashCompare = cast[InterfaceVariantHashCompare](getProcAddress(
      cstring("variant_hash_compare")))
  interfaceVariantBooleanize = cast[InterfaceVariantBooleanize](getProcAddress(
      cstring("variant_booleanize")))
  interfaceVariantDuplicate = cast[InterfaceVariantDuplicate](getProcAddress(
      cstring("variant_duplicate")))
  interfaceVariantStringify = cast[InterfaceVariantStringify](getProcAddress(
      cstring("variant_stringify")))
  interfaceVariantGetType = cast[InterfaceVariantGetType](getProcAddress(
      cstring("variant_get_type")))
  interfaceVariantHasMethod = cast[InterfaceVariantHasMethod](getProcAddress(
      cstring("variant_has_method")))
  interfaceVariantHasMember = cast[InterfaceVariantHasMember](getProcAddress(
      cstring("variant_has_member")))
  interfaceVariantHasKey = cast[InterfaceVariantHasKey](getProcAddress(
      cstring("variant_has_key")))
  interfaceVariantGetObjectInstanceId = cast[InterfaceVariantGetObjectInstanceId](getProcAddress(
      cstring("variant_get_object_instance_id")))
  interfaceVariantGetTypeName = cast[InterfaceVariantGetTypeName](getProcAddress(
      cstring("variant_get_type_name")))
  interfaceVariantCanConvert = cast[InterfaceVariantCanConvert](getProcAddress(
      cstring("variant_can_convert")))
  interfaceVariantCanConvertStrict = cast[InterfaceVariantCanConvertStrict](getProcAddress(
      cstring("variant_can_convert_strict")))
  interfaceGetVariantFromTypeConstructor = cast[InterfaceGetVariantFromTypeConstructor](getProcAddress(
      cstring("get_variant_from_type_constructor")))
  interfaceGetVariantToTypeConstructor = cast[InterfaceGetVariantToTypeConstructor](getProcAddress(
      cstring("get_variant_to_type_constructor")))
  interfaceGetVariantGetInternalPtrFunc = cast[InterfaceGetVariantGetInternalPtrFunc](getProcAddress(
      cstring("variant_get_ptr_internal_getter")))
  interfaceVariantGetPtrOperatorEvaluator = cast[InterfaceVariantGetPtrOperatorEvaluator](getProcAddress(
      cstring("variant_get_ptr_operator_evaluator")))
  interfaceVariantGetPtrBuiltinMethod = cast[InterfaceVariantGetPtrBuiltinMethod](getProcAddress(
      cstring("variant_get_ptr_builtin_method")))
  interfaceVariantGetPtrConstructor = cast[InterfaceVariantGetPtrConstructor](getProcAddress(
      cstring("variant_get_ptr_constructor")))
  interfaceVariantGetPtrDestructor = cast[InterfaceVariantGetPtrDestructor](getProcAddress(
      cstring("variant_get_ptr_destructor")))
  interfaceVariantConstruct = cast[InterfaceVariantConstruct](getProcAddress(
      cstring("variant_construct")))
  interfaceVariantGetPtrSetter = cast[InterfaceVariantGetPtrSetter](getProcAddress(
      cstring("variant_get_ptr_setter")))
  interfaceVariantGetPtrGetter = cast[InterfaceVariantGetPtrGetter](getProcAddress(
      cstring("variant_get_ptr_getter")))
  interfaceVariantGetPtrIndexedSetter = cast[InterfaceVariantGetPtrIndexedSetter](getProcAddress(
      cstring("variant_get_ptr_indexed_setter")))
  interfaceVariantGetPtrIndexedGetter = cast[InterfaceVariantGetPtrIndexedGetter](getProcAddress(
      cstring("variant_get_ptr_indexed_getter")))
  interfaceVariantGetPtrKeyedSetter = cast[InterfaceVariantGetPtrKeyedSetter](getProcAddress(
      cstring("variant_get_ptr_keyed_setter")))
  interfaceVariantGetPtrKeyedGetter = cast[InterfaceVariantGetPtrKeyedGetter](getProcAddress(
      cstring("variant_get_ptr_keyed_getter")))
  interfaceVariantGetPtrKeyedChecker = cast[InterfaceVariantGetPtrKeyedChecker](getProcAddress(
      cstring("variant_get_ptr_keyed_checker")))
  interfaceVariantGetConstantValue = cast[InterfaceVariantGetConstantValue](getProcAddress(
      cstring("variant_get_constant_value")))
  interfaceVariantGetPtrUtilityFunction = cast[InterfaceVariantGetPtrUtilityFunction](getProcAddress(
      cstring("variant_get_ptr_utility_function")))
  interfaceStringNewWithLatin1Chars = cast[InterfaceStringNewWithLatin1Chars](getProcAddress(
      cstring("string_new_with_latin1_chars")))
  interfaceStringNewWithUtf8Chars = cast[InterfaceStringNewWithUtf8Chars](getProcAddress(
      cstring("string_new_with_utf8_chars")))
  interfaceStringNewWithUtf16Chars = cast[InterfaceStringNewWithUtf16Chars](getProcAddress(
      cstring("string_new_with_utf16_chars")))
  interfaceStringNewWithUtf32Chars = cast[InterfaceStringNewWithUtf32Chars](getProcAddress(
      cstring("string_new_with_utf32_chars")))
  interfaceStringNewWithWideChars = cast[InterfaceStringNewWithWideChars](getProcAddress(
      cstring("string_new_with_wide_chars")))
  interfaceStringNewWithLatin1CharsAndLen = cast[InterfaceStringNewWithLatin1CharsAndLen](getProcAddress(
      cstring("string_new_with_latin1_chars_and_len")))
  interfaceStringNewWithUtf8CharsAndLen = cast[InterfaceStringNewWithUtf8CharsAndLen](getProcAddress(
      cstring("string_new_with_utf8_chars_and_len")))
  interfaceStringNewWithUtf8CharsAndLen2 = cast[InterfaceStringNewWithUtf8CharsAndLen2](getProcAddress(
      cstring("string_new_with_utf8_chars_and_len2")))
  interfaceStringNewWithUtf16CharsAndLen = cast[InterfaceStringNewWithUtf16CharsAndLen](getProcAddress(
      cstring("string_new_with_utf16_chars_and_len")))
  interfaceStringNewWithUtf16CharsAndLen2 = cast[InterfaceStringNewWithUtf16CharsAndLen2](getProcAddress(
      cstring("string_new_with_utf16_chars_and_len2")))
  interfaceStringNewWithUtf32CharsAndLen = cast[InterfaceStringNewWithUtf32CharsAndLen](getProcAddress(
      cstring("string_new_with_utf32_chars_and_len")))
  interfaceStringNewWithWideCharsAndLen = cast[InterfaceStringNewWithWideCharsAndLen](getProcAddress(
      cstring("string_new_with_wide_chars_and_len")))
  interfaceStringToLatin1Chars = cast[InterfaceStringToLatin1Chars](getProcAddress(
      cstring("string_to_latin1_chars")))
  interfaceStringToUtf8Chars = cast[InterfaceStringToUtf8Chars](getProcAddress(
      cstring("string_to_utf8_chars")))
  interfaceStringToUtf16Chars = cast[InterfaceStringToUtf16Chars](getProcAddress(
      cstring("string_to_utf16_chars")))
  interfaceStringToUtf32Chars = cast[InterfaceStringToUtf32Chars](getProcAddress(
      cstring("string_to_utf32_chars")))
  interfaceStringToWideChars = cast[InterfaceStringToWideChars](getProcAddress(
      cstring("string_to_wide_chars")))
  interfaceStringOperatorIndex = cast[InterfaceStringOperatorIndex](getProcAddress(
      cstring("string_operator_index")))
  interfaceStringOperatorIndexConst = cast[InterfaceStringOperatorIndexConst](getProcAddress(
      cstring("string_operator_index_const")))
  interfaceStringOperatorPlusEqString = cast[InterfaceStringOperatorPlusEqString](getProcAddress(
      cstring("string_operator_plus_eq_string")))
  interfaceStringOperatorPlusEqChar = cast[InterfaceStringOperatorPlusEqChar](getProcAddress(
      cstring("string_operator_plus_eq_char")))
  interfaceStringOperatorPlusEqCstr = cast[InterfaceStringOperatorPlusEqCstr](getProcAddress(
      cstring("string_operator_plus_eq_cstr")))
  interfaceStringOperatorPlusEqWcstr = cast[InterfaceStringOperatorPlusEqWcstr](getProcAddress(
      cstring("string_operator_plus_eq_wcstr")))
  interfaceStringOperatorPlusEqC32str = cast[InterfaceStringOperatorPlusEqC32str](getProcAddress(
      cstring("string_operator_plus_eq_c32str")))
  interfaceStringResize = cast[InterfaceStringResize](getProcAddress(
      cstring("string_resize")))
  interfaceStringNameNewWithLatin1Chars = cast[InterfaceStringNameNewWithLatin1Chars](getProcAddress(
      cstring("string_name_new_with_latin1_chars")))
  interfaceStringNameNewWithUtf8Chars = cast[InterfaceStringNameNewWithUtf8Chars](getProcAddress(
      cstring("string_name_new_with_utf8_chars")))
  interfaceStringNameNewWithUtf8CharsAndLen = cast[InterfaceStringNameNewWithUtf8CharsAndLen](getProcAddress(
      cstring("string_name_new_with_utf8_chars_and_len")))
  interfaceXmlParserOpenBuffer = cast[InterfaceXmlParserOpenBuffer](getProcAddress(
      cstring("xml_parser_open_buffer")))
  interfaceFileAccessStoreBuffer = cast[InterfaceFileAccessStoreBuffer](getProcAddress(
      cstring("file_access_store_buffer")))
  interfaceFileAccessGetBuffer = cast[InterfaceFileAccessGetBuffer](getProcAddress(
      cstring("file_access_get_buffer")))
  interfaceImagePtrw = cast[InterfaceImagePtrw](getProcAddress(
      cstring("image_ptrw")))
  interfaceImagePtr = cast[InterfaceImagePtr](getProcAddress(
      cstring("image_ptr")))
  interfaceWorkerThreadPoolAddNativeGroupTask = cast[InterfaceWorkerThreadPoolAddNativeGroupTask](getProcAddress(
      cstring("worker_thread_pool_add_native_group_task")))
  interfaceWorkerThreadPoolAddNativeTask = cast[InterfaceWorkerThreadPoolAddNativeTask](getProcAddress(
      cstring("worker_thread_pool_add_native_task")))
  interfacePackedByteArrayOperatorIndex = cast[InterfacePackedByteArrayOperatorIndex](getProcAddress(
      cstring("packed_byte_array_operator_index")))
  interfacePackedByteArrayOperatorIndexConst = cast[InterfacePackedByteArrayOperatorIndexConst](getProcAddress(
      cstring("packed_byte_array_operator_index_const")))
  interfacePackedFloat32ArrayOperatorIndex = cast[InterfacePackedFloat32ArrayOperatorIndex](getProcAddress(
      cstring("packed_float32_array_operator_index")))
  interfacePackedFloat32ArrayOperatorIndexConst = cast[InterfacePackedFloat32ArrayOperatorIndexConst](getProcAddress(
      cstring("packed_float32_array_operator_index_const")))
  interfacePackedFloat64ArrayOperatorIndex = cast[InterfacePackedFloat64ArrayOperatorIndex](getProcAddress(
      cstring("packed_float64_array_operator_index")))
  interfacePackedFloat64ArrayOperatorIndexConst = cast[InterfacePackedFloat64ArrayOperatorIndexConst](getProcAddress(
      cstring("packed_float64_array_operator_index_const")))
  interfacePackedInt32ArrayOperatorIndex = cast[InterfacePackedInt32ArrayOperatorIndex](getProcAddress(
      cstring("packed_int32_array_operator_index")))
  interfacePackedInt32ArrayOperatorIndexConst = cast[InterfacePackedInt32ArrayOperatorIndexConst](getProcAddress(
      cstring("packed_int32_array_operator_index_const")))
  interfacePackedInt64ArrayOperatorIndex = cast[InterfacePackedInt64ArrayOperatorIndex](getProcAddress(
      cstring("packed_int64_array_operator_index")))
  interfacePackedInt64ArrayOperatorIndexConst = cast[InterfacePackedInt64ArrayOperatorIndexConst](getProcAddress(
      cstring("packed_int64_array_operator_index_const")))
  interfacePackedStringArrayOperatorIndex = cast[InterfacePackedStringArrayOperatorIndex](getProcAddress(
      cstring("packed_string_array_operator_index")))
  interfacePackedStringArrayOperatorIndexConst = cast[InterfacePackedStringArrayOperatorIndexConst](getProcAddress(
      cstring("packed_string_array_operator_index_const")))
  interfacePackedVector2ArrayOperatorIndex = cast[InterfacePackedVector2ArrayOperatorIndex](getProcAddress(
      cstring("packed_vector2_array_operator_index")))
  interfacePackedVector2ArrayOperatorIndexConst = cast[InterfacePackedVector2ArrayOperatorIndexConst](getProcAddress(
      cstring("packed_vector2_array_operator_index_const")))
  interfacePackedVector3ArrayOperatorIndex = cast[InterfacePackedVector3ArrayOperatorIndex](getProcAddress(
      cstring("packed_vector3_array_operator_index")))
  interfacePackedVector3ArrayOperatorIndexConst = cast[InterfacePackedVector3ArrayOperatorIndexConst](getProcAddress(
      cstring("packed_vector3_array_operator_index_const")))
  interfacePackedVector4ArrayOperatorIndex = cast[InterfacePackedVector4ArrayOperatorIndex](getProcAddress(
      cstring("packed_vector4_array_operator_index")))
  interfacePackedVector4ArrayOperatorIndexConst = cast[InterfacePackedVector4ArrayOperatorIndexConst](getProcAddress(
      cstring("packed_vector4_array_operator_index_const")))
  interfacePackedColorArrayOperatorIndex = cast[InterfacePackedColorArrayOperatorIndex](getProcAddress(
      cstring("packed_color_array_operator_index")))
  interfacePackedColorArrayOperatorIndexConst = cast[InterfacePackedColorArrayOperatorIndexConst](getProcAddress(
      cstring("packed_color_array_operator_index_const")))
  interfaceArrayOperatorIndex = cast[InterfaceArrayOperatorIndex](getProcAddress(
      cstring("array_operator_index")))
  interfaceArrayOperatorIndexConst = cast[InterfaceArrayOperatorIndexConst](getProcAddress(
      cstring("array_operator_index_const")))
  interfaceArrayRef = cast[InterfaceArrayRef](getProcAddress(
      cstring("array_ref")))
  interfaceArraySetTyped = cast[InterfaceArraySetTyped](getProcAddress(
      cstring("array_set_typed")))
  interfaceDictionaryOperatorIndex = cast[InterfaceDictionaryOperatorIndex](getProcAddress(
      cstring("dictionary_operator_index")))
  interfaceDictionaryOperatorIndexConst = cast[InterfaceDictionaryOperatorIndexConst](getProcAddress(
      cstring("dictionary_operator_index_const")))
  interfaceDictionarySetTyped = cast[InterfaceDictionarySetTyped](getProcAddress(
      cstring("dictionary_set_typed")))
  interfaceObjectMethodBindCall = cast[InterfaceObjectMethodBindCall](getProcAddress(
      cstring("object_method_bind_call")))
  interfaceObjectMethodBindPtrcall = cast[InterfaceObjectMethodBindPtrcall](getProcAddress(
      cstring("object_method_bind_ptrcall")))
  interfaceObjectDestroy = cast[InterfaceObjectDestroy](getProcAddress(
      cstring("object_destroy")))
  interfaceGlobalGetSingleton = cast[InterfaceGlobalGetSingleton](getProcAddress(
      cstring("global_get_singleton")))
  interfaceObjectGetInstanceBinding = cast[InterfaceObjectGetInstanceBinding](getProcAddress(
      cstring("object_get_instance_binding")))
  interfaceObjectSetInstanceBinding = cast[InterfaceObjectSetInstanceBinding](getProcAddress(
      cstring("object_set_instance_binding")))
  interfaceObjectFreeInstanceBinding = cast[InterfaceObjectFreeInstanceBinding](getProcAddress(
      cstring("object_free_instance_binding")))
  interfaceObjectSetInstance = cast[InterfaceObjectSetInstance](getProcAddress(
      cstring("object_set_instance")))
  interfaceObjectGetClassName = cast[InterfaceObjectGetClassName](getProcAddress(
      cstring("object_get_class_name")))
  interfaceObjectCastTo = cast[InterfaceObjectCastTo](getProcAddress(
      cstring("object_cast_to")))
  interfaceObjectGetInstanceFromId = cast[InterfaceObjectGetInstanceFromId](getProcAddress(
      cstring("object_get_instance_from_id")))
  interfaceObjectGetInstanceId = cast[InterfaceObjectGetInstanceId](getProcAddress(
      cstring("object_get_instance_id")))
  interfaceObjectHasScriptMethod = cast[InterfaceObjectHasScriptMethod](getProcAddress(
      cstring("object_has_script_method")))
  interfaceObjectCallScriptMethod = cast[InterfaceObjectCallScriptMethod](getProcAddress(
      cstring("object_call_script_method")))
  interfaceRefGetObject = cast[InterfaceRefGetObject](getProcAddress(
      cstring("ref_get_object")))
  interfaceRefSetObject = cast[InterfaceRefSetObject](getProcAddress(
      cstring("ref_set_object")))
  interfaceScriptInstanceCreate = cast[InterfaceScriptInstanceCreate](getProcAddress(
      cstring("script_instance_create")))
  interfaceScriptInstanceCreate2 = cast[InterfaceScriptInstanceCreate2](getProcAddress(
      cstring("script_instance_create2")))
  interfaceScriptInstanceCreate3 = cast[InterfaceScriptInstanceCreate3](getProcAddress(
      cstring("script_instance_create3")))
  interfacePlaceHolderScriptInstanceCreate = cast[InterfacePlaceHolderScriptInstanceCreate](getProcAddress(
      cstring("placeholder_script_instance_create")))
  interfacePlaceHolderScriptInstanceUpdate = cast[InterfacePlaceHolderScriptInstanceUpdate](getProcAddress(
      cstring("placeholder_script_instance_update")))
  interfaceObjectGetScriptInstance = cast[InterfaceObjectGetScriptInstance](getProcAddress(
      cstring("object_get_script_instance")))
  interfaceCallableCustomCreate = cast[InterfaceCallableCustomCreate](getProcAddress(
      cstring("callable_custom_create")))
  interfaceCallableCustomCreate2 = cast[InterfaceCallableCustomCreate2](getProcAddress(
      cstring("callable_custom_create2")))
  interfaceCallableCustomGetUserData = cast[InterfaceCallableCustomGetUserData](getProcAddress(
      cstring("callable_custom_get_userdata")))
  interfaceClassdbConstructObject = cast[InterfaceClassdbConstructObject](getProcAddress(
      cstring("classdb_construct_object")))
  interfaceClassdbConstructObject2 = cast[InterfaceClassdbConstructObject2](getProcAddress(
      cstring("classdb_construct_object2")))
  interfaceClassdbGetMethodBind = cast[InterfaceClassdbGetMethodBind](getProcAddress(
      cstring("classdb_get_method_bind")))
  interfaceClassdbGetClassTag = cast[InterfaceClassdbGetClassTag](getProcAddress(
      cstring("classdb_get_class_tag")))
  interfaceClassdbRegisterExtensionClass = cast[InterfaceClassdbRegisterExtensionClass](getProcAddress(
      cstring("classdb_register_extension_class")))
  interfaceClassdbRegisterExtensionClass2 = cast[InterfaceClassdbRegisterExtensionClass2](getProcAddress(
      cstring("classdb_register_extension_class2")))
  interfaceClassdbRegisterExtensionClass3 = cast[InterfaceClassdbRegisterExtensionClass3](getProcAddress(
      cstring("classdb_register_extension_class3")))
  interfaceClassdbRegisterExtensionClass4 = cast[InterfaceClassdbRegisterExtensionClass4](getProcAddress(
      cstring("classdb_register_extension_class4")))
  interfaceClassdbRegisterExtensionClassMethod = cast[InterfaceClassdbRegisterExtensionClassMethod](getProcAddress(
      cstring("classdb_register_extension_class_method")))
  interfaceClassdbRegisterExtensionClassVirtualMethod = cast[InterfaceClassdbRegisterExtensionClassVirtualMethod](getProcAddress(
      cstring("classdb_register_extension_class_virtual_method")))
  interfaceClassdbRegisterExtensionClassIntegerConstant = cast[InterfaceClassdbRegisterExtensionClassIntegerConstant](getProcAddress(
      cstring("classdb_register_extension_class_integer_constant")))
  interfaceClassdbRegisterExtensionClassProperty = cast[InterfaceClassdbRegisterExtensionClassProperty](getProcAddress(
      cstring("classdb_register_extension_class_property")))
  interfaceClassdbRegisterExtensionClassPropertyIndexed = cast[InterfaceClassdbRegisterExtensionClassPropertyIndexed](getProcAddress(
      cstring("classdb_register_extension_class_property_indexed")))
  interfaceClassdbRegisterExtensionClassPropertyGroup = cast[InterfaceClassdbRegisterExtensionClassPropertyGroup](getProcAddress(
      cstring("classdb_register_extension_class_property_group")))
  interfaceClassdbRegisterExtensionClassPropertySubgroup = cast[InterfaceClassdbRegisterExtensionClassPropertySubgroup](getProcAddress(
      cstring("classdb_register_extension_class_property_subgroup")))
  interfaceClassdbRegisterExtensionClassSignal = cast[InterfaceClassdbRegisterExtensionClassSignal](getProcAddress(
      cstring("classdb_register_extension_class_signal")))
  interfaceClassdbUnregisterExtensionClass = cast[InterfaceClassdbUnregisterExtensionClass](getProcAddress(
      cstring("classdb_unregister_extension_class")))
  interfaceGetLibraryPath = cast[InterfaceGetLibraryPath](getProcAddress(
      cstring("get_library_path")))
  interfaceEditorAddPlugin = cast[InterfaceEditorAddPlugin](getProcAddress(
      cstring("editor_add_plugin")))
  interfaceEditorRemovePlugin = cast[InterfaceEditorRemovePlugin](getProcAddress(
      cstring("editor_remove_plugin")))
  interfaceEditorHelpLoadXmlFromUtf8Chars = cast[InterfaceEditorHelpLoadXmlFromUtf8Chars](getProcAddress(
      cstring("editor_help_load_xml_from_utf8_chars")))
  interfaceEditorHelpLoadXmlFromUtf8CharsAndLen = cast[InterfaceEditorHelpLoadXmlFromUtf8CharsAndLen](getProcAddress(
      cstring("editor_help_load_xml_from_utf8_chars_and_len")))
