{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject
export RenderData

proc getRenderSceneBuffers*(self: RenderData): gdref RenderSceneBuffers =
  expandMethodBind(className RenderData, "get_render_scene_buffers", 2793216201)
  var ret: encoded gdref RenderSceneBuffers
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref RenderSceneBuffers)

proc getRenderSceneData*(self: RenderData): RenderSceneData =
  expandMethodBind(className RenderData, "get_render_scene_data", 1288715698)
  var ret: encoded RenderSceneData
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderSceneData)

proc getEnvironment*(self: RenderData): RID =
  expandMethodBind(className RenderData, "get_environment", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getCameraAttributes*(self: RenderData): RID =
  expandMethodBind(className RenderData, "get_camera_attributes", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)
