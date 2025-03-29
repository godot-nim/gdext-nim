{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc setProfile*(self: RetargetModifier3D; profile: gdref SkeletonProfile): void =
  expandMethodBind(className RetargetModifier3D, "set_profile", 3870374136)
  methodbind.ptrcall(self, [getPtr profile])

proc getProfile*(self: RetargetModifier3D): gdref SkeletonProfile =
  expandMethodBind(className RetargetModifier3D, "get_profile", 4291782652)
  var ret: encoded gdref SkeletonProfile
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref SkeletonProfile)

proc setUseGlobalPose*(self: RetargetModifier3D; useGlobalPose: bool): void =
  expandMethodBind(className RetargetModifier3D, "set_use_global_pose", 2586408642)
  methodbind.ptrcall(self, [getPtr useGlobalPose])

proc isUsingGlobalPose*(self: RetargetModifier3D): bool =
  expandMethodBind(className RetargetModifier3D, "is_using_global_pose", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setEnableFlags*(self: RetargetModifier3D; enableFlags: set[RetargetModifier3D_TransformFlag]): void =
  expandMethodBind(className RetargetModifier3D, "set_enable_flags", 2687954213)
  methodbind.ptrcall(self, [getPtr enableFlags])

proc getEnableFlags*(self: RetargetModifier3D): set[RetargetModifier3D_TransformFlag] =
  expandMethodBind(className RetargetModifier3D, "get_enable_flags", 358995420)
  var ret: encoded set[RetargetModifier3D_TransformFlag]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[RetargetModifier3D_TransformFlag])

proc setPositionEnabled*(self: RetargetModifier3D; enabled: bool): void =
  expandMethodBind(className RetargetModifier3D, "set_position_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isPositionEnabled*(self: RetargetModifier3D): bool =
  expandMethodBind(className RetargetModifier3D, "is_position_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRotationEnabled*(self: RetargetModifier3D; enabled: bool): void =
  expandMethodBind(className RetargetModifier3D, "set_rotation_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isRotationEnabled*(self: RetargetModifier3D): bool =
  expandMethodBind(className RetargetModifier3D, "is_rotation_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setScaleEnabled*(self: RetargetModifier3D; enabled: bool): void =
  expandMethodBind(className RetargetModifier3D, "set_scale_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isScaleEnabled*(self: RetargetModifier3D): bool =
  expandMethodBind(className RetargetModifier3D, "is_scale_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template profile*(self: RetargetModifier3D): untyped = self.getProfile()
template `profile=`*(self: RetargetModifier3D; value) = self.setProfile(value)

template useGlobalPose*(self: RetargetModifier3D): untyped = self.isUsingGlobalPose()
template `useGlobalPose=`*(self: RetargetModifier3D; value) = self.setUseGlobalPose(value)

template enable*(self: RetargetModifier3D): untyped = self.getEnableFlags()
template `enable=`*(self: RetargetModifier3D; value) = self.setEnableFlags(value)
