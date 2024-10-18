{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setMesh*(self: ImporterMeshInstance3D; mesh: gdref ImporterMesh): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_mesh", 2255166972)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: ImporterMeshInstance3D): gdref ImporterMesh =
  expandMethodBind(className ImporterMeshInstance3D, "get_mesh", 3161779525)
  var ret: encoded gdref ImporterMesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ImporterMesh)

proc setSkin*(self: ImporterMeshInstance3D; skin: gdref Skin): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_skin", 3971435618)
  var `?param` = [getPtr skin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkin*(self: ImporterMeshInstance3D): gdref Skin =
  expandMethodBind(className ImporterMeshInstance3D, "get_skin", 2074563878)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Skin)

proc setSkeletonPath*(self: ImporterMeshInstance3D; skeletonPath: NodePath): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_skeleton_path", 1348162250)
  var `?param` = [getPtr skeletonPath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeletonPath*(self: ImporterMeshInstance3D): NodePath =
  expandMethodBind(className ImporterMeshInstance3D, "get_skeleton_path", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setLayerMask*(self: ImporterMeshInstance3D; layerMask: uint32): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_layer_mask", 1286410249)
  var `?param` = [getPtr layerMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLayerMask*(self: ImporterMeshInstance3D): uint32 =
  expandMethodBind(className ImporterMeshInstance3D, "get_layer_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCastShadowsSetting*(self: ImporterMeshInstance3D; shadowCastingSetting: GeometryInstance3D_ShadowCastingSetting): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_cast_shadows_setting", 856677339)
  var `?param` = [getPtr shadowCastingSetting]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCastShadowsSetting*(self: ImporterMeshInstance3D): GeometryInstance3D_ShadowCastingSetting =
  expandMethodBind(className ImporterMeshInstance3D, "get_cast_shadows_setting", 3383019359)
  var ret: encoded GeometryInstance3D_ShadowCastingSetting
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GeometryInstance3D_ShadowCastingSetting)

proc setVisibilityRangeEndMargin*(self: ImporterMeshInstance3D; distance: Float): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_visibility_range_end_margin", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityRangeEndMargin*(self: ImporterMeshInstance3D): Float =
  expandMethodBind(className ImporterMeshInstance3D, "get_visibility_range_end_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeEnd*(self: ImporterMeshInstance3D; distance: Float): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_visibility_range_end", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityRangeEnd*(self: ImporterMeshInstance3D): Float =
  expandMethodBind(className ImporterMeshInstance3D, "get_visibility_range_end", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeBeginMargin*(self: ImporterMeshInstance3D; distance: Float): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_visibility_range_begin_margin", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityRangeBeginMargin*(self: ImporterMeshInstance3D): Float =
  expandMethodBind(className ImporterMeshInstance3D, "get_visibility_range_begin_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeBegin*(self: ImporterMeshInstance3D; distance: Float): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_visibility_range_begin", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityRangeBegin*(self: ImporterMeshInstance3D): Float =
  expandMethodBind(className ImporterMeshInstance3D, "get_visibility_range_begin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVisibilityRangeFadeMode*(self: ImporterMeshInstance3D; mode: GeometryInstance3D_VisibilityRangeFadeMode): void =
  expandMethodBind(className ImporterMeshInstance3D, "set_visibility_range_fade_mode", 1440117808)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityRangeFadeMode*(self: ImporterMeshInstance3D): GeometryInstance3D_VisibilityRangeFadeMode =
  expandMethodBind(className ImporterMeshInstance3D, "get_visibility_range_fade_mode", 2067221882)
  var ret: encoded GeometryInstance3D_VisibilityRangeFadeMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GeometryInstance3D_VisibilityRangeFadeMode)

template mesh*(self: ImporterMeshInstance3D): untyped = self.getMesh()
template `mesh=`*(self: ImporterMeshInstance3D; value) = self.setMesh(value)

template skin*(self: ImporterMeshInstance3D): untyped = self.getSkin()
template `skin=`*(self: ImporterMeshInstance3D; value) = self.setSkin(value)

template skeletonPath*(self: ImporterMeshInstance3D): untyped = self.getSkeletonPath()
template `skeletonPath=`*(self: ImporterMeshInstance3D; value) = self.setSkeletonPath(value)

template layerMask*(self: ImporterMeshInstance3D): untyped = self.getLayerMask()
template `layerMask=`*(self: ImporterMeshInstance3D; value) = self.setLayerMask(value)

template castShadow*(self: ImporterMeshInstance3D): untyped = self.getCastShadowsSetting()
template `castShadow=`*(self: ImporterMeshInstance3D; value) = self.setCastShadowsSetting(value)

template visibilityRangeBegin*(self: ImporterMeshInstance3D): untyped = self.getVisibilityRangeBegin()
template `visibilityRangeBegin=`*(self: ImporterMeshInstance3D; value) = self.setVisibilityRangeBegin(value)

template visibilityRangeBeginMargin*(self: ImporterMeshInstance3D): untyped = self.getVisibilityRangeBeginMargin()
template `visibilityRangeBeginMargin=`*(self: ImporterMeshInstance3D; value) = self.setVisibilityRangeBeginMargin(value)

template visibilityRangeEnd*(self: ImporterMeshInstance3D): untyped = self.getVisibilityRangeEnd()
template `visibilityRangeEnd=`*(self: ImporterMeshInstance3D; value) = self.setVisibilityRangeEnd(value)

template visibilityRangeEndMargin*(self: ImporterMeshInstance3D): untyped = self.getVisibilityRangeEndMargin()
template `visibilityRangeEndMargin=`*(self: ImporterMeshInstance3D; value) = self.setVisibilityRangeEndMargin(value)

template visibilityRangeFadeMode*(self: ImporterMeshInstance3D): untyped = self.getVisibilityRangeFadeMode()
template `visibilityRangeFadeMode=`*(self: ImporterMeshInstance3D; value) = self.setVisibilityRangeFadeMode(value)

const ImporterMeshInstance3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImporterMeshInstance3D]): Table[string, string] = ImporterMeshInstance3D_vmap