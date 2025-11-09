{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(RenderData, Object)

proc getRenderSceneBuffers*(self: RenderData): gdref RenderSceneBuffers =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderData, "get_render_scene_buffers", 2793216201)
  methodbind.ptrcall(self, [], gdref RenderSceneBuffers)

proc getRenderSceneData*(self: RenderData): RenderSceneData =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderData, "get_render_scene_data", 1288715698)
  methodbind.ptrcall(self, [], RenderSceneData)

proc getEnvironment*(self: RenderData): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderData, "get_environment", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getCameraAttributes*(self: RenderData): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderData, "get_camera_attributes", 2944877500)
  methodbind.ptrcall(self, [], RID)
