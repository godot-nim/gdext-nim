{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderdata; export gdrenderdata
export RenderDataExtension

method getRenderSceneBuffers*(self: RenderDataExtension): gdref RenderSceneBuffers {.base.} = (discard)
proc registerVirtual_getRenderSceneBuffers*[T: RenderDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_render_scene_buffers"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderDataExtension](p_instance).getRenderSceneBuffers().encode(r_ret)

method getRenderSceneData*(self: RenderDataExtension): RenderSceneData {.base.} = (discard)
proc registerVirtual_getRenderSceneData*[T: RenderDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_render_scene_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderDataExtension](p_instance).getRenderSceneData().encode(r_ret)

method getEnvironment*(self: RenderDataExtension): RID {.base.} = (discard)
proc registerVirtual_getEnvironment*[T: RenderDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_environment"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderDataExtension](p_instance).getEnvironment().encode(r_ret)

method getCameraAttributes*(self: RenderDataExtension): RID {.base.} = (discard)
proc registerVirtual_getCameraAttributes*[T: RenderDataExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_camera_attributes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderDataExtension](p_instance).getCameraAttributes().encode(r_ret)
