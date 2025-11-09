{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsbody3d; export gdphysicsbody3d

expandOnClassImported(StaticBody3D, PhysicsBody3D)

proc setConstantLinearVelocity*(self: StaticBody3D; vel: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody3D, "set_constant_linear_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr vel], void)

proc setConstantAngularVelocity*(self: StaticBody3D; vel: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody3D, "set_constant_angular_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr vel], void)

proc getConstantLinearVelocity*(self: StaticBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody3D, "get_constant_linear_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getConstantAngularVelocity*(self: StaticBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody3D, "get_constant_angular_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setPhysicsMaterialOverride*(self: StaticBody3D; physicsMaterialOverride: gdref PhysicsMaterial): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody3D, "set_physics_material_override", 1784508650)
  methodbind.ptrcall(self, [getPtr physicsMaterialOverride], void)

proc getPhysicsMaterialOverride*(self: StaticBody3D): gdref PhysicsMaterial =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody3D, "get_physics_material_override", 2521850424)
  methodbind.ptrcall(self, [], gdref PhysicsMaterial)

template physicsMaterialOverride*(self: StaticBody3D): untyped = self.getPhysicsMaterialOverride()
template `physicsMaterialOverride=`*(self: StaticBody3D; value) = self.setPhysicsMaterialOverride(value)

template constantLinearVelocity*(self: StaticBody3D): untyped = self.getConstantLinearVelocity()
template `constantLinearVelocity=`*(self: StaticBody3D; value) = self.setConstantLinearVelocity(value)

template constantAngularVelocity*(self: StaticBody3D): untyped = self.getConstantAngularVelocity()
template `constantAngularVelocity=`*(self: StaticBody3D; value) = self.setConstantAngularVelocity(value)
