{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc getRenderSceneBuffers*(self: RenderData): gdref RenderSceneBuffers =
  expandMethodBind(className RenderData, "get_render_scene_buffers", 2793216201)
  var ret: encoded gdref RenderSceneBuffers
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref RenderSceneBuffers)

proc getRenderSceneData*(self: RenderData): RenderSceneData =
  expandMethodBind(className RenderData, "get_render_scene_data", 1288715698)
  var ret: encoded RenderSceneData
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderSceneData)

proc getEnvironment*(self: RenderData): Rid =
  expandMethodBind(className RenderData, "get_environment", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getCameraAttributes*(self: RenderData): Rid =
  expandMethodBind(className RenderData, "get_camera_attributes", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

const RenderData_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderData]): Table[string, string] = RenderData_vmap