{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdstaticbody3d; export gdstaticbody3d

proc setSyncToPhysics*(self: AnimatableBody3D; enable: bool): void =
  expandMethodBind(className AnimatableBody3D, "set_sync_to_physics", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSyncToPhysicsEnabled*(self: AnimatableBody3D): bool =
  expandMethodBind(className AnimatableBody3D, "is_sync_to_physics_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template syncToPhysics*(self: AnimatableBody3D): untyped = self.isSyncToPhysicsEnabled()
template `syncToPhysics=`*(self: AnimatableBody3D; value) = self.setSyncToPhysics(value)

const AnimatableBody3D_vmap =
  StaticBody3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimatableBody3D]): Table[string, string] = AnimatableBody3D_vmap