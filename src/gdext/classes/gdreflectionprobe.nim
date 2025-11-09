{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(ReflectionProbe, VisualInstance3D)

proc setIntensity*(self: ReflectionProbe; intensity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_intensity", 373806689)
  methodbind.ptrcall(self, [getPtr intensity], void)

proc getIntensity*(self: ReflectionProbe): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_intensity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBlendDistance*(self: ReflectionProbe; blendDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_blend_distance", 373806689)
  methodbind.ptrcall(self, [getPtr blendDistance], void)

proc getBlendDistance*(self: ReflectionProbe): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_blend_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAmbientMode*(self: ReflectionProbe; ambient: ReflectionProbe_AmbientMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_ambient_mode", 1748981278)
  methodbind.ptrcall(self, [getPtr ambient], void)

proc getAmbientMode*(self: ReflectionProbe): ReflectionProbe_AmbientMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_ambient_mode", 1014607621)
  methodbind.ptrcall(self, [], ReflectionProbe_AmbientMode)

proc setAmbientColor*(self: ReflectionProbe; ambient: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_ambient_color", 2920490490)
  methodbind.ptrcall(self, [getPtr ambient], void)

proc getAmbientColor*(self: ReflectionProbe): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_ambient_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setAmbientColorEnergy*(self: ReflectionProbe; ambientEnergy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_ambient_color_energy", 373806689)
  methodbind.ptrcall(self, [getPtr ambientEnergy], void)

proc getAmbientColorEnergy*(self: ReflectionProbe): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_ambient_color_energy", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxDistance*(self: ReflectionProbe; maxDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr maxDistance], void)

proc getMaxDistance*(self: ReflectionProbe): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMeshLodThreshold*(self: ReflectionProbe; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_mesh_lod_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getMeshLodThreshold*(self: ReflectionProbe): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_mesh_lod_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSize*(self: ReflectionProbe; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: ReflectionProbe): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setOriginOffset*(self: ReflectionProbe; originOffset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_origin_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr originOffset], void)

proc getOriginOffset*(self: ReflectionProbe): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_origin_offset", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setAsInterior*(self: ReflectionProbe; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_as_interior", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSetAsInterior*(self: ReflectionProbe): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "is_set_as_interior", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEnableBoxProjection*(self: ReflectionProbe; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_enable_box_projection", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isBoxProjectionEnabled*(self: ReflectionProbe): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "is_box_projection_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEnableShadows*(self: ReflectionProbe; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_enable_shadows", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc areShadowsEnabled*(self: ReflectionProbe): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "are_shadows_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCullMask*(self: ReflectionProbe; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr layers], void)

proc getCullMask*(self: ReflectionProbe): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_cull_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setReflectionMask*(self: ReflectionProbe; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_reflection_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr layers], void)

proc getReflectionMask*(self: ReflectionProbe): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_reflection_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setUpdateMode*(self: ReflectionProbe; mode: ReflectionProbe_UpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "set_update_mode", 4090221187)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getUpdateMode*(self: ReflectionProbe): ReflectionProbe_UpdateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReflectionProbe, "get_update_mode", 2367550552)
  methodbind.ptrcall(self, [], ReflectionProbe_UpdateMode)

template updateMode*(self: ReflectionProbe): untyped = self.getUpdateMode()
template `updateMode=`*(self: ReflectionProbe; value) = self.setUpdateMode(value)

template intensity*(self: ReflectionProbe): untyped = self.getIntensity()
template `intensity=`*(self: ReflectionProbe; value) = self.setIntensity(value)

template blendDistance*(self: ReflectionProbe): untyped = self.getBlendDistance()
template `blendDistance=`*(self: ReflectionProbe; value) = self.setBlendDistance(value)

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
