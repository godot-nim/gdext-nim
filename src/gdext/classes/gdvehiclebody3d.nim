{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrigidbody3d; export gdrigidbody3d

expandOnClassImported(VehicleBody3D, RigidBody3D)

proc setEngineForce*(self: VehicleBody3D; engineForce: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VehicleBody3D, "set_engine_force", 373806689)
  methodbind.ptrcall(self, [getPtr engineForce], void)

proc getEngineForce*(self: VehicleBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VehicleBody3D, "get_engine_force", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBrake*(self: VehicleBody3D; brake: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VehicleBody3D, "set_brake", 373806689)
  methodbind.ptrcall(self, [getPtr brake], void)

proc getBrake*(self: VehicleBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VehicleBody3D, "get_brake", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSteering*(self: VehicleBody3D; steering: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VehicleBody3D, "set_steering", 373806689)
  methodbind.ptrcall(self, [getPtr steering], void)

proc getSteering*(self: VehicleBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VehicleBody3D, "get_steering", 1740695150)
  methodbind.ptrcall(self, [], Float)

template engineForce*(self: VehicleBody3D): untyped = self.getEngineForce()
template `engineForce=`*(self: VehicleBody3D; value) = self.setEngineForce(value)

template brake*(self: VehicleBody3D): untyped = self.getBrake()
template `brake=`*(self: VehicleBody3D; value) = self.setBrake(value)

template steering*(self: VehicleBody3D): untyped = self.getSteering()
template `steering=`*(self: VehicleBody3D; value) = self.setSteering(value)
