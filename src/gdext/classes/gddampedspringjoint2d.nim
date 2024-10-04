{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdjoint2d; export gdjoint2d

proc setLength*(self: DampedSpringJoint2D; length: Float): void =
  expandMethodBind(className DampedSpringJoint2D, "set_length", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLength*(self: DampedSpringJoint2D): Float =
  expandMethodBind(className DampedSpringJoint2D, "get_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRestLength*(self: DampedSpringJoint2D; restLength: Float): void =
  expandMethodBind(className DampedSpringJoint2D, "set_rest_length", 373806689)
  var `?param` = [getPtr restLength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRestLength*(self: DampedSpringJoint2D): Float =
  expandMethodBind(className DampedSpringJoint2D, "get_rest_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setStiffness*(self: DampedSpringJoint2D; stiffness: Float): void =
  expandMethodBind(className DampedSpringJoint2D, "set_stiffness", 373806689)
  var `?param` = [getPtr stiffness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStiffness*(self: DampedSpringJoint2D): Float =
  expandMethodBind(className DampedSpringJoint2D, "get_stiffness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDamping*(self: DampedSpringJoint2D; damping: Float): void =
  expandMethodBind(className DampedSpringJoint2D, "set_damping", 373806689)
  var `?param` = [getPtr damping]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDamping*(self: DampedSpringJoint2D): Float =
  expandMethodBind(className DampedSpringJoint2D, "get_damping", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template length*(self: DampedSpringJoint2D): untyped = self.getLength()
template `length=`*(self: DampedSpringJoint2D; value) = self.setLength(value)

template restLength*(self: DampedSpringJoint2D): untyped = self.getRestLength()
template `restLength=`*(self: DampedSpringJoint2D; value) = self.setRestLength(value)

template stiffness*(self: DampedSpringJoint2D): untyped = self.getStiffness()
template `stiffness=`*(self: DampedSpringJoint2D; value) = self.setStiffness(value)

template damping*(self: DampedSpringJoint2D): untyped = self.getDamping()
template `damping=`*(self: DampedSpringJoint2D; value) = self.setDamping(value)

const DampedSpringJoint2D_vmap =
  Joint2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[DampedSpringJoint2D]): Table[string, string] = DampedSpringJoint2D_vmap