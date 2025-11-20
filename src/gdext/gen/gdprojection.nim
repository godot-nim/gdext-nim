# constant values

const Projection_Identity: Projection = projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
template Identity*(_: typedesc[Projection]): Projection = Projection_Identity

const Projection_Zero: Projection = projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
template Zero*(_: typedesc[Projection]): Projection = Projection_Zero

# `==(Projection Variant)`
# `!=(Projection Variant)`
var `not(Projection)`: PtrOperatorEvaluator
var `*(Projection Vector4)`: PtrOperatorEvaluator
# `==(Projection Projection)`
# `!=(Projection Projection)`
var `*(Projection Projection)`: PtrOperatorEvaluator
# `in(Projection Dictionary)`
# `in(Projection Array)`
func `not`*(left: Projection): bool = {.noSideEffect.}: `not(Projection)`(getPtr left, nil, addr result)
func `*`*(left: Projection; right: Vector4): Vector4 = {.noSideEffect.}: `*(Projection Vector4)`(getPtr left, getPtr right, addr result)
func `*`*(left: Projection; right: Projection): Projection = {.noSideEffect.}: `*(Projection Projection)`(getPtr left, getPtr right, addr result)
proc load_Projection_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Projection)` = load(opNot, VariantType_Projection, VariantType_Nil)
  `*(Projection Vector4)` = load(opMultiply, VariantType_Projection, VariantType_Vector4)
  `*(Projection Projection)` = load(opMultiply, VariantType_Projection, VariantType_Projection)

var `createDepthCorrection(Projection bool)`: PtrBuiltinMethod
var `createLightAtlasRect(Projection Rect2)`: PtrBuiltinMethod
var `createPerspective(Projection Float Float Float Float bool)`: PtrBuiltinMethod
var `createPerspectiveHmd(Projection Float Float Float Float bool Int Float Float)`: PtrBuiltinMethod
var `createForHmd(Projection Int Float Float Float Float Float Float Float)`: PtrBuiltinMethod
var `createOrthogonal(Projection Float Float Float Float Float Float)`: PtrBuiltinMethod
var `createOrthogonalAspect(Projection Float Float Float Float bool)`: PtrBuiltinMethod
var `createFrustum(Projection Float Float Float Float Float Float)`: PtrBuiltinMethod
var `createFrustumAspect(Projection Float Float Vector2 Float Float bool)`: PtrBuiltinMethod
var `createFitAabb(Projection AABB)`: PtrBuiltinMethod
var `determinant(Projection)`: PtrBuiltinMethod
var `perspectiveZnearAdjusted(Projection Float)`: PtrBuiltinMethod
var `getProjectionPlane(Projection Int)`: PtrBuiltinMethod
var `flippedY(Projection)`: PtrBuiltinMethod
var `jitterOffseted(Projection Vector2)`: PtrBuiltinMethod
var `getFovy(Projection Float Float)`: PtrBuiltinMethod
var `getZFar(Projection)`: PtrBuiltinMethod
var `getZNear(Projection)`: PtrBuiltinMethod
var `getAspect(Projection)`: PtrBuiltinMethod
var `getFov(Projection)`: PtrBuiltinMethod
var `isOrthogonal(Projection)`: PtrBuiltinMethod
var `getViewportHalfExtents(Projection)`: PtrBuiltinMethod
var `getFarPlaneHalfExtents(Projection)`: PtrBuiltinMethod
var `inverse(Projection)`: PtrBuiltinMethod
var `getPixelsPerMeter(Projection Int)`: PtrBuiltinMethod
var `getLodMultiplier(Projection)`: PtrBuiltinMethod

proc createDepthCorrection*(_: typedesc[Projection]; flipY: bool): Projection =
  `createDepthCorrection(Projection bool)`.call([getPtr flipY], addr result)
proc createLightAtlasRect*(_: typedesc[Projection]; rect: Rect2): Projection =
  `createLightAtlasRect(Projection Rect2)`.call([getPtr rect], addr result)
proc createPerspective*(_: typedesc[Projection]; fovy: Float; aspect: Float; zNear: Float; zFar: Float; flipFov: bool = false): Projection =
  `createPerspective(Projection Float Float Float Float bool)`.call([getPtr fovy, getPtr aspect, getPtr zNear, getPtr zFar, getPtr flipFov], addr result)
proc createPerspectiveHmd*(_: typedesc[Projection]; fovy: Float; aspect: Float; zNear: Float; zFar: Float; flipFov: bool; eye: Int; intraocularDist: Float; convergenceDist: Float): Projection =
  `createPerspectiveHmd(Projection Float Float Float Float bool Int Float Float)`.call([getPtr fovy, getPtr aspect, getPtr zNear, getPtr zFar, getPtr flipFov, getPtr eye, getPtr intraocularDist, getPtr convergenceDist], addr result)
proc createForHmd*(_: typedesc[Projection]; eye: Int; aspect: Float; intraocularDist: Float; displayWidth: Float; displayToLens: Float; oversample: Float; zNear: Float; zFar: Float): Projection =
  `createForHmd(Projection Int Float Float Float Float Float Float Float)`.call([getPtr eye, getPtr aspect, getPtr intraocularDist, getPtr displayWidth, getPtr displayToLens, getPtr oversample, getPtr zNear, getPtr zFar], addr result)
proc createOrthogonal*(_: typedesc[Projection]; left: Float; right: Float; bottom: Float; top: Float; zNear: Float; zFar: Float): Projection =
  `createOrthogonal(Projection Float Float Float Float Float Float)`.call([getPtr left, getPtr right, getPtr bottom, getPtr top, getPtr zNear, getPtr zFar], addr result)
proc createOrthogonalAspect*(_: typedesc[Projection]; size: Float; aspect: Float; zNear: Float; zFar: Float; flipFov: bool = false): Projection =
  `createOrthogonalAspect(Projection Float Float Float Float bool)`.call([getPtr size, getPtr aspect, getPtr zNear, getPtr zFar, getPtr flipFov], addr result)
proc createFrustum*(_: typedesc[Projection]; left: Float; right: Float; bottom: Float; top: Float; zNear: Float; zFar: Float): Projection =
  `createFrustum(Projection Float Float Float Float Float Float)`.call([getPtr left, getPtr right, getPtr bottom, getPtr top, getPtr zNear, getPtr zFar], addr result)
proc createFrustumAspect*(_: typedesc[Projection]; size: Float; aspect: Float; offset: Vector2; zNear: Float; zFar: Float; flipFov: bool = false): Projection =
  `createFrustumAspect(Projection Float Float Vector2 Float Float bool)`.call([getPtr size, getPtr aspect, getPtr offset, getPtr zNear, getPtr zFar, getPtr flipFov], addr result)
proc createFitAabb*(_: typedesc[Projection]; aabb: AABB): Projection =
  `createFitAabb(Projection AABB)`.call([getPtr aabb], addr result)
proc determinant*(self: Projection): Float =
  `determinant(Projection)`.call(addr self, [], addr result)
proc perspectiveZnearAdjusted*(self: Projection; newZnear: Float): Projection =
  `perspectiveZnearAdjusted(Projection Float)`.call(addr self, [getPtr newZnear], addr result)
proc getProjectionPlane*(self: Projection; plane: Int): Plane =
  `getProjectionPlane(Projection Int)`.call(addr self, [getPtr plane], addr result)
proc flippedY*(self: Projection): Projection =
  `flippedY(Projection)`.call(addr self, [], addr result)
proc jitterOffseted*(self: Projection; offset: Vector2): Projection =
  `jitterOffseted(Projection Vector2)`.call(addr self, [getPtr offset], addr result)
proc getFovy*(_: typedesc[Projection]; fovx: Float; aspect: Float): Float =
  `getFovy(Projection Float Float)`.call([getPtr fovx, getPtr aspect], addr result)
proc getZFar*(self: Projection): Float =
  `getZFar(Projection)`.call(addr self, [], addr result)
proc getZNear*(self: Projection): Float =
  `getZNear(Projection)`.call(addr self, [], addr result)
proc getAspect*(self: Projection): Float =
  `getAspect(Projection)`.call(addr self, [], addr result)
proc getFov*(self: Projection): Float =
  `getFov(Projection)`.call(addr self, [], addr result)
proc isOrthogonal*(self: Projection): bool =
  `isOrthogonal(Projection)`.call(addr self, [], addr result)
proc getViewportHalfExtents*(self: Projection): Vector2 =
  `getViewportHalfExtents(Projection)`.call(addr self, [], addr result)
proc getFarPlaneHalfExtents*(self: Projection): Vector2 =
  `getFarPlaneHalfExtents(Projection)`.call(addr self, [], addr result)
proc inverse*(self: Projection): Projection =
  `inverse(Projection)`.call(addr self, [], addr result)
proc getPixelsPerMeter*(self: Projection; forPixelWidth: Int): Int =
  `getPixelsPerMeter(Projection Int)`.call(addr self, [getPtr forPixelWidth], addr result)
proc getLodMultiplier*(self: Projection): Float =
  `getLodMultiplier(Projection)`.call(addr self, [], addr result)

proc load_Projection_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `createDepthCorrection(Projection bool)` = load(VariantType_Projection, "create_depth_correction", 1228516048)
  `createLightAtlasRect(Projection Rect2)` = load(VariantType_Projection, "create_light_atlas_rect", 2654950662)
  `createPerspective(Projection Float Float Float Float bool)` = load(VariantType_Projection, "create_perspective", 390915442)
  `createPerspectiveHmd(Projection Float Float Float Float bool Int Float Float)` = load(VariantType_Projection, "create_perspective_hmd", 2857674800)
  `createForHmd(Projection Int Float Float Float Float Float Float Float)` = load(VariantType_Projection, "create_for_hmd", 4184144994)
  `createOrthogonal(Projection Float Float Float Float Float Float)` = load(VariantType_Projection, "create_orthogonal", 3707929169)
  `createOrthogonalAspect(Projection Float Float Float Float bool)` = load(VariantType_Projection, "create_orthogonal_aspect", 390915442)
  `createFrustum(Projection Float Float Float Float Float Float)` = load(VariantType_Projection, "create_frustum", 3707929169)
  `createFrustumAspect(Projection Float Float Vector2 Float Float bool)` = load(VariantType_Projection, "create_frustum_aspect", 1535076251)
  `createFitAabb(Projection AABB)` = load(VariantType_Projection, "create_fit_aabb", 2264694907)
  `determinant(Projection)` = load(VariantType_Projection, "determinant", 466405837)
  `perspectiveZnearAdjusted(Projection Float)` = load(VariantType_Projection, "perspective_znear_adjusted", 3584785443)
  `getProjectionPlane(Projection Int)` = load(VariantType_Projection, "get_projection_plane", 1551184160)
  `flippedY(Projection)` = load(VariantType_Projection, "flipped_y", 4212530932)
  `jitterOffseted(Projection Vector2)` = load(VariantType_Projection, "jitter_offseted", 2448438599)
  `getFovy(Projection Float Float)` = load(VariantType_Projection, "get_fovy", 3514207532)
  `getZFar(Projection)` = load(VariantType_Projection, "get_z_far", 466405837)
  `getZNear(Projection)` = load(VariantType_Projection, "get_z_near", 466405837)
  `getAspect(Projection)` = load(VariantType_Projection, "get_aspect", 466405837)
  `getFov(Projection)` = load(VariantType_Projection, "get_fov", 466405837)
  `isOrthogonal(Projection)` = load(VariantType_Projection, "is_orthogonal", 3918633141)
  `getViewportHalfExtents(Projection)` = load(VariantType_Projection, "get_viewport_half_extents", 2428350749)
  `getFarPlaneHalfExtents(Projection)` = load(VariantType_Projection, "get_far_plane_half_extents", 2428350749)
  `inverse(Projection)` = load(VariantType_Projection, "inverse", 4212530932)
  `getPixelsPerMeter(Projection Int)` = load(VariantType_Projection, "get_pixels_per_meter", 4103005248)
  `getLodMultiplier(Projection)` = load(VariantType_Projection, "get_lod_multiplier", 466405837)
