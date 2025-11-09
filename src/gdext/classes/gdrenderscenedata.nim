{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(RenderSceneData, Object)

proc getCamTransform*(self: RenderSceneData): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneData, "get_cam_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc getCamProjection*(self: RenderSceneData): Projection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneData, "get_cam_projection", 2910717950)
  methodbind.ptrcall(self, [], Projection)

proc getViewCount*(self: RenderSceneData): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneData, "get_view_count", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc getViewEyeOffset*(self: RenderSceneData; view: uint32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneData, "get_view_eye_offset", 711720468)
  methodbind.ptrcall(self, [getPtr view], Vector3)

proc getViewProjection*(self: RenderSceneData; view: uint32): Projection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneData, "get_view_projection", 3179846605)
  methodbind.ptrcall(self, [getPtr view], Projection)

proc getUniformBuffer*(self: RenderSceneData): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneData, "get_uniform_buffer", 2944877500)
  methodbind.ptrcall(self, [], RID)
