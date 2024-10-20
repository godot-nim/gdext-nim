{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstaticbody2d; export gdstaticbody2d

proc setSyncToPhysics*(self: AnimatableBody2D; enable: bool): void =
  expandMethodBind(className AnimatableBody2D, "set_sync_to_physics", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSyncToPhysicsEnabled*(self: AnimatableBody2D): bool =
  expandMethodBind(className AnimatableBody2D, "is_sync_to_physics_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template syncToPhysics*(self: AnimatableBody2D): untyped = self.isSyncToPhysicsEnabled()
template `syncToPhysics=`*(self: AnimatableBody2D; value) = self.setSyncToPhysics(value)

const AnimatableBody2D_vmap =
  StaticBody2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimatableBody2D]): Table[string, string] = AnimatableBody2D_vmap