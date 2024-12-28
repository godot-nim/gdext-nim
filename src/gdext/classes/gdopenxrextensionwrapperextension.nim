{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

method getRequestedExtensions*(self: OpenXRExtensionWrapperExtension): Dictionary {.base.} = (discard)
proc getRequestedExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getRequestedExtensions().encode(r_ret)
template getRequestedExtensions_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = getRequestedExtensions

method setSystemPropertiesAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; nextPointer: pointer): uint64 {.base.} = (discard)
proc setSystemPropertiesAndGetNextPointer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setSystemPropertiesAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)
template setSystemPropertiesAndGetNextPointer_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = setSystemPropertiesAndGetNextPointer

method setInstanceCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; nextPointer: pointer): uint64 {.base.} = (discard)
proc setInstanceCreateInfoAndGetNextPointer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setInstanceCreateInfoAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)
template setInstanceCreateInfoAndGetNextPointer_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = setInstanceCreateInfoAndGetNextPointer

method setSessionCreateAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; nextPointer: pointer): uint64 {.base.} = (discard)
proc setSessionCreateAndGetNextPointer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setSessionCreateAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)
template setSessionCreateAndGetNextPointer_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = setSessionCreateAndGetNextPointer

method setSwapchainCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; nextPointer: pointer): uint64 {.base.} = (discard)
proc setSwapchainCreateInfoAndGetNextPointer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setSwapchainCreateInfoAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)
template setSwapchainCreateInfoAndGetNextPointer_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = setSwapchainCreateInfoAndGetNextPointer

method setHandJointLocationsAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; handIndex: int32; nextPointer: pointer): uint64 {.base.} = (discard)
proc setHandJointLocationsAndGetNextPointer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setHandJointLocationsAndGetNextPointer(p_args[0].decode(int32), p_args[1].decode(pointer)).encode(r_ret)
template setHandJointLocationsAndGetNextPointer_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = setHandJointLocationsAndGetNextPointer

method getCompositionLayerCount*(self: OpenXRExtensionWrapperExtension): int32 {.base.} = (discard)
proc getCompositionLayerCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getCompositionLayerCount().encode(r_ret)
template getCompositionLayerCount_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = getCompositionLayerCount

method getCompositionLayer*(self: OpenXRExtensionWrapperExtension; index: int32): uint64 {.base.} = (discard)
proc getCompositionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getCompositionLayer(p_args[0].decode(int32)).encode(r_ret)
template getCompositionLayer_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = getCompositionLayer

