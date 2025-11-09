{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(Camera3D, Node3D)

proc projectRayNormal*(self: Camera3D; screenPoint: Vector2): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "project_ray_normal", 1718073306)
  methodbind.ptrcall(self, [getPtr screenPoint], Vector3)

proc projectLocalRayNormal*(self: Camera3D; screenPoint: Vector2): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "project_local_ray_normal", 1718073306)
  methodbind.ptrcall(self, [getPtr screenPoint], Vector3)

proc projectRayOrigin*(self: Camera3D; screenPoint: Vector2): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "project_ray_origin", 1718073306)
  methodbind.ptrcall(self, [getPtr screenPoint], Vector3)

proc unprojectPosition*(self: Camera3D; worldPoint: Vector3): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "unproject_position", 3758901831)
  methodbind.ptrcall(self, [getPtr worldPoint], Vector2)

proc isPositionBehind*(self: Camera3D; worldPoint: Vector3): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "is_position_behind", 3108956480)
  methodbind.ptrcall(self, [getPtr worldPoint], bool)

proc projectPosition*(self: Camera3D; screenPoint: Vector2; zDepth: Float): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "project_position", 2171975744)
  methodbind.ptrcall(self, [getPtr screenPoint, getPtr zDepth], Vector3)

proc setPerspective*(self: Camera3D; fov: Float; zNear: Float; zFar: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_perspective", 2385087082)
  methodbind.ptrcall(self, [getPtr fov, getPtr zNear, getPtr zFar], void)

proc setOrthogonal*(self: Camera3D; size: Float; zNear: Float; zFar: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_orthogonal", 2385087082)
  methodbind.ptrcall(self, [getPtr size, getPtr zNear, getPtr zFar], void)

proc setFrustum*(self: Camera3D; size: Float; offset: Vector2; zNear: Float; zFar: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_frustum", 354890663)
  methodbind.ptrcall(self, [getPtr size, getPtr offset, getPtr zNear, getPtr zFar], void)

proc makeCurrent*(self: Camera3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "make_current", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearCurrent*(self: Camera3D; enableNext: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "clear_current", 3216645846)
  methodbind.ptrcall(self, [getPtr enableNext], void)

proc setCurrent*(self: Camera3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_current", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCurrent*(self: Camera3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "is_current", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getCameraTransform*(self: Camera3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_camera_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc getCameraProjection*(self: Camera3D): Projection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_camera_projection", 2910717950)
  methodbind.ptrcall(self, [], Projection)

proc getFov*(self: Camera3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_fov", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getFrustumOffset*(self: Camera3D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_frustum_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getSize*(self: Camera3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getFar*(self: Camera3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_far", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getNear*(self: Camera3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_near", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFov*(self: Camera3D; fov: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_fov", 373806689)
  methodbind.ptrcall(self, [getPtr fov], void)

proc setFrustumOffset*(self: Camera3D; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_frustum_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc setSize*(self: Camera3D; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_size", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc setFar*(self: Camera3D; far: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_far", 373806689)
  methodbind.ptrcall(self, [getPtr far], void)

proc setNear*(self: Camera3D; near: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_near", 373806689)
  methodbind.ptrcall(self, [getPtr near], void)

proc getProjection*(self: Camera3D): Camera3D_ProjectionType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_projection", 2624185235)
  methodbind.ptrcall(self, [], Camera3D_ProjectionType)

proc setProjection*(self: Camera3D; mode: Camera3D_ProjectionType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_projection", 4218540108)
  methodbind.ptrcall(self, [getPtr mode], void)

proc setHOffset*(self: Camera3D; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_h_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getHOffset*(self: Camera3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_h_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVOffset*(self: Camera3D; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_v_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getVOffset*(self: Camera3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_v_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCullMask*(self: Camera3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCullMask*(self: Camera3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_cull_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setEnvironment*(self: Camera3D; env: gdref Environment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_environment", 4143518816)
  methodbind.ptrcall(self, [getPtr env], void)

proc getEnvironment*(self: Camera3D): gdref Environment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_environment", 3082064660)
  methodbind.ptrcall(self, [], gdref Environment)

proc setAttributes*(self: Camera3D; env: gdref CameraAttributes): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_attributes", 2817810567)
  methodbind.ptrcall(self, [getPtr env], void)

proc getAttributes*(self: Camera3D): gdref CameraAttributes =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_attributes", 3921283215)
  methodbind.ptrcall(self, [], gdref CameraAttributes)

proc setCompositor*(self: Camera3D; compositor: gdref Compositor): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_compositor", 1586754307)
  methodbind.ptrcall(self, [getPtr compositor], void)

proc getCompositor*(self: Camera3D): gdref Compositor =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_compositor", 3647707413)
  methodbind.ptrcall(self, [], gdref Compositor)

proc setKeepAspectMode*(self: Camera3D; mode: Camera3D_KeepAspect): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_keep_aspect_mode", 1740651252)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getKeepAspectMode*(self: Camera3D): Camera3D_KeepAspect =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_keep_aspect_mode", 2790278316)
  methodbind.ptrcall(self, [], Camera3D_KeepAspect)

proc setDopplerTracking*(self: Camera3D; mode: Camera3D_DopplerTracking): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_doppler_tracking", 3109431270)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDopplerTracking*(self: Camera3D): Camera3D_DopplerTracking =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_doppler_tracking", 1584483649)
  methodbind.ptrcall(self, [], Camera3D_DopplerTracking)

proc getFrustum*(self: Camera3D): TypedArray[Plane] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_frustum", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Plane])

proc isPositionInFrustum*(self: Camera3D; worldPoint: Vector3): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "is_position_in_frustum", 3108956480)
  methodbind.ptrcall(self, [getPtr worldPoint], bool)

proc getCameraRid*(self: Camera3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_camera_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getPyramidShapeRid*(self: Camera3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_pyramid_shape_rid", 529393457)
  methodbind.ptrcall(self, [], RID)

proc setCullMaskValue*(self: Camera3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "set_cull_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCullMaskValue*(self: Camera3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera3D, "get_cull_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

template keepAspect*(self: Camera3D): untyped = self.getKeepAspectMode()
template `keepAspect=`*(self: Camera3D; value) = self.setKeepAspectMode(value)

template cullMask*(self: Camera3D): untyped = self.getCullMask()
template `cullMask=`*(self: Camera3D; value) = self.setCullMask(value)

template environment*(self: Camera3D): untyped = self.getEnvironment()
template `environment=`*(self: Camera3D; value) = self.setEnvironment(value)

template attributes*(self: Camera3D): untyped = self.getAttributes()
template `attributes=`*(self: Camera3D; value) = self.setAttributes(value)

template compositor*(self: Camera3D): untyped = self.getCompositor()
template `compositor=`*(self: Camera3D; value) = self.setCompositor(value)

template hOffset*(self: Camera3D): untyped = self.getHOffset()
template `hOffset=`*(self: Camera3D; value) = self.setHOffset(value)

template vOffset*(self: Camera3D): untyped = self.getVOffset()
template `vOffset=`*(self: Camera3D; value) = self.setVOffset(value)

template dopplerTracking*(self: Camera3D): untyped = self.getDopplerTracking()
template `dopplerTracking=`*(self: Camera3D; value) = self.setDopplerTracking(value)

template projection*(self: Camera3D): untyped = self.getProjection()
template `projection=`*(self: Camera3D; value) = self.setProjection(value)

template current*(self: Camera3D): untyped = self.isCurrent()
template `current=`*(self: Camera3D; value) = self.setCurrent(value)

template fov*(self: Camera3D): untyped = self.getFov()
template `fov=`*(self: Camera3D; value) = self.setFov(value)

template size*(self: Camera3D): untyped = self.getSize()
template `size=`*(self: Camera3D; value) = self.setSize(value)

template frustumOffset*(self: Camera3D): untyped = self.getFrustumOffset()
template `frustumOffset=`*(self: Camera3D; value) = self.setFrustumOffset(value)

template near*(self: Camera3D): untyped = self.getNear()
template `near=`*(self: Camera3D; value) = self.setNear(value)

template far*(self: Camera3D): untyped = self.getFar()
template `far=`*(self: Camera3D; value) = self.setFar(value)
