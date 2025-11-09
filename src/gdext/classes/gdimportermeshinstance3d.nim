{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(ImporterMeshInstance3D, Node3D)

proc setMesh*(self: ImporterMeshInstance3D; mesh: gdref ImporterMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_mesh", 2255166972)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getMesh*(self: ImporterMeshInstance3D): gdref ImporterMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_mesh", 3161779525)
  methodbind.ptrcall(self, [], gdref ImporterMesh)

proc setSkin*(self: ImporterMeshInstance3D; skin: gdref Skin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_skin", 3971435618)
  methodbind.ptrcall(self, [getPtr skin], void)

proc getSkin*(self: ImporterMeshInstance3D): gdref Skin =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_skin", 2074563878)
  methodbind.ptrcall(self, [], gdref Skin)

proc setSkeletonPath*(self: ImporterMeshInstance3D; skeletonPath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_skeleton_path", 1348162250)
  methodbind.ptrcall(self, [getPtr skeletonPath], void)

proc getSkeletonPath*(self: ImporterMeshInstance3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_skeleton_path", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setLayerMask*(self: ImporterMeshInstance3D; layerMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_layer_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr layerMask], void)

proc getLayerMask*(self: ImporterMeshInstance3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_layer_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCastShadowsSetting*(self: ImporterMeshInstance3D; shadowCastingSetting: GeometryInstance3D_ShadowCastingSetting): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_cast_shadows_setting", 856677339)
  methodbind.ptrcall(self, [getPtr shadowCastingSetting], void)

proc getCastShadowsSetting*(self: ImporterMeshInstance3D): GeometryInstance3D_ShadowCastingSetting =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_cast_shadows_setting", 3383019359)
  methodbind.ptrcall(self, [], GeometryInstance3D_ShadowCastingSetting)

proc setVisibilityRangeEndMargin*(self: ImporterMeshInstance3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_visibility_range_end_margin", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getVisibilityRangeEndMargin*(self: ImporterMeshInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_visibility_range_end_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeEnd*(self: ImporterMeshInstance3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_visibility_range_end", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getVisibilityRangeEnd*(self: ImporterMeshInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_visibility_range_end", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeBeginMargin*(self: ImporterMeshInstance3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_visibility_range_begin_margin", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getVisibilityRangeBeginMargin*(self: ImporterMeshInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_visibility_range_begin_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeBegin*(self: ImporterMeshInstance3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_visibility_range_begin", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getVisibilityRangeBegin*(self: ImporterMeshInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_visibility_range_begin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVisibilityRangeFadeMode*(self: ImporterMeshInstance3D; mode: GeometryInstance3D_VisibilityRangeFadeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "set_visibility_range_fade_mode", 1440117808)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getVisibilityRangeFadeMode*(self: ImporterMeshInstance3D): GeometryInstance3D_VisibilityRangeFadeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMeshInstance3D, "get_visibility_range_fade_mode", 2067221882)
  methodbind.ptrcall(self, [], GeometryInstance3D_VisibilityRangeFadeMode)

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
