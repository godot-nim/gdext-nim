{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdphysicsbody3d; export gdphysicsbody3d

proc setConstantLinearVelocity*(self: StaticBody3D; vel: Vector3): void =
  expandMethodBind(className StaticBody3D, "set_constant_linear_velocity", 3460891852)
  var `?param` = [getPtr vel]
  methodbind.ptrcall(self, addr `?param`[0])

proc setConstantAngularVelocity*(self: StaticBody3D; vel: Vector3): void =
  expandMethodBind(className StaticBody3D, "set_constant_angular_velocity", 3460891852)
  var `?param` = [getPtr vel]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantLinearVelocity*(self: StaticBody3D): Vector3 =
  expandMethodBind(className StaticBody3D, "get_constant_linear_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getConstantAngularVelocity*(self: StaticBody3D): Vector3 =
  expandMethodBind(className StaticBody3D, "get_constant_angular_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setPhysicsMaterialOverride*(self: StaticBody3D; physicsMaterialOverride: gdref PhysicsMaterial): void =
  expandMethodBind(className StaticBody3D, "set_physics_material_override", 1784508650)
  var `?param` = [getPtr physicsMaterialOverride]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsMaterialOverride*(self: StaticBody3D): gdref PhysicsMaterial =
  expandMethodBind(className StaticBody3D, "get_physics_material_override", 2521850424)
  var ret: encoded gdref PhysicsMaterial
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref PhysicsMaterial)

template physicsMaterialOverride*(self: StaticBody3D): untyped = self.getPhysicsMaterialOverride()
template `physicsMaterialOverride=`*(self: StaticBody3D; value) = self.setPhysicsMaterialOverride(value)

template constantLinearVelocity*(self: StaticBody3D): untyped = self.getConstantLinearVelocity()
template `constantLinearVelocity=`*(self: StaticBody3D; value) = self.setConstantLinearVelocity(value)

template constantAngularVelocity*(self: StaticBody3D): untyped = self.getConstantAngularVelocity()
template `constantAngularVelocity=`*(self: StaticBody3D; value) = self.setConstantAngularVelocity(value)

const StaticBody3D_vmap =
  PhysicsBody3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StaticBody3D]): Table[string, string] = StaticBody3D_vmap