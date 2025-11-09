{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstaticbody2d; export gdstaticbody2d

expandOnClassImported(AnimatableBody2D, StaticBody2D)

proc setSyncToPhysics*(self: AnimatableBody2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatableBody2D, "set_sync_to_physics", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSyncToPhysicsEnabled*(self: AnimatableBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatableBody2D, "is_sync_to_physics_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template syncToPhysics*(self: AnimatableBody2D): untyped = self.isSyncToPhysicsEnabled()
template `syncToPhysics=`*(self: AnimatableBody2D; value) = self.setSyncToPhysics(value)
