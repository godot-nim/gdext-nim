{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc isSimulatingPhysics*(self: PhysicalBoneSimulator3D): bool =
  expandMethodBind(className PhysicalBoneSimulator3D, "is_simulating_physics", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc physicalBonesStopSimulation*(self: PhysicalBoneSimulator3D): void =
  expandMethodBind(className PhysicalBoneSimulator3D, "physical_bones_stop_simulation", 3218959716)
  methodbind.ptrcall(self, nil)

proc physicalBonesStartSimulation*(self: PhysicalBoneSimulator3D; bones: TypedArray[StringName] = TypedArray[StringName](gdarray())): void =
  expandMethodBind(className PhysicalBoneSimulator3D, "physical_bones_start_simulation", 2787316981)
  var `?param` = [getPtr bones]
  methodbind.ptrcall(self, addr `?param`[0])

proc physicalBonesAddCollisionException*(self: PhysicalBoneSimulator3D; exception: RID): void =
  expandMethodBind(className PhysicalBoneSimulator3D, "physical_bones_add_collision_exception", 2722037293)
  var `?param` = [getPtr exception]
  methodbind.ptrcall(self, addr `?param`[0])

proc physicalBonesRemoveCollisionException*(self: PhysicalBoneSimulator3D; exception: RID): void =
  expandMethodBind(className PhysicalBoneSimulator3D, "physical_bones_remove_collision_exception", 2722037293)
  var `?param` = [getPtr exception]
  methodbind.ptrcall(self, addr `?param`[0])

const PhysicalBoneSimulator3D_vmap =
  SkeletonModifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicalBoneSimulator3D]): Table[string, string] = PhysicalBoneSimulator3D_vmap