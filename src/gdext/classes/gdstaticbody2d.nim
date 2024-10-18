{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsbody2d; export gdphysicsbody2d

proc setConstantLinearVelocity*(self: StaticBody2D; vel: Vector2): void =
  expandMethodBind(className StaticBody2D, "set_constant_linear_velocity", 743155724)
  var `?param` = [getPtr vel]
  methodbind.ptrcall(self, addr `?param`[0])

proc setConstantAngularVelocity*(self: StaticBody2D; vel: Float): void =
  expandMethodBind(className StaticBody2D, "set_constant_angular_velocity", 373806689)
  var `?param` = [getPtr vel]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantLinearVelocity*(self: StaticBody2D): Vector2 =
  expandMethodBind(className StaticBody2D, "get_constant_linear_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getConstantAngularVelocity*(self: StaticBody2D): Float =
  expandMethodBind(className StaticBody2D, "get_constant_angular_velocity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPhysicsMaterialOverride*(self: StaticBody2D; physicsMaterialOverride: gdref PhysicsMaterial): void =
  expandMethodBind(className StaticBody2D, "set_physics_material_override", 1784508650)
  var `?param` = [getPtr physicsMaterialOverride]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsMaterialOverride*(self: StaticBody2D): gdref PhysicsMaterial =
  expandMethodBind(className StaticBody2D, "get_physics_material_override", 2521850424)
  var ret: encoded gdref PhysicsMaterial
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref PhysicsMaterial)

template physicsMaterialOverride*(self: StaticBody2D): untyped = self.getPhysicsMaterialOverride()
template `physicsMaterialOverride=`*(self: StaticBody2D; value) = self.setPhysicsMaterialOverride(value)

template constantLinearVelocity*(self: StaticBody2D): untyped = self.getConstantLinearVelocity()
template `constantLinearVelocity=`*(self: StaticBody2D; value) = self.setConstantLinearVelocity(value)

template constantAngularVelocity*(self: StaticBody2D): untyped = self.getConstantAngularVelocity()
template `constantAngularVelocity=`*(self: StaticBody2D; value) = self.setConstantAngularVelocity(value)

const StaticBody2D_vmap =
  PhysicsBody2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StaticBody2D]): Table[string, string] = StaticBody2D_vmap