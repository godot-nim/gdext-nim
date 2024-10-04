{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc getCamTransform*(self: RenderSceneData): Transform3D =
  expandMethodBind(className RenderSceneData, "get_cam_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc getCamProjection*(self: RenderSceneData): Projection =
  expandMethodBind(className RenderSceneData, "get_cam_projection", 2910717950)
  var ret: encoded Projection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Projection)

proc getViewCount*(self: RenderSceneData): uint32 =
  expandMethodBind(className RenderSceneData, "get_view_count", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc getViewEyeOffset*(self: RenderSceneData; view: uint32): Vector3 =
  expandMethodBind(className RenderSceneData, "get_view_eye_offset", 711720468)
  var `?param` = [getPtr view]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getViewProjection*(self: RenderSceneData; view: uint32): Projection =
  expandMethodBind(className RenderSceneData, "get_view_projection", 3179846605)
  var `?param` = [getPtr view]
  var ret: encoded Projection
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Projection)

proc getUniformBuffer*(self: RenderSceneData): Rid =
  expandMethodBind(className RenderSceneData, "get_uniform_buffer", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

const RenderSceneData_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderSceneData]): Table[string, string] = RenderSceneData_vmap