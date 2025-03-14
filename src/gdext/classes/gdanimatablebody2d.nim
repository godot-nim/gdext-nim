{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstaticbody2d; export gdstaticbody2d

proc setSyncToPhysics*(self: AnimatableBody2D; enable: bool): void =
  expandMethodBind(className AnimatableBody2D, "set_sync_to_physics", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isSyncToPhysicsEnabled*(self: AnimatableBody2D): bool =
  expandMethodBind(className AnimatableBody2D, "is_sync_to_physics_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template syncToPhysics*(self: AnimatableBody2D): untyped = self.isSyncToPhysicsEnabled()
template `syncToPhysics=`*(self: AnimatableBody2D; value) = self.setSyncToPhysics(value)