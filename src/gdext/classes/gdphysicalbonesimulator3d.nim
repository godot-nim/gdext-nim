{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(PhysicalBoneSimulator3D, SkeletonModifier3D)

proc isSimulatingPhysics*(self: PhysicalBoneSimulator3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBoneSimulator3D, "is_simulating_physics", 36873697)
  methodbind.ptrcall(self, [], bool)

proc physicalBonesStopSimulation*(self: PhysicalBoneSimulator3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBoneSimulator3D, "physical_bones_stop_simulation", 3218959716)
  methodbind.ptrcall(self, [], void)

proc physicalBonesStartSimulation*(self: PhysicalBoneSimulator3D; bones: TypedArray[StringName] = newTypedArray[StringName]()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBoneSimulator3D, "physical_bones_start_simulation", 2787316981)
  methodbind.ptrcall(self, [getPtr bones], void)

proc physicalBonesAddCollisionException*(self: PhysicalBoneSimulator3D; exception: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBoneSimulator3D, "physical_bones_add_collision_exception", 2722037293)
  methodbind.ptrcall(self, [getPtr exception], void)

proc physicalBonesRemoveCollisionException*(self: PhysicalBoneSimulator3D; exception: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBoneSimulator3D, "physical_bones_remove_collision_exception", 2722037293)
  methodbind.ptrcall(self, [getPtr exception], void)
