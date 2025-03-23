{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

method getRequestedExtensions*(self: OpenXRExtensionWrapperExtension): Dictionary {.base.} = (discard)
proc registerVirtual_getRequestedExtensions*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_requested_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getRequestedExtensions().encode(r_ret)

method setSystemPropertiesAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setSystemPropertiesAndGetNextPointer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_system_properties_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setSystemPropertiesAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setInstanceCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setInstanceCreateInfoAndGetNextPointer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_instance_create_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setInstanceCreateInfoAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setSessionCreateAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setSessionCreateAndGetNextPointer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_session_create_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setSessionCreateAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setSwapchainCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setSwapchainCreateInfoAndGetNextPointer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_swapchain_create_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setSwapchainCreateInfoAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setHandJointLocationsAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; handIndex: int32; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setHandJointLocationsAndGetNextPointer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_hand_joint_locations_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setHandJointLocationsAndGetNextPointer(p_args[0].decode(int32), p_args[1].decode(pointer)).encode(r_ret)

method setProjectionViewsAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; viewIndex: int32; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setProjectionViewsAndGetNextPointer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_projection_views_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setProjectionViewsAndGetNextPointer(p_args[0].decode(int32), p_args[1].decode(pointer)).encode(r_ret)

method getCompositionLayerCount*(self: OpenXRExtensionWrapperExtension): int32 {.base.} = (discard)
proc registerVirtual_getCompositionLayerCount*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_composition_layer_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getCompositionLayerCount().encode(r_ret)

method getCompositionLayer*(self: OpenXRExtensionWrapperExtension; index: int32): uint64 {.base.} = (discard)
proc registerVirtual_getCompositionLayer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_composition_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getCompositionLayer(p_args[0].decode(int32)).encode(r_ret)

method getCompositionLayerOrder*(self: OpenXRExtensionWrapperExtension; index: int32): int32 {.base.} = (discard)
proc registerVirtual_getCompositionLayerOrder*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_composition_layer_order"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getCompositionLayerOrder(p_args[0].decode(int32)).encode(r_ret)

method getSuggestedTrackerNames*(self: OpenXRExtensionWrapperExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getSuggestedTrackerNames*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_suggested_tracker_names"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getSuggestedTrackerNames().encode(r_ret)

method onRegisterMetadata*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onRegisterMetadata*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_register_metadata"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onRegisterMetadata()

method onBeforeInstanceCreated*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onBeforeInstanceCreated*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_before_instance_created"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onBeforeInstanceCreated()

method onInstanceCreated*(self: OpenXRExtensionWrapperExtension; instance: uint64): void {.base.} = (discard)
proc registerVirtual_onInstanceCreated*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_instance_created"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onInstanceCreated(p_args[0].decode(uint64))

method onInstanceDestroyed*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onInstanceDestroyed*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_instance_destroyed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onInstanceDestroyed()

method onSessionCreated*(self: OpenXRExtensionWrapperExtension; session: uint64): void {.base.} = (discard)
proc registerVirtual_onSessionCreated*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_session_created"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onSessionCreated(p_args[0].decode(uint64))

method onProcess*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onProcess*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onProcess()

method onPreRender*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onPreRender*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_pre_render"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onPreRender()

method onMainSwapchainsCreated*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onMainSwapchainsCreated*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_main_swapchains_created"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onMainSwapchainsCreated()

method onPreDrawViewport*(self: OpenXRExtensionWrapperExtension; viewport: RID): void {.base.} = (discard)
proc registerVirtual_onPreDrawViewport*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_pre_draw_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onPreDrawViewport(p_args[0].decode(RID))

method onPostDrawViewport*(self: OpenXRExtensionWrapperExtension; viewport: RID): void {.base.} = (discard)
proc registerVirtual_onPostDrawViewport*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_post_draw_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onPostDrawViewport(p_args[0].decode(RID))

method onSessionDestroyed*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onSessionDestroyed*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_session_destroyed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onSessionDestroyed()

method onStateIdle*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onStateIdle*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_state_idle"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateIdle()

method onStateReady*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onStateReady*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_state_ready"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateReady()

method onStateSynchronized*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onStateSynchronized*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_state_synchronized"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateSynchronized()

method onStateVisible*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onStateVisible*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_state_visible"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateVisible()

method onStateFocused*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onStateFocused*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_state_focused"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateFocused()

method onStateStopping*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onStateStopping*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_state_stopping"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateStopping()

method onStateLossPending*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onStateLossPending*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_state_loss_pending"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateLossPending()

method onStateExiting*(self: OpenXRExtensionWrapperExtension): void {.base.} = (discard)
proc registerVirtual_onStateExiting*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_state_exiting"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onStateExiting()

method onEventPolled*(self: OpenXRExtensionWrapperExtension; event: pointer): bool {.base.} = (discard)
proc registerVirtual_onEventPolled*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_event_polled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onEventPolled(p_args[0].decode(pointer)).encode(r_ret)

method setViewportCompositionLayerAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; layer: pointer; propertyValues: Dictionary; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setViewportCompositionLayerAndGetNextPointer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_viewport_composition_layer_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setViewportCompositionLayerAndGetNextPointer(p_args[0].decode(pointer), p_args[1].decode(Dictionary), p_args[2].decode(pointer)).encode(r_ret)

method getViewportCompositionLayerExtensionProperties*(self: OpenXRExtensionWrapperExtension): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getViewportCompositionLayerExtensionProperties*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_viewport_composition_layer_extension_properties"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getViewportCompositionLayerExtensionProperties().encode(r_ret)

method getViewportCompositionLayerExtensionPropertyDefaults*(self: OpenXRExtensionWrapperExtension): Dictionary {.base.} = (discard)
proc registerVirtual_getViewportCompositionLayerExtensionPropertyDefaults*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_viewport_composition_layer_extension_property_defaults"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).getViewportCompositionLayerExtensionPropertyDefaults().encode(r_ret)

method onViewportCompositionLayerDestroyed*(self: OpenXRExtensionWrapperExtension; layer: pointer): void {.base.} = (discard)
proc registerVirtual_onViewportCompositionLayerDestroyed*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_on_viewport_composition_layer_destroyed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).onViewportCompositionLayerDestroyed(p_args[0].decode(pointer))

method setAndroidSurfaceSwapchainCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapperExtension; propertyValues: Dictionary; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setAndroidSurfaceSwapchainCreateInfoAndGetNextPointer*[T: OpenXRExtensionWrapperExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_android_surface_swapchain_create_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapperExtension](p_instance).setAndroidSurfaceSwapchainCreateInfoAndGetNextPointer(p_args[0].decode(Dictionary), p_args[1].decode(pointer)).encode(r_ret)

proc getOpenxrApi*(self: OpenXRExtensionWrapperExtension): gdref OpenXRAPIExtension =
  expandMethodBind(className OpenXRExtensionWrapperExtension, "get_openxr_api", 1637791613)
  var ret: encoded gdref OpenXRAPIExtension
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRAPIExtension)

proc registerExtensionWrapper*(self: OpenXRExtensionWrapperExtension): void =
  expandMethodBind(className OpenXRExtensionWrapperExtension, "register_extension_wrapper", 3218959716)
  methodbind.ptrcall(self, [])