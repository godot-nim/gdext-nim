{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderscenedata; export gdrenderscenedata

method getCamTransform*(self: RenderSceneDataExtension): Transform3D {.base.} = (discard)
proc getCamTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderSceneDataExtension](p_instance).getCamTransform().encode(r_ret)
template getCamTransform_bind*(_: typedesc[RenderSceneDataExtension]): ClassCallVirtual = getCamTransform

method getCamProjection*(self: RenderSceneDataExtension): Projection {.base.} = (discard)
proc getCamProjection(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderSceneDataExtension](p_instance).getCamProjection().encode(r_ret)
template getCamProjection_bind*(_: typedesc[RenderSceneDataExtension]): ClassCallVirtual = getCamProjection

method getViewCount*(self: RenderSceneDataExtension): uint32 {.base.} = (discard)
proc getViewCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderSceneDataExtension](p_instance).getViewCount().encode(r_ret)
template getViewCount_bind*(_: typedesc[RenderSceneDataExtension]): ClassCallVirtual = getViewCount

method getViewEyeOffset*(self: RenderSceneDataExtension; view: uint32): Vector3 {.base.} = (discard)
proc getViewEyeOffset(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderSceneDataExtension](p_instance).getViewEyeOffset(p_args[0].decode(uint32)).encode(r_ret)
template getViewEyeOffset_bind*(_: typedesc[RenderSceneDataExtension]): ClassCallVirtual = getViewEyeOffset

method getViewProjection*(self: RenderSceneDataExtension; view: uint32): Projection {.base.} = (discard)
proc getViewProjection(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderSceneDataExtension](p_instance).getViewProjection(p_args[0].decode(uint32)).encode(r_ret)
template getViewProjection_bind*(_: typedesc[RenderSceneDataExtension]): ClassCallVirtual = getViewProjection

method getUniformBuffer*(self: RenderSceneDataExtension): RID {.base.} = (discard)
proc getUniformBuffer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RenderSceneDataExtension](p_instance).getUniformBuffer().encode(r_ret)
template getUniformBuffer_bind*(_: typedesc[RenderSceneDataExtension]): ClassCallVirtual = getUniformBuffer

const RenderSceneDataExtension_vmap =
  RenderSceneData.vmap.concat toTable {
    "getcamtransform" : "_get_cam_transform",
    "getcamprojection" : "_get_cam_projection",
    "getviewcount" : "_get_view_count",
    "getvieweyeoffset" : "_get_view_eye_offset",
    "getviewprojection" : "_get_view_projection",
    "getuniformbuffer" : "_get_uniform_buffer",
    }
template vmap*(_: typedesc[RenderSceneDataExtension]): Table[string, string] = RenderSceneDataExtension_vmap