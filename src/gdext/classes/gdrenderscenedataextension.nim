{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderscenedata; export gdrenderscenedata
export RenderSceneDataExtension

method getCamTransform*(self: RenderSceneDataExtension): Transform3D {.base.} = (discard)
proc registerVirtual_getCamTransform*[T: RenderSceneDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_cam_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneDataExtension](p_instance).getCamTransform().encode(r_ret)

method getCamProjection*(self: RenderSceneDataExtension): Projection {.base.} = (discard)
proc registerVirtual_getCamProjection*[T: RenderSceneDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_cam_projection"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneDataExtension](p_instance).getCamProjection().encode(r_ret)

method getViewCount*(self: RenderSceneDataExtension): uint32 {.base.} = (discard)
proc registerVirtual_getViewCount*[T: RenderSceneDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_view_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneDataExtension](p_instance).getViewCount().encode(r_ret)

method getViewEyeOffset*(self: RenderSceneDataExtension; view: uint32): Vector3 {.base.} = (discard)
proc registerVirtual_getViewEyeOffset*[T: RenderSceneDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_view_eye_offset"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneDataExtension](p_instance).getViewEyeOffset(p_args[0].decode(uint32)).encode(r_ret)

method getViewProjection*(self: RenderSceneDataExtension; view: uint32): Projection {.base.} = (discard)
proc registerVirtual_getViewProjection*[T: RenderSceneDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_view_projection"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneDataExtension](p_instance).getViewProjection(p_args[0].decode(uint32)).encode(r_ret)

method getUniformBuffer*(self: RenderSceneDataExtension): RID {.base.} = (discard)
proc registerVirtual_getUniformBuffer*[T: RenderSceneDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_uniform_buffer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneDataExtension](p_instance).getUniformBuffer().encode(r_ret)
