{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderdata; export gdrenderdata

method getRenderSceneBuffers*(self: RenderDataExtension): gdref RenderSceneBuffers {.base.} = (discard)
proc getRenderSceneBuffers(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderDataExtension](p_instance).getRenderSceneBuffers().encode(r_ret)
template getRenderSceneBuffers_bind*(_: typedesc[RenderDataExtension]): ClassCallVirtual = getRenderSceneBuffers

method getRenderSceneData*(self: RenderDataExtension): RenderSceneData {.base.} = (discard)
proc getRenderSceneData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderDataExtension](p_instance).getRenderSceneData().encode(r_ret)
template getRenderSceneData_bind*(_: typedesc[RenderDataExtension]): ClassCallVirtual = getRenderSceneData

method getEnvironment*(self: RenderDataExtension): RID {.base.} = (discard)
proc getEnvironment(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderDataExtension](p_instance).getEnvironment().encode(r_ret)
template getEnvironment_bind*(_: typedesc[RenderDataExtension]): ClassCallVirtual = getEnvironment

method getCameraAttributes*(self: RenderDataExtension): RID {.base.} = (discard)
proc getCameraAttributes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderDataExtension](p_instance).getCameraAttributes().encode(r_ret)
template getCameraAttributes_bind*(_: typedesc[RenderDataExtension]): ClassCallVirtual = getCameraAttributes

const RenderDataExtension_vmap =
  RenderData.vmap.concat toTable {
    "getrenderscenebuffers" : "_get_render_scene_buffers",
    "getrenderscenedata" : "_get_render_scene_data",
    "getenvironment" : "_get_environment",
    "getcameraattributes" : "_get_camera_attributes",
    }
template vmap*(_: typedesc[RenderDataExtension]): Table[string, string] = RenderDataExtension_vmap