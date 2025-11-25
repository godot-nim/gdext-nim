{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRRenderModelExtension, OpenXRExtensionWrapper)

proc isActive*(self: OpenXRRenderModelExtension): bool =
  expandMethodBind(className OpenXRRenderModelExtension, "is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc renderModelCreate*(self: OpenXRRenderModelExtension; renderModelId: uint64): RID =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_create", 937000113)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr renderModelId], addr ret)
  (addr ret).decode_result(RID)

proc renderModelDestroy*(self: OpenXRRenderModelExtension; renderModel: RID): void =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_destroy", 2722037293)
  methodbind.ptrcall(self, [getPtr renderModel])

proc renderModelGetAll*(self: OpenXRRenderModelExtension): Array[RID] =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_get_all", 2915620761)
  var ret: encoded Array[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[RID])

proc renderModelNewSceneInstance*(self: OpenXRRenderModelExtension; renderModel: RID): Node3D =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_new_scene_instance", 788010739)
  var ret: encoded Node3D
  methodbind.ptrcall(self, [getPtr renderModel], addr ret)
  (addr ret).decode_result(Node3D)

proc renderModelGetSubactionPaths*(self: OpenXRRenderModelExtension; renderModel: RID): PackedStringArray =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_get_subaction_paths", 2801473409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr renderModel], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc renderModelGetTopLevelPath*(self: OpenXRRenderModelExtension; renderModel: RID): String =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_get_top_level_path", 642473191)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr renderModel], addr ret)
  (addr ret).decode_result(String)

proc renderModelGetConfidence*(self: OpenXRRenderModelExtension; renderModel: RID): XRPose_TrackingConfidence =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_get_confidence", 2350330949)
  var ret: encoded XRPose_TrackingConfidence
  methodbind.ptrcall(self, [getPtr renderModel], addr ret)
  (addr ret).decode_result(XRPose_TrackingConfidence)

proc renderModelGetRootTransform*(self: OpenXRRenderModelExtension; renderModel: RID): Transform3D =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_get_root_transform", 1128465797)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr renderModel], addr ret)
  (addr ret).decode_result(Transform3D)

proc renderModelGetAnimatableNodeCount*(self: OpenXRRenderModelExtension; renderModel: RID): uint32 =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_get_animatable_node_count", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr renderModel], addr ret)
  (addr ret).decode_result(uint32)

proc renderModelGetAnimatableNodeName*(self: OpenXRRenderModelExtension; renderModel: RID; index: uint32): String =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_get_animatable_node_name", 1464764419)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr renderModel, getPtr index], addr ret)
  (addr ret).decode_result(String)

proc renderModelIsAnimatableNodeVisible*(self: OpenXRRenderModelExtension; renderModel: RID; index: uint32): bool =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_is_animatable_node_visible", 3120086654)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr renderModel, getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc renderModelGetAnimatableNodeTransform*(self: OpenXRRenderModelExtension; renderModel: RID; index: uint32): Transform3D =
  expandMethodBind(className OpenXRRenderModelExtension, "render_model_get_animatable_node_transform", 1050775521)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr renderModel, getPtr index], addr ret)
  (addr ret).decode_result(Transform3D)
