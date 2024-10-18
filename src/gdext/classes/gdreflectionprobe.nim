{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setIntensity*(self: ReflectionProbe; intensity: Float): void =
  expandMethodBind(className ReflectionProbe, "set_intensity", 373806689)
  var `?param` = [getPtr intensity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIntensity*(self: ReflectionProbe): Float =
  expandMethodBind(className ReflectionProbe, "get_intensity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAmbientMode*(self: ReflectionProbe; ambient: ReflectionProbe_AmbientMode): void =
  expandMethodBind(className ReflectionProbe, "set_ambient_mode", 1748981278)
  var `?param` = [getPtr ambient]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAmbientMode*(self: ReflectionProbe): ReflectionProbe_AmbientMode =
  expandMethodBind(className ReflectionProbe, "get_ambient_mode", 1014607621)
  var ret: encoded ReflectionProbe_AmbientMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ReflectionProbe_AmbientMode)

proc setAmbientColor*(self: ReflectionProbe; ambient: Color): void =
  expandMethodBind(className ReflectionProbe, "set_ambient_color", 2920490490)
  var `?param` = [getPtr ambient]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAmbientColor*(self: ReflectionProbe): Color =
  expandMethodBind(className ReflectionProbe, "get_ambient_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setAmbientColorEnergy*(self: ReflectionProbe; ambientEnergy: Float): void =
  expandMethodBind(className ReflectionProbe, "set_ambient_color_energy", 373806689)
  var `?param` = [getPtr ambientEnergy]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAmbientColorEnergy*(self: ReflectionProbe): Float =
  expandMethodBind(className ReflectionProbe, "get_ambient_color_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxDistance*(self: ReflectionProbe; maxDistance: Float): void =
  expandMethodBind(className ReflectionProbe, "set_max_distance", 373806689)
  var `?param` = [getPtr maxDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxDistance*(self: ReflectionProbe): Float =
  expandMethodBind(className ReflectionProbe, "get_max_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMeshLodThreshold*(self: ReflectionProbe; ratio: Float): void =
  expandMethodBind(className ReflectionProbe, "set_mesh_lod_threshold", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMeshLodThreshold*(self: ReflectionProbe): Float =
  expandMethodBind(className ReflectionProbe, "get_mesh_lod_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSize*(self: ReflectionProbe; size: Vector3): void =
  expandMethodBind(className ReflectionProbe, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: ReflectionProbe): Vector3 =
  expandMethodBind(className ReflectionProbe, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setOriginOffset*(self: ReflectionProbe; originOffset: Vector3): void =
  expandMethodBind(className ReflectionProbe, "set_origin_offset", 3460891852)
  var `?param` = [getPtr originOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOriginOffset*(self: ReflectionProbe): Vector3 =
  expandMethodBind(className ReflectionProbe, "get_origin_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setAsInterior*(self: ReflectionProbe; enable: bool): void =
  expandMethodBind(className ReflectionProbe, "set_as_interior", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSetAsInterior*(self: ReflectionProbe): bool =
  expandMethodBind(className ReflectionProbe, "is_set_as_interior", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEnableBoxProjection*(self: ReflectionProbe; enable: bool): void =
  expandMethodBind(className ReflectionProbe, "set_enable_box_projection", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBoxProjectionEnabled*(self: ReflectionProbe): bool =
  expandMethodBind(className ReflectionProbe, "is_box_projection_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEnableShadows*(self: ReflectionProbe; enable: bool): void =
  expandMethodBind(className ReflectionProbe, "set_enable_shadows", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc areShadowsEnabled*(self: ReflectionProbe): bool =
  expandMethodBind(className ReflectionProbe, "are_shadows_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCullMask*(self: ReflectionProbe; layers: uint32): void =
  expandMethodBind(className ReflectionProbe, "set_cull_mask", 1286410249)
  var `?param` = [getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCullMask*(self: ReflectionProbe): uint32 =
  expandMethodBind(className ReflectionProbe, "get_cull_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setReflectionMask*(self: ReflectionProbe; layers: uint32): void =
  expandMethodBind(className ReflectionProbe, "set_reflection_mask", 1286410249)
  var `?param` = [getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getReflectionMask*(self: ReflectionProbe): uint32 =
  expandMethodBind(className ReflectionProbe, "get_reflection_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setUpdateMode*(self: ReflectionProbe; mode: ReflectionProbe_UpdateMode): void =
  expandMethodBind(className ReflectionProbe, "set_update_mode", 4090221187)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUpdateMode*(self: ReflectionProbe): ReflectionProbe_UpdateMode =
  expandMethodBind(className ReflectionProbe, "get_update_mode", 2367550552)
  var ret: encoded ReflectionProbe_UpdateMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ReflectionProbe_UpdateMode)

template updateMode*(self: ReflectionProbe): untyped = self.getUpdateMode()
template `updateMode=`*(self: ReflectionProbe; value) = self.setUpdateMode(value)

template intensity*(self: ReflectionProbe): untyped = self.getIntensity()
template `intensity=`*(self: ReflectionProbe; value) = self.setIntensity(value)

template maxDistance*(self: ReflectionProbe): untyped = self.getMaxDistance()
template `maxDistance=`*(self: ReflectionProbe; value) = self.setMaxDistance(value)

template size*(self: ReflectionProbe): untyped = self.getSize()
template `size=`*(self: ReflectionProbe; value) = self.setSize(value)

template originOffset*(self: ReflectionProbe): untyped = self.getOriginOffset()
template `originOffset=`*(self: ReflectionProbe; value) = self.setOriginOffset(value)

template boxProjection*(self: ReflectionProbe): untyped = self.isBoxProjectionEnabled()
template `boxProjection=`*(self: ReflectionProbe; value) = self.setEnableBoxProjection(value)

template interior*(self: ReflectionProbe): untyped = self.isSetAsInterior()
template `interior=`*(self: ReflectionProbe; value) = self.setAsInterior(value)

template enableShadows*(self: ReflectionProbe): untyped = self.areShadowsEnabled()
template `enableShadows=`*(self: ReflectionProbe; value) = self.setEnableShadows(value)

template cullMask*(self: ReflectionProbe): untyped = self.getCullMask()
template `cullMask=`*(self: ReflectionProbe; value) = self.setCullMask(value)

template reflectionMask*(self: ReflectionProbe): untyped = self.getReflectionMask()
template `reflectionMask=`*(self: ReflectionProbe; value) = self.setReflectionMask(value)

template meshLodThreshold*(self: ReflectionProbe): untyped = self.getMeshLodThreshold()
template `meshLodThreshold=`*(self: ReflectionProbe; value) = self.setMeshLodThreshold(value)

template ambientMode*(self: ReflectionProbe): untyped = self.getAmbientMode()
template `ambientMode=`*(self: ReflectionProbe; value) = self.setAmbientMode(value)

template ambientColor*(self: ReflectionProbe): untyped = self.getAmbientColor()
template `ambientColor=`*(self: ReflectionProbe; value) = self.setAmbientColor(value)

template ambientColorEnergy*(self: ReflectionProbe): untyped = self.getAmbientColorEnergy()
template `ambientColorEnergy=`*(self: ReflectionProbe; value) = self.setAmbientColorEnergy(value)

const ReflectionProbe_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ReflectionProbe]): Table[string, string] = ReflectionProbe_vmap