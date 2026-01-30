{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(OpenXRExtensionWrapper, Object)

method getRequestedExtensions*(self: OpenXRExtensionWrapper; xrVersion: uint64): Dictionary[Variant, Variant] {.base.} = (discard)
proc registerVirtual_getRequestedExtensions*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_requested_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).getRequestedExtensions(p_args[0].decode(uint64)).encode(r_ret)

method setSystemPropertiesAndGetNextPointer*(self: OpenXRExtensionWrapper; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setSystemPropertiesAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_system_properties_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setSystemPropertiesAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setInstanceCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapper; xrVersion: uint64; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setInstanceCreateInfoAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_instance_create_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setInstanceCreateInfoAndGetNextPointer(p_args[0].decode(uint64), p_args[1].decode(pointer)).encode(r_ret)

method setSessionCreateAndGetNextPointer*(self: OpenXRExtensionWrapper; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setSessionCreateAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_session_create_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setSessionCreateAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setSwapchainCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapper; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setSwapchainCreateInfoAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_swapchain_create_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setSwapchainCreateInfoAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setHandJointLocationsAndGetNextPointer*(self: OpenXRExtensionWrapper; handIndex: int32; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setHandJointLocationsAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_hand_joint_locations_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setHandJointLocationsAndGetNextPointer(p_args[0].decode(int32), p_args[1].decode(pointer)).encode(r_ret)

method setProjectionViewsAndGetNextPointer*(self: OpenXRExtensionWrapper; viewIndex: int32; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setProjectionViewsAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_projection_views_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setProjectionViewsAndGetNextPointer(p_args[0].decode(int32), p_args[1].decode(pointer)).encode(r_ret)

method setFrameWaitInfoAndGetNextPointer*(self: OpenXRExtensionWrapper; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setFrameWaitInfoAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_frame_wait_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setFrameWaitInfoAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setFrameEndInfoAndGetNextPointer*(self: OpenXRExtensionWrapper; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setFrameEndInfoAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_frame_end_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setFrameEndInfoAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setViewLocateInfoAndGetNextPointer*(self: OpenXRExtensionWrapper; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setViewLocateInfoAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_view_locate_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setViewLocateInfoAndGetNextPointer(p_args[0].decode(pointer)).encode(r_ret)

method setReferenceSpaceCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapper; referenceSpaceType: int32; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setReferenceSpaceCreateInfoAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_reference_space_create_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setReferenceSpaceCreateInfoAndGetNextPointer(p_args[0].decode(int32), p_args[1].decode(pointer)).encode(r_ret)

method prepareViewConfiguration*(self: OpenXRExtensionWrapper; viewCount: int32): void {.base.} = (discard)
proc registerVirtual_prepareViewConfiguration*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_prepare_view_configuration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).prepareViewConfiguration(p_args[0].decode(int32))

method setViewConfigurationAndGetNextPointer*(self: OpenXRExtensionWrapper; view: uint32; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setViewConfigurationAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_view_configuration_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setViewConfigurationAndGetNextPointer(p_args[0].decode(uint32), p_args[1].decode(pointer)).encode(r_ret)

method printViewConfigurationInfo*(self: OpenXRExtensionWrapper; view: int32): void {.base.} = (discard)
proc registerVirtual_printViewConfigurationInfo*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_print_view_configuration_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).printViewConfigurationInfo(p_args[0].decode(int32))

method getCompositionLayerCount*(self: OpenXRExtensionWrapper): int32 {.base.} = (discard)
proc registerVirtual_getCompositionLayerCount*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_composition_layer_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).getCompositionLayerCount().encode(r_ret)

method getCompositionLayer*(self: OpenXRExtensionWrapper; index: int32): uint64 {.base.} = (discard)
proc registerVirtual_getCompositionLayer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_composition_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).getCompositionLayer(p_args[0].decode(int32)).encode(r_ret)

method getCompositionLayerOrder*(self: OpenXRExtensionWrapper; index: int32): int32 {.base.} = (discard)
proc registerVirtual_getCompositionLayerOrder*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_composition_layer_order"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).getCompositionLayerOrder(p_args[0].decode(int32)).encode(r_ret)

method getSuggestedTrackerNames*(self: OpenXRExtensionWrapper): PackedStringArray {.base.} = (discard)
proc registerVirtual_getSuggestedTrackerNames*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_suggested_tracker_names"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).getSuggestedTrackerNames().encode(r_ret)

method onRegisterMetadata*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onRegisterMetadata*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_register_metadata"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onRegisterMetadata()

method onBeforeInstanceCreated*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onBeforeInstanceCreated*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_before_instance_created"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onBeforeInstanceCreated()

method onInstanceCreated*(self: OpenXRExtensionWrapper; instance: uint64): void {.base.} = (discard)
proc registerVirtual_onInstanceCreated*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_instance_created"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onInstanceCreated(p_args[0].decode(uint64))

method onInstanceDestroyed*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onInstanceDestroyed*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_instance_destroyed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onInstanceDestroyed()

method onSessionCreated*(self: OpenXRExtensionWrapper; session: uint64): void {.base.} = (discard)
proc registerVirtual_onSessionCreated*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_session_created"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onSessionCreated(p_args[0].decode(uint64))

method onProcess*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onProcess*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onProcess()

method onSyncActions*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onSyncActions*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_sync_actions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onSyncActions()

method onPreRender*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onPreRender*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_pre_render"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onPreRender()

method onMainSwapchainsCreated*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onMainSwapchainsCreated*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_main_swapchains_created"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onMainSwapchainsCreated()

method onPreDrawViewport*(self: OpenXRExtensionWrapper; viewport: RID): void {.base.} = (discard)
proc registerVirtual_onPreDrawViewport*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_pre_draw_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onPreDrawViewport(p_args[0].decode(RID))

method onPostDrawViewport*(self: OpenXRExtensionWrapper; viewport: RID): void {.base.} = (discard)
proc registerVirtual_onPostDrawViewport*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_post_draw_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onPostDrawViewport(p_args[0].decode(RID))

method onSessionDestroyed*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onSessionDestroyed*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_session_destroyed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onSessionDestroyed()

method onStateIdle*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onStateIdle*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_state_idle"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onStateIdle()

method onStateReady*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onStateReady*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_state_ready"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onStateReady()

method onStateSynchronized*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onStateSynchronized*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_state_synchronized"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onStateSynchronized()

method onStateVisible*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onStateVisible*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_state_visible"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onStateVisible()

method onStateFocused*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onStateFocused*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_state_focused"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onStateFocused()

method onStateStopping*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onStateStopping*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_state_stopping"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onStateStopping()

method onStateLossPending*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onStateLossPending*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_state_loss_pending"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onStateLossPending()

method onStateExiting*(self: OpenXRExtensionWrapper): void {.base.} = (discard)
proc registerVirtual_onStateExiting*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_state_exiting"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onStateExiting()

method onEventPolled*(self: OpenXRExtensionWrapper; event: pointer): bool {.base.} = (discard)
proc registerVirtual_onEventPolled*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_event_polled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onEventPolled(p_args[0].decode(pointer)).encode(r_ret)

method setViewportCompositionLayerAndGetNextPointer*(self: OpenXRExtensionWrapper; layer: pointer; propertyValues: Dictionary[Variant, Variant]; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setViewportCompositionLayerAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_viewport_composition_layer_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setViewportCompositionLayerAndGetNextPointer(p_args[0].decode(pointer), p_args[1].decode(Dictionary[Variant, Variant]), p_args[2].decode(pointer)).encode(r_ret)

method getViewportCompositionLayerExtensionProperties*(self: OpenXRExtensionWrapper): Array[Dictionary[Variant, Variant]] {.base.} = (discard)
proc registerVirtual_getViewportCompositionLayerExtensionProperties*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_viewport_composition_layer_extension_properties"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).getViewportCompositionLayerExtensionProperties().encode(r_ret)

method getViewportCompositionLayerExtensionPropertyDefaults*(self: OpenXRExtensionWrapper): Dictionary[Variant, Variant] {.base.} = (discard)
proc registerVirtual_getViewportCompositionLayerExtensionPropertyDefaults*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_viewport_composition_layer_extension_property_defaults"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).getViewportCompositionLayerExtensionPropertyDefaults().encode(r_ret)

method onViewportCompositionLayerDestroyed*(self: OpenXRExtensionWrapper; layer: pointer): void {.base.} = (discard)
proc registerVirtual_onViewportCompositionLayerDestroyed*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_on_viewport_composition_layer_destroyed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).onViewportCompositionLayerDestroyed(p_args[0].decode(pointer))

method setAndroidSurfaceSwapchainCreateInfoAndGetNextPointer*(self: OpenXRExtensionWrapper; propertyValues: Dictionary[Variant, Variant]; nextPointer: pointer): uint64 {.base.} = (discard)
proc registerVirtual_setAndroidSurfaceSwapchainCreateInfoAndGetNextPointer*[T: OpenXRExtensionWrapper](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_android_surface_swapchain_create_info_and_get_next_pointer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRExtensionWrapper](p_instance).setAndroidSurfaceSwapchainCreateInfoAndGetNextPointer(p_args[0].decode(Dictionary[Variant, Variant]), p_args[1].decode(pointer)).encode(r_ret)

proc getOpenxrApi*(self: OpenXRExtensionWrapper): gdref OpenXRAPIExtension =
  expandMethodBind(className OpenXRExtensionWrapper, "get_openxr_api", 1637791613)
  var ret: encoded gdref OpenXRAPIExtension
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRAPIExtension)

proc registerExtensionWrapper*(self: OpenXRExtensionWrapper): void =
  expandMethodBind(className OpenXRExtensionWrapper, "register_extension_wrapper", 3218959716)
  methodbind.ptrcall(self, [])