method getCompositionLayerOrder*(self: OpenXRExtensionWrapperExtension; index: int32): int32 {.base.} = (discard)
proc getCompositionLayerOrder(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getCompositionLayerOrder(p_args[0].decode(int32)).encode(r_ret)
template getCompositionLayerOrder_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = getCompositionLayerOrder

method getSuggestedTrackerNames*(self: OpenXRExtensionWrapperExtension): PackedStringArray {.base.} = (discard)
proc getSuggestedTrackerNames(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getSuggestedTrackerNames().encode(r_ret)
template getSuggestedTrackerNames_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = getSuggestedTrackerNames

method onRegisterMetadata*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onRegisterMetadata(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onRegisterMetadata()
template onRegisterMetadata_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onRegisterMetadata

method onBeforeInstanceCreated*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onBeforeInstanceCreated(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onBeforeInstanceCreated()
template onBeforeInstanceCreated_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onBeforeInstanceCreated

method onInstanceCreated*(self: OpenXRExtensionWrapperExtension; instance: uint64): void {.base.} = (discard)
proc onInstanceCreated(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onInstanceCreated(p_args[0].decode(uint64))
template onInstanceCreated_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onInstanceCreated

method onInstanceDestroyed*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onInstanceDestroyed(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onInstanceDestroyed()
template onInstanceDestroyed_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onInstanceDestroyed

method onSessionCreated*(self: OpenXRExtensionWrapperExtension; session: uint64): void {.base.} = (discard)
proc onSessionCreated(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onSessionCreated(p_args[0].decode(uint64))
template onSessionCreated_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onSessionCreated

method onProcess*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onProcess(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onProcess()
template onProcess_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onProcess

method onPreRender*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onPreRender(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onPreRender()
template onPreRender_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onPreRender

method onMainSwapchainsCreated*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onMainSwapchainsCreated(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onMainSwapchainsCreated()
template onMainSwapchainsCreated_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onMainSwapchainsCreated

method onSessionDestroyed*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onSessionDestroyed(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onSessionDestroyed()
template onSessionDestroyed_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onSessionDestroyed

method onStateIdle*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onStateIdle(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateIdle()
template onStateIdle_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onStateIdle

method onStateReady*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onStateReady(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateReady()
template onStateReady_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onStateReady

method onStateSynchronized*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onStateSynchronized(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateSynchronized()
template onStateSynchronized_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onStateSynchronized

method onStateVisible*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onStateVisible(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateVisible()
template onStateVisible_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onStateVisible

method onStateFocused*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onStateFocused(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateFocused()
template onStateFocused_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onStateFocused

method onStateStopping*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onStateStopping(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateStopping()
template onStateStopping_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onStateStopping

method onStateLossPending*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onStateLossPending(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateLossPending()
template onStateLossPending_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onStateLossPending

method onStateExiting*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc onStateExiting(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateExiting()
template onStateExiting_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onStateExiting

method onEventPolled*(self: OpenXRExtensionWrapperExtension; event: pointer): bool {.base.} = (discard)
proc onEventPolled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onEventPolled(p_args[0].decode(pointer)).encode(r_ret)
template onEventPolled_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onEventPolled

method setViewportCompositionLayerAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; layer: pointer; propertyValues: Dictionary; nextPointer: pointer): uint64 {.base.} = (discard)
proc setViewportCompositionLayerAndGetNextPointer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setViewportCompositionLayerAndGetNextPointer(p_args[0].decode(pointer), p_args[1].decode(Dictionary), p_args[2].decode(pointer)).encode(r_ret)
template setViewportCompositionLayerAndGetNextPointer_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = setViewportCompositionLayerAndGetNextPointer

method getViewportCompositionLayerExtensionProperties*(self: OpenXRExtensionWrapperExtension): TypedArray[Dictionary] {.base.} = (discard)
proc getViewportCompositionLayerExtensionProperties(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getViewportCompositionLayerExtensionProperties().encode(r_ret)
template getViewportCompositionLayerExtensionProperties_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = getViewportCompositionLayerExtensionProperties

method getViewportCompositionLayerExtensionPropertyDefaults*(self: OpenXRExtensionWrapperExtension): Dictionary {.base.} = (discard)
proc getViewportCompositionLayerExtensionPropertyDefaults(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getViewportCompositionLayerExtensionPropertyDefaults().encode(r_ret)
template getViewportCompositionLayerExtensionPropertyDefaults_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = getViewportCompositionLayerExtensionPropertyDefaults

method onViewportCompositionLayerDestroyed*(self: OpenXRExtensionWrapperExtension; layer: pointer): void {.base.} = (discard)
proc onViewportCompositionLayerDestroyed(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onViewportCompositionLayerDestroyed(p_args[0].decode(pointer))
template onViewportCompositionLayerDestroyed_bind*(_: typedesc[OpenXRExtensionWrapperExtension]): ClassCallVirtual = onViewportCompositionLayerDestroyed

proc getOpenxrApi*(self: OpenXRExtensionWrapperExtension): gdref OpenXRAPIExtension =
  expandMethodBind(className OpenXRExtensionWrapperExtension, "get_openxr_api", 1637791613)
  var ret: encoded gdref OpenXRAPIExtension
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRAPIExtension)

proc registerExtensionWrapper*(self: OpenXRExtensionWrapperExtension): void =
  expandMethodBind(className OpenXRExtensionWrapperExtension, "register_extension_wrapper", 3218959716)
  methodbind.ptrcall(self, [])

const OpenXRExtensionWrapperExtension_vmap =
  Object.vmap.concat toTable {
    "getrequestedextensions" : "_get_requested_extensions",
    "setsystempropertiesandgetnextpointer" : "_set_system_properties_and_get_next_pointer",
    "setinstancecreateinfoandgetnextpointer" : "_set_instance_create_info_and_get_next_pointer",
    "setsessioncreateandgetnextpointer" : "_set_session_create_and_get_next_pointer",
    "setswapchaincreateinfoandgetnextpointer" : "_set_swapchain_create_info_and_get_next_pointer",
    "sethandjointlocationsandgetnextpointer" : "_set_hand_joint_locations_and_get_next_pointer",
    "getcompositionlayercount" : "_get_composition_layer_count",
    "getcompositionlayer" : "_get_composition_layer",
    "getcompositionlayerorder" : "_get_composition_layer_order",
    "getsuggestedtrackernames" : "_get_suggested_tracker_names",
    "onregistermetadata" : "_on_register_metadata",
    "onbeforeinstancecreated" : "_on_before_instance_created",
    "oninstancecreated" : "_on_instance_created",
    "oninstancedestroyed" : "_on_instance_destroyed",
    "onsessioncreated" : "_on_session_created",
    "onprocess" : "_on_process",
    "onprerender" : "_on_pre_render",
    "onmainswapchainscreated" : "_on_main_swapchains_created",
    "onsessiondestroyed" : "_on_session_destroyed",
    "onstateidle" : "_on_state_idle",
    "onstateready" : "_on_state_ready",
    "onstatesynchronized" : "_on_state_synchronized",
    "onstatevisible" : "_on_state_visible",
    "onstatefocused" : "_on_state_focused",
    "onstatestopping" : "_on_state_stopping",
    "onstatelosspending" : "_on_state_loss_pending",
    "onstateexiting" : "_on_state_exiting",
    "oneventpolled" : "_on_event_polled",
    "setviewportcompositionlayerandgetnextpointer" : "_set_viewport_composition_layer_and_get_next_pointer",
    "getviewportcompositionlayerextensionproperties" : "_get_viewport_composition_layer_extension_properties",
    "getviewportcompositionlayerextensionpropertydefaults" : "_get_viewport_composition_layer_extension_property_defaults",
    "onviewportcompositionlayerdestroyed" : "_on_viewport_composition_layer_destroyed",
    }
template vmap*(_: typedesc[OpenXRExtensionWrapperExtension]): Table[string, string] = OpenXRExtensionWrapperExtension_vmap