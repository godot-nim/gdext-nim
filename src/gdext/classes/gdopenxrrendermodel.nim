{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(OpenXRRenderModel, Node3D)

proc getTopLevelPath*(self: OpenXRRenderModel): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModel, "get_top_level_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getRenderModel*(self: OpenXRRenderModel): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModel, "get_render_model", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setRenderModel*(self: OpenXRRenderModel; renderModel: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModel, "set_render_model", 2722037293)
  methodbind.ptrcall(self, [getPtr renderModel], void)

template renderModel*(self: OpenXRRenderModel): untyped = self.getRenderModel()
template `renderModel=`*(self: OpenXRRenderModel; value) = self.setRenderModel(value)
