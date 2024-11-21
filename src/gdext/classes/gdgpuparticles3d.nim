{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

proc setEmitting*(self: GpuParticles3D; emitting: bool): void =
  expandMethodBind(className GpuParticles3D, "set_emitting", 2586408642)
  var `?param` = [getPtr emitting]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAmount*(self: GpuParticles3D; amount: int32): void =
  expandMethodBind(className GpuParticles3D, "set_amount", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetime*(self: GpuParticles3D; secs: float64): void =
  expandMethodBind(className GpuParticles3D, "set_lifetime", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOneShot*(self: GpuParticles3D; enable: bool): void =
  expandMethodBind(className GpuParticles3D, "set_one_shot", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPreProcessTime*(self: GpuParticles3D; secs: float64): void =
  expandMethodBind(className GpuParticles3D, "set_pre_process_time", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setExplosivenessRatio*(self: GpuParticles3D; ratio: Float): void =
  expandMethodBind(className GpuParticles3D, "set_explosiveness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setRandomnessRatio*(self: GpuParticles3D; ratio: Float): void =
  expandMethodBind(className GpuParticles3D, "set_randomness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVisibilityAabb*(self: GpuParticles3D; aabb: Aabb): void =
  expandMethodBind(className GpuParticles3D, "set_visibility_aabb", 259215842)
  var `?param` = [getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUseLocalCoordinates*(self: GpuParticles3D; enable: bool): void =
  expandMethodBind(className GpuParticles3D, "set_use_local_coordinates", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFixedFps*(self: GpuParticles3D; fps: int32): void =
  expandMethodBind(className GpuParticles3D, "set_fixed_fps", 1286410249)
  var `?param` = [getPtr fps]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFractionalDelta*(self: GpuParticles3D; enable: bool): void =
  expandMethodBind(className GpuParticles3D, "set_fractional_delta", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInterpolate*(self: GpuParticles3D; enable: bool): void =
  expandMethodBind(className GpuParticles3D, "set_interpolate", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setProcessMaterial*(self: GpuParticles3D; material: gdref Material): void =
  expandMethodBind(className GpuParticles3D, "set_process_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSpeedScale*(self: GpuParticles3D; scale: float64): void =
  expandMethodBind(className GpuParticles3D, "set_speed_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCollisionBaseSize*(self: GpuParticles3D; size: Float): void =
  expandMethodBind(className GpuParticles3D, "set_collision_base_size", 373806689)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInterpToEnd*(self: GpuParticles3D; interp: Float): void =
  expandMethodBind(className GpuParticles3D, "set_interp_to_end", 373806689)
  var `?param` = [getPtr interp]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmitting*(self: GpuParticles3D): bool =
  expandMethodBind(className GpuParticles3D, "is_emitting", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getAmount*(self: GpuParticles3D): int32 =
  expandMethodBind(className GpuParticles3D, "get_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLifetime*(self: GpuParticles3D): float64 =
  expandMethodBind(className GpuParticles3D, "get_lifetime", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getOneShot*(self: GpuParticles3D): bool =
  expandMethodBind(className GpuParticles3D, "get_one_shot", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPreProcessTime*(self: GpuParticles3D): float64 =
  expandMethodBind(className GpuParticles3D, "get_pre_process_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getExplosivenessRatio*(self: GpuParticles3D): Float =
  expandMethodBind(className GpuParticles3D, "get_explosiveness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getRandomnessRatio*(self: GpuParticles3D): Float =
  expandMethodBind(className GpuParticles3D, "get_randomness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getVisibilityAabb*(self: GpuParticles3D): Aabb =
  expandMethodBind(className GpuParticles3D, "get_visibility_aabb", 1068685055)
  var ret: encoded Aabb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Aabb)

proc getUseLocalCoordinates*(self: GpuParticles3D): bool =
  expandMethodBind(className GpuParticles3D, "get_use_local_coordinates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFixedFps*(self: GpuParticles3D): int32 =
  expandMethodBind(className GpuParticles3D, "get_fixed_fps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFractionalDelta*(self: GpuParticles3D): bool =
  expandMethodBind(className GpuParticles3D, "get_fractional_delta", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getInterpolate*(self: GpuParticles3D): bool =
  expandMethodBind(className GpuParticles3D, "get_interpolate", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getProcessMaterial*(self: GpuParticles3D): gdref Material =
  expandMethodBind(className GpuParticles3D, "get_process_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc getSpeedScale*(self: GpuParticles3D): float64 =
  expandMethodBind(className GpuParticles3D, "get_speed_scale", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getCollisionBaseSize*(self: GpuParticles3D): Float =
  expandMethodBind(className GpuParticles3D, "get_collision_base_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getInterpToEnd*(self: GpuParticles3D): Float =
  expandMethodBind(className GpuParticles3D, "get_interp_to_end", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDrawOrder*(self: GpuParticles3D; order: GpuParticles3D_DrawOrder): void =
  expandMethodBind(className GpuParticles3D, "set_draw_order", 1208074815)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDrawOrder*(self: GpuParticles3D): GpuParticles3D_DrawOrder =
  expandMethodBind(className GpuParticles3D, "get_draw_order", 3770381780)
  var ret: encoded GpuParticles3D_DrawOrder
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GpuParticles3D_DrawOrder)

proc setDrawPasses*(self: GpuParticles3D; passes: int32): void =
  expandMethodBind(className GpuParticles3D, "set_draw_passes", 1286410249)
  var `?param` = [getPtr passes]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDrawPassMesh*(self: GpuParticles3D; pass: int32; mesh: gdref Mesh): void =
  expandMethodBind(className GpuParticles3D, "set_draw_pass_mesh", 969122797)
  var `?param` = [getPtr pass, getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDrawPasses*(self: GpuParticles3D): int32 =
  expandMethodBind(className GpuParticles3D, "get_draw_passes", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getDrawPassMesh*(self: GpuParticles3D; pass: int32): gdref Mesh =
  expandMethodBind(className GpuParticles3D, "get_draw_pass_mesh", 1576363275)
  var `?param` = [getPtr pass]
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc setSkin*(self: GpuParticles3D; skin: gdref Skin): void =
  expandMethodBind(className GpuParticles3D, "set_skin", 3971435618)
  var `?param` = [getPtr skin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkin*(self: GpuParticles3D): gdref Skin =
  expandMethodBind(className GpuParticles3D, "get_skin", 2074563878)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Skin)

proc restart*(self: GpuParticles3D): void =
  expandMethodBind(className GpuParticles3D, "restart", 3218959716)
  methodbind.ptrcall(self, nil)

proc captureAabb*(self: GpuParticles3D): Aabb =
  expandMethodBind(className GpuParticles3D, "capture_aabb", 1068685055)
  var ret: encoded Aabb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Aabb)

proc setSubEmitter*(self: GpuParticles3D; path: NodePath): void =
  expandMethodBind(className GpuParticles3D, "set_sub_emitter", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubEmitter*(self: GpuParticles3D): NodePath =
  expandMethodBind(className GpuParticles3D, "get_sub_emitter", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc emitParticle*(self: GpuParticles3D; xform: Transform3D; velocity: Vector3; color: Color; custom: Color; flags: uint32): void =
  expandMethodBind(className GpuParticles3D, "emit_particle", 992173727)
  var `?param` = [getPtr xform, getPtr velocity, getPtr color, getPtr custom, getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTrailEnabled*(self: GpuParticles3D; enabled: bool): void =
  expandMethodBind(className GpuParticles3D, "set_trail_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTrailLifetime*(self: GpuParticles3D; secs: float64): void =
  expandMethodBind(className GpuParticles3D, "set_trail_lifetime", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTrailEnabled*(self: GpuParticles3D): bool =
  expandMethodBind(className GpuParticles3D, "is_trail_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getTrailLifetime*(self: GpuParticles3D): float64 =
  expandMethodBind(className GpuParticles3D, "get_trail_lifetime", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setTransformAlign*(self: GpuParticles3D; align: GpuParticles3D_TransformAlign): void =
  expandMethodBind(className GpuParticles3D, "set_transform_align", 3892425954)
  var `?param` = [getPtr align]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransformAlign*(self: GpuParticles3D): GpuParticles3D_TransformAlign =
  expandMethodBind(className GpuParticles3D, "get_transform_align", 2100992166)
  var ret: encoded GpuParticles3D_TransformAlign
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GpuParticles3D_TransformAlign)

proc convertFromParticles*(self: GpuParticles3D; particles: Node): void =
  expandMethodBind(className GpuParticles3D, "convert_from_particles", 1078189570)
  var `?param` = [getPtr particles]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAmountRatio*(self: GpuParticles3D; ratio: Float): void =
  expandMethodBind(className GpuParticles3D, "set_amount_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAmountRatio*(self: GpuParticles3D): Float =
  expandMethodBind(className GpuParticles3D, "get_amount_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template emitting*(self: GpuParticles3D): untyped = self.isEmitting()
template `emitting=`*(self: GpuParticles3D; value) = self.setEmitting(value)

template amount*(self: GpuParticles3D): untyped = self.getAmount()
template `amount=`*(self: GpuParticles3D; value) = self.setAmount(value)

template amountRatio*(self: GpuParticles3D): untyped = self.getAmountRatio()
template `amountRatio=`*(self: GpuParticles3D; value) = self.setAmountRatio(value)

template subEmitter*(self: GpuParticles3D): untyped = self.getSubEmitter()
template `subEmitter=`*(self: GpuParticles3D; value) = self.setSubEmitter(value)

template lifetime*(self: GpuParticles3D): untyped = self.getLifetime()
template `lifetime=`*(self: GpuParticles3D; value) = self.setLifetime(value)

template interpToEnd*(self: GpuParticles3D): untyped = self.getInterpToEnd()
template `interpToEnd=`*(self: GpuParticles3D; value) = self.setInterpToEnd(value)

template oneShot*(self: GpuParticles3D): untyped = self.getOneShot()
template `oneShot=`*(self: GpuParticles3D; value) = self.setOneShot(value)

template preprocess*(self: GpuParticles3D): untyped = self.getPreProcessTime()
template `preprocess=`*(self: GpuParticles3D; value) = self.setPreProcessTime(value)

template speedScale*(self: GpuParticles3D): untyped = self.getSpeedScale()
template `speedScale=`*(self: GpuParticles3D; value) = self.setSpeedScale(value)

template explosiveness*(self: GpuParticles3D): untyped = self.getExplosivenessRatio()
template `explosiveness=`*(self: GpuParticles3D; value) = self.setExplosivenessRatio(value)

template randomness*(self: GpuParticles3D): untyped = self.getRandomnessRatio()
template `randomness=`*(self: GpuParticles3D; value) = self.setRandomnessRatio(value)

template fixedFps*(self: GpuParticles3D): untyped = self.getFixedFps()
template `fixedFps=`*(self: GpuParticles3D; value) = self.setFixedFps(value)

template interpolate*(self: GpuParticles3D): untyped = self.getInterpolate()
template `interpolate=`*(self: GpuParticles3D; value) = self.setInterpolate(value)

template fractDelta*(self: GpuParticles3D): untyped = self.getFractionalDelta()
template `fractDelta=`*(self: GpuParticles3D; value) = self.setFractionalDelta(value)

template collisionBaseSize*(self: GpuParticles3D): untyped = self.getCollisionBaseSize()
template `collisionBaseSize=`*(self: GpuParticles3D; value) = self.setCollisionBaseSize(value)

template visibilityAabb*(self: GpuParticles3D): untyped = self.getVisibilityAabb()
template `visibilityAabb=`*(self: GpuParticles3D; value) = self.setVisibilityAabb(value)

template localCoords*(self: GpuParticles3D): untyped = self.getUseLocalCoordinates()
template `localCoords=`*(self: GpuParticles3D; value) = self.setUseLocalCoordinates(value)

template drawOrder*(self: GpuParticles3D): untyped = self.getDrawOrder()
template `drawOrder=`*(self: GpuParticles3D; value) = self.setDrawOrder(value)

template transformAlign*(self: GpuParticles3D): untyped = self.getTransformAlign()
template `transformAlign=`*(self: GpuParticles3D; value) = self.setTransformAlign(value)

template trailEnabled*(self: GpuParticles3D): untyped = self.isTrailEnabled()
template `trailEnabled=`*(self: GpuParticles3D; value) = self.setTrailEnabled(value)

template trailLifetime*(self: GpuParticles3D): untyped = self.getTrailLifetime()
template `trailLifetime=`*(self: GpuParticles3D; value) = self.setTrailLifetime(value)

template processMaterial*(self: GpuParticles3D): untyped = self.getProcessMaterial()
template `processMaterial=`*(self: GpuParticles3D; value) = self.setProcessMaterial(value)

template drawPasses*(self: GpuParticles3D): untyped = self.getDrawPasses()
template `drawPasses=`*(self: GpuParticles3D; value) = self.setDrawPasses(value)

template drawPass1*(self: GpuParticles3D): untyped = self.getDrawPassMesh(int32(0))
template `drawPass1=`*(self: GpuParticles3D; value) = self.setDrawPassMesh(int32(0), value)

template drawPass2*(self: GpuParticles3D): untyped = self.getDrawPassMesh(int32(1))
template `drawPass2=`*(self: GpuParticles3D; value) = self.setDrawPassMesh(int32(1), value)

template drawPass3*(self: GpuParticles3D): untyped = self.getDrawPassMesh(int32(2))
template `drawPass3=`*(self: GpuParticles3D; value) = self.setDrawPassMesh(int32(2), value)

template drawPass4*(self: GpuParticles3D): untyped = self.getDrawPassMesh(int32(3))
template `drawPass4=`*(self: GpuParticles3D; value) = self.setDrawPassMesh(int32(3), value)

template drawSkin*(self: GpuParticles3D): untyped = self.getSkin()
template `drawSkin=`*(self: GpuParticles3D; value) = self.setSkin(value)

const GpuParticles3D_vmap =
  GeometryInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticles3D]): Table[string, string] = GpuParticles3D_vmap

proc finished*(self: GpuParticles3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)