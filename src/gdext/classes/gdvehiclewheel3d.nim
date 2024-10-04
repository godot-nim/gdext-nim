{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setRadius*(self: VehicleWheel3D; length: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_radius", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSuspensionRestLength*(self: VehicleWheel3D; length: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_suspension_rest_length", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSuspensionRestLength*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_suspension_rest_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSuspensionTravel*(self: VehicleWheel3D; length: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_suspension_travel", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSuspensionTravel*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_suspension_travel", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSuspensionStiffness*(self: VehicleWheel3D; length: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_suspension_stiffness", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSuspensionStiffness*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_suspension_stiffness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSuspensionMaxForce*(self: VehicleWheel3D; length: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_suspension_max_force", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSuspensionMaxForce*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_suspension_max_force", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDampingCompression*(self: VehicleWheel3D; length: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_damping_compression", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDampingCompression*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_damping_compression", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDampingRelaxation*(self: VehicleWheel3D; length: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_damping_relaxation", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDampingRelaxation*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_damping_relaxation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUseAsTraction*(self: VehicleWheel3D; enable: bool): void =
  expandMethodBind(className VehicleWheel3D, "set_use_as_traction", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsedAsTraction*(self: VehicleWheel3D): bool =
  expandMethodBind(className VehicleWheel3D, "is_used_as_traction", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseAsSteering*(self: VehicleWheel3D; enable: bool): void =
  expandMethodBind(className VehicleWheel3D, "set_use_as_steering", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsedAsSteering*(self: VehicleWheel3D): bool =
  expandMethodBind(className VehicleWheel3D, "is_used_as_steering", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFrictionSlip*(self: VehicleWheel3D; length: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_friction_slip", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrictionSlip*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_friction_slip", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc isInContact*(self: VehicleWheel3D): bool =
  expandMethodBind(className VehicleWheel3D, "is_in_contact", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getContactBody*(self: VehicleWheel3D): Node3D =
  expandMethodBind(className VehicleWheel3D, "get_contact_body", 151077316)
  var ret: encoded Node3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node3D)

proc setRollInfluence*(self: VehicleWheel3D; rollInfluence: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_roll_influence", 373806689)
  var `?param` = [getPtr rollInfluence]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRollInfluence*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_roll_influence", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getSkidinfo*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_skidinfo", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getRpm*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_rpm", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEngineForce*(self: VehicleWheel3D; engineForce: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_engine_force", 373806689)
  var `?param` = [getPtr engineForce]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEngineForce*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_engine_force", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBrake*(self: VehicleWheel3D; brake: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_brake", 373806689)
  var `?param` = [getPtr brake]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBrake*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_brake", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSteering*(self: VehicleWheel3D; steering: Float): void =
  expandMethodBind(className VehicleWheel3D, "set_steering", 373806689)
  var `?param` = [getPtr steering]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSteering*(self: VehicleWheel3D): Float =
  expandMethodBind(className VehicleWheel3D, "get_steering", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template engineForce*(self: VehicleWheel3D): untyped = self.getEngineForce()
template `engineForce=`*(self: VehicleWheel3D; value) = self.setEngineForce(value)

template brake*(self: VehicleWheel3D): untyped = self.getBrake()
template `brake=`*(self: VehicleWheel3D; value) = self.setBrake(value)

template steering*(self: VehicleWheel3D): untyped = self.getSteering()
template `steering=`*(self: VehicleWheel3D; value) = self.setSteering(value)

template useAsTraction*(self: VehicleWheel3D): untyped = self.isUsedAsTraction()
template `useAsTraction=`*(self: VehicleWheel3D; value) = self.setUseAsTraction(value)

template useAsSteering*(self: VehicleWheel3D): untyped = self.isUsedAsSteering()
template `useAsSteering=`*(self: VehicleWheel3D; value) = self.setUseAsSteering(value)

template wheelRollInfluence*(self: VehicleWheel3D): untyped = self.getRollInfluence()
template `wheelRollInfluence=`*(self: VehicleWheel3D; value) = self.setRollInfluence(value)

template wheelRadius*(self: VehicleWheel3D): untyped = self.getRadius()
template `wheelRadius=`*(self: VehicleWheel3D; value) = self.setRadius(value)

template wheelRestLength*(self: VehicleWheel3D): untyped = self.getSuspensionRestLength()
template `wheelRestLength=`*(self: VehicleWheel3D; value) = self.setSuspensionRestLength(value)

template wheelFrictionSlip*(self: VehicleWheel3D): untyped = self.getFrictionSlip()
template `wheelFrictionSlip=`*(self: VehicleWheel3D; value) = self.setFrictionSlip(value)

template suspensionTravel*(self: VehicleWheel3D): untyped = self.getSuspensionTravel()
template `suspensionTravel=`*(self: VehicleWheel3D; value) = self.setSuspensionTravel(value)

template suspensionStiffness*(self: VehicleWheel3D): untyped = self.getSuspensionStiffness()
template `suspensionStiffness=`*(self: VehicleWheel3D; value) = self.setSuspensionStiffness(value)

template suspensionMaxForce*(self: VehicleWheel3D): untyped = self.getSuspensionMaxForce()
template `suspensionMaxForce=`*(self: VehicleWheel3D; value) = self.setSuspensionMaxForce(value)

template dampingCompression*(self: VehicleWheel3D): untyped = self.getDampingCompression()
template `dampingCompression=`*(self: VehicleWheel3D; value) = self.setDampingCompression(value)

template dampingRelaxation*(self: VehicleWheel3D): untyped = self.getDampingRelaxation()
template `dampingRelaxation=`*(self: VehicleWheel3D; value) = self.setDampingRelaxation(value)

const VehicleWheel3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VehicleWheel3D]): Table[string, string] = VehicleWheel3D_vmap