{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d
export PhysicalBoneSimulator3D

proc isSimulatingPhysics*(self: PhysicalBoneSimulator3D): bool =
  expandMethodBind(className PhysicalBoneSimulator3D, "is_simulating_physics", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc physicalBonesStopSimulation*(self: PhysicalBoneSimulator3D): void =
  expandMethodBind(className PhysicalBoneSimulator3D, "physical_bones_stop_simulation", 3218959716)
  methodbind.ptrcall(self, [])

proc physicalBonesStartSimulation*(self: PhysicalBoneSimulator3D; bones: TypedArray[StringName] = newTypedArray[StringName]()): void =
  expandMethodBind(className PhysicalBoneSimulator3D, "physical_bones_start_simulation", 2787316981)
  methodbind.ptrcall(self, [getPtr bones])

proc physicalBonesAddCollisionException*(self: PhysicalBoneSimulator3D; exception: RID): void =
  expandMethodBind(className PhysicalBoneSimulator3D, "physical_bones_add_collision_exception", 2722037293)
  methodbind.ptrcall(self, [getPtr exception])

proc physicalBonesRemoveCollisionException*(self: PhysicalBoneSimulator3D; exception: RID): void =
  expandMethodBind(className PhysicalBoneSimulator3D, "physical_bones_remove_collision_exception", 2722037293)
  methodbind.ptrcall(self, [getPtr exception])
