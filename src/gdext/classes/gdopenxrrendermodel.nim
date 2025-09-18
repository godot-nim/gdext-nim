{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(OpenXRRenderModel, Node3D)

proc getTopLevelPath*(self: OpenXRRenderModel): String =
  expandMethodBind(className OpenXRRenderModel, "get_top_level_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getRenderModel*(self: OpenXRRenderModel): RID =
  expandMethodBind(className OpenXRRenderModel, "get_render_model", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setRenderModel*(self: OpenXRRenderModel; renderModel: RID): void =
  expandMethodBind(className OpenXRRenderModel, "set_render_model", 2722037293)
  methodbind.ptrcall(self, [getPtr renderModel])

template renderModel*(self: OpenXRRenderModel): untyped = self.getRenderModel()
template `renderModel=`*(self: OpenXRRenderModel; value) = self.setRenderModel(value)
