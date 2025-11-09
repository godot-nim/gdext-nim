{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsbody2d; export gdphysicsbody2d

expandOnClassImported(StaticBody2D, PhysicsBody2D)

proc setConstantLinearVelocity*(self: StaticBody2D; vel: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody2D, "set_constant_linear_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr vel], void)

proc setConstantAngularVelocity*(self: StaticBody2D; vel: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody2D, "set_constant_angular_velocity", 373806689)
  methodbind.ptrcall(self, [getPtr vel], void)

proc getConstantLinearVelocity*(self: StaticBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody2D, "get_constant_linear_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getConstantAngularVelocity*(self: StaticBody2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody2D, "get_constant_angular_velocity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPhysicsMaterialOverride*(self: StaticBody2D; physicsMaterialOverride: gdref PhysicsMaterial): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody2D, "set_physics_material_override", 1784508650)
  methodbind.ptrcall(self, [getPtr physicsMaterialOverride], void)

proc getPhysicsMaterialOverride*(self: StaticBody2D): gdref PhysicsMaterial =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StaticBody2D, "get_physics_material_override", 2521850424)
  methodbind.ptrcall(self, [], gdref PhysicsMaterial)

template physicsMaterialOverride*(self: StaticBody2D): untyped = self.getPhysicsMaterialOverride()
template `physicsMaterialOverride=`*(self: StaticBody2D; value) = self.setPhysicsMaterialOverride(value)

template constantLinearVelocity*(self: StaticBody2D): untyped = self.getConstantLinearVelocity()
template `constantLinearVelocity=`*(self: StaticBody2D; value) = self.setConstantLinearVelocity(value)

template constantAngularVelocity*(self: StaticBody2D): untyped = self.getConstantAngularVelocity()
template `constantAngularVelocity=`*(self: StaticBody2D; value) = self.setConstantAngularVelocity(value)
