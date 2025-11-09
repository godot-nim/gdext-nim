{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstaticbody3d; export gdstaticbody3d

expandOnClassImported(AnimatableBody3D, StaticBody3D)

proc setSyncToPhysics*(self: AnimatableBody3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatableBody3D, "set_sync_to_physics", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSyncToPhysicsEnabled*(self: AnimatableBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatableBody3D, "is_sync_to_physics_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template syncToPhysics*(self: AnimatableBody3D): untyped = self.isSyncToPhysicsEnabled()
template `syncToPhysics=`*(self: AnimatableBody3D; value) = self.setSyncToPhysics(value)
