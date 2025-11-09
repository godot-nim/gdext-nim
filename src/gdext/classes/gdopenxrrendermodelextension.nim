{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRRenderModelExtension, OpenXRExtensionWrapper)

proc isActive*(self: OpenXRRenderModelExtension): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "is_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc renderModelCreate*(self: OpenXRRenderModelExtension; renderModelId: uint64): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_create", 937000113)
  methodbind.ptrcall(self, [getPtr renderModelId], RID)

proc renderModelDestroy*(self: OpenXRRenderModelExtension; renderModel: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_destroy", 2722037293)
  methodbind.ptrcall(self, [getPtr renderModel], void)

proc renderModelGetAll*(self: OpenXRRenderModelExtension): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_get_all", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc renderModelNewSceneInstance*(self: OpenXRRenderModelExtension; renderModel: RID): Node3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_new_scene_instance", 788010739)
  methodbind.ptrcall(self, [getPtr renderModel], Node3D)

proc renderModelGetSubactionPaths*(self: OpenXRRenderModelExtension; renderModel: RID): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_get_subaction_paths", 2801473409)
  methodbind.ptrcall(self, [getPtr renderModel], PackedStringArray)

proc renderModelGetTopLevelPath*(self: OpenXRRenderModelExtension; renderModel: RID): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_get_top_level_path", 642473191)
  methodbind.ptrcall(self, [getPtr renderModel], String)

proc renderModelGetConfidence*(self: OpenXRRenderModelExtension; renderModel: RID): XRPose_TrackingConfidence =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_get_confidence", 2350330949)
  methodbind.ptrcall(self, [getPtr renderModel], XRPose_TrackingConfidence)

proc renderModelGetRootTransform*(self: OpenXRRenderModelExtension; renderModel: RID): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_get_root_transform", 1128465797)
  methodbind.ptrcall(self, [getPtr renderModel], Transform3D)

proc renderModelGetAnimatableNodeCount*(self: OpenXRRenderModelExtension; renderModel: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_get_animatable_node_count", 2198884583)
  methodbind.ptrcall(self, [getPtr renderModel], uint32)

proc renderModelGetAnimatableNodeName*(self: OpenXRRenderModelExtension; renderModel: RID; index: uint32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_get_animatable_node_name", 1464764419)
  methodbind.ptrcall(self, [getPtr renderModel, getPtr index], String)

proc renderModelIsAnimatableNodeVisible*(self: OpenXRRenderModelExtension; renderModel: RID; index: uint32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_is_animatable_node_visible", 3120086654)
  methodbind.ptrcall(self, [getPtr renderModel, getPtr index], bool)

proc renderModelGetAnimatableNodeTransform*(self: OpenXRRenderModelExtension; renderModel: RID; index: uint32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelExtension, "render_model_get_animatable_node_transform", 1050775521)
  methodbind.ptrcall(self, [getPtr renderModel, getPtr index], Transform3D)
