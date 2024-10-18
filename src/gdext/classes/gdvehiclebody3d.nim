{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrigidbody3d; export gdrigidbody3d

proc setEngineForce*(self: VehicleBody3D; engineForce: Float): void =
  expandMethodBind(className VehicleBody3D, "set_engine_force", 373806689)
  var `?param` = [getPtr engineForce]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEngineForce*(self: VehicleBody3D): Float =
  expandMethodBind(className VehicleBody3D, "get_engine_force", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBrake*(self: VehicleBody3D; brake: Float): void =
  expandMethodBind(className VehicleBody3D, "set_brake", 373806689)
  var `?param` = [getPtr brake]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBrake*(self: VehicleBody3D): Float =
  expandMethodBind(className VehicleBody3D, "get_brake", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSteering*(self: VehicleBody3D; steering: Float): void =
  expandMethodBind(className VehicleBody3D, "set_steering", 373806689)
  var `?param` = [getPtr steering]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSteering*(self: VehicleBody3D): Float =
  expandMethodBind(className VehicleBody3D, "get_steering", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template engineForce*(self: VehicleBody3D): untyped = self.getEngineForce()
template `engineForce=`*(self: VehicleBody3D; value) = self.setEngineForce(value)

template brake*(self: VehicleBody3D): untyped = self.getBrake()
template `brake=`*(self: VehicleBody3D; value) = self.setBrake(value)

template steering*(self: VehicleBody3D): untyped = self.getSteering()
template `steering=`*(self: VehicleBody3D; value) = self.setSteering(value)

const VehicleBody3D_vmap =
  RigidBody3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VehicleBody3D]): Table[string, string] = VehicleBody3D_vmap