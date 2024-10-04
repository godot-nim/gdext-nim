{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc projectRayNormal*(self: Camera3D; screenPoint: Vector2): Vector3 =
  expandMethodBind(className Camera3D, "project_ray_normal", 1718073306)
  var `?param` = [getPtr screenPoint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc projectLocalRayNormal*(self: Camera3D; screenPoint: Vector2): Vector3 =
  expandMethodBind(className Camera3D, "project_local_ray_normal", 1718073306)
  var `?param` = [getPtr screenPoint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc projectRayOrigin*(self: Camera3D; screenPoint: Vector2): Vector3 =
  expandMethodBind(className Camera3D, "project_ray_origin", 1718073306)
  var `?param` = [getPtr screenPoint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc unprojectPosition*(self: Camera3D; worldPoint: Vector3): Vector2 =
  expandMethodBind(className Camera3D, "unproject_position", 3758901831)
  var `?param` = [getPtr worldPoint]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc isPositionBehind*(self: Camera3D; worldPoint: Vector3): bool =
  expandMethodBind(className Camera3D, "is_position_behind", 3108956480)
  var `?param` = [getPtr worldPoint]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc projectPosition*(self: Camera3D; screenPoint: Vector2; zDepth: Float): Vector3 =
  expandMethodBind(className Camera3D, "project_position", 2171975744)
  var `?param` = [getPtr screenPoint, getPtr zDepth]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc setPerspective*(self: Camera3D; fov: Float; zNear: Float; zFar: Float): void =
  expandMethodBind(className Camera3D, "set_perspective", 2385087082)
  var `?param` = [getPtr fov, getPtr zNear, getPtr zFar]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOrthogonal*(self: Camera3D; size: Float; zNear: Float; zFar: Float): void =
  expandMethodBind(className Camera3D, "set_orthogonal", 2385087082)
  var `?param` = [getPtr size, getPtr zNear, getPtr zFar]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFrustum*(self: Camera3D; size: Float; offset: Vector2; zNear: Float; zFar: Float): void =
  expandMethodBind(className Camera3D, "set_frustum", 354890663)
  var `?param` = [getPtr size, getPtr offset, getPtr zNear, getPtr zFar]
  methodbind.ptrcall(self, addr `?param`[0])

proc makeCurrent*(self: Camera3D): void =
  expandMethodBind(className Camera3D, "make_current", 3218959716)
  methodbind.ptrcall(self, nil)

proc clearCurrent*(self: Camera3D; enableNext: bool = true): void =
  expandMethodBind(className Camera3D, "clear_current", 3216645846)
  var `?param` = [getPtr enableNext]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCurrent*(self: Camera3D; enabled: bool): void =
  expandMethodBind(className Camera3D, "set_current", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCurrent*(self: Camera3D): bool =
  expandMethodBind(className Camera3D, "is_current", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCameraTransform*(self: Camera3D): Transform3D =
  expandMethodBind(className Camera3D, "get_camera_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc getCameraProjection*(self: Camera3D): Projection =
  expandMethodBind(className Camera3D, "get_camera_projection", 2910717950)
  var ret: encoded Projection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Projection)

proc getFov*(self: Camera3D): Float =
  expandMethodBind(className Camera3D, "get_fov", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getFrustumOffset*(self: Camera3D): Vector2 =
  expandMethodBind(className Camera3D, "get_frustum_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getSize*(self: Camera3D): Float =
  expandMethodBind(className Camera3D, "get_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getFar*(self: Camera3D): Float =
  expandMethodBind(className Camera3D, "get_far", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getNear*(self: Camera3D): Float =
  expandMethodBind(className Camera3D, "get_near", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFov*(self: Camera3D; fov: Float): void =
  expandMethodBind(className Camera3D, "set_fov", 373806689)
  var `?param` = [getPtr fov]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFrustumOffset*(self: Camera3D; offset: Vector2): void =
  expandMethodBind(className Camera3D, "set_frustum_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSize*(self: Camera3D; size: Float): void =
  expandMethodBind(className Camera3D, "set_size", 373806689)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFar*(self: Camera3D; far: Float): void =
  expandMethodBind(className Camera3D, "set_far", 373806689)
  var `?param` = [getPtr far]
  methodbind.ptrcall(self, addr `?param`[0])

proc setNear*(self: Camera3D; near: Float): void =
  expandMethodBind(className Camera3D, "set_near", 373806689)
  var `?param` = [getPtr near]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProjection*(self: Camera3D): Camera3D_ProjectionType =
  expandMethodBind(className Camera3D, "get_projection", 2624185235)
  var ret: encoded Camera3D_ProjectionType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Camera3D_ProjectionType)

proc setProjection*(self: Camera3D; mode: Camera3D_ProjectionType): void =
  expandMethodBind(className Camera3D, "set_projection", 4218540108)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc setHOffset*(self: Camera3D; offset: Float): void =
  expandMethodBind(className Camera3D, "set_h_offset", 373806689)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHOffset*(self: Camera3D): Float =
  expandMethodBind(className Camera3D, "get_h_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVOffset*(self: Camera3D; offset: Float): void =
  expandMethodBind(className Camera3D, "set_v_offset", 373806689)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVOffset*(self: Camera3D): Float =
  expandMethodBind(className Camera3D, "get_v_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCullMask*(self: Camera3D; mask: uint32): void =
  expandMethodBind(className Camera3D, "set_cull_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCullMask*(self: Camera3D): uint32 =
  expandMethodBind(className Camera3D, "get_cull_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setEnvironment*(self: Camera3D; env: gdref Environment): void =
  expandMethodBind(className Camera3D, "set_environment", 4143518816)
  var `?param` = [getPtr env]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironment*(self: Camera3D): gdref Environment =
  expandMethodBind(className Camera3D, "get_environment", 3082064660)
  var ret: encoded gdref Environment
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Environment)

proc setAttributes*(self: Camera3D; env: gdref CameraAttributes): void =
  expandMethodBind(className Camera3D, "set_attributes", 2817810567)
  var `?param` = [getPtr env]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttributes*(self: Camera3D): gdref CameraAttributes =
  expandMethodBind(className Camera3D, "get_attributes", 3921283215)
  var ret: encoded gdref CameraAttributes
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CameraAttributes)

proc setCompositor*(self: Camera3D; compositor: gdref Compositor): void =
  expandMethodBind(className Camera3D, "set_compositor", 1586754307)
  var `?param` = [getPtr compositor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCompositor*(self: Camera3D): gdref Compositor =
  expandMethodBind(className Camera3D, "get_compositor", 3647707413)
  var ret: encoded gdref Compositor
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Compositor)

proc setKeepAspectMode*(self: Camera3D; mode: Camera3D_KeepAspect): void =
  expandMethodBind(className Camera3D, "set_keep_aspect_mode", 1740651252)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getKeepAspectMode*(self: Camera3D): Camera3D_KeepAspect =
  expandMethodBind(className Camera3D, "get_keep_aspect_mode", 2790278316)
  var ret: encoded Camera3D_KeepAspect
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Camera3D_KeepAspect)

proc setDopplerTracking*(self: Camera3D; mode: Camera3D_DopplerTracking): void =
  expandMethodBind(className Camera3D, "set_doppler_tracking", 3109431270)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDopplerTracking*(self: Camera3D): Camera3D_DopplerTracking =
  expandMethodBind(className Camera3D, "get_doppler_tracking", 1584483649)
  var ret: encoded Camera3D_DopplerTracking
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Camera3D_DopplerTracking)

proc getFrustum*(self: Camera3D): TypedArray[Plane] =
  expandMethodBind(className Camera3D, "get_frustum", 3995934104)
  var ret: encoded TypedArray[Plane]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Plane])

proc isPositionInFrustum*(self: Camera3D; worldPoint: Vector3): bool =
  expandMethodBind(className Camera3D, "is_position_in_frustum", 3108956480)
  var `?param` = [getPtr worldPoint]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getCameraRid*(self: Camera3D): Rid =
  expandMethodBind(className Camera3D, "get_camera_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getPyramidShapeRid*(self: Camera3D): Rid =
  expandMethodBind(className Camera3D, "get_pyramid_shape_rid", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setCullMaskValue*(self: Camera3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className Camera3D, "set_cull_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCullMaskValue*(self: Camera3D; layerNumber: int32): bool =
  expandMethodBind(className Camera3D, "get_cull_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

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

const Camera3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Camera3D]): Table[string, string] = Camera3D_vmap