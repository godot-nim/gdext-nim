{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint2d; export gdjoint2d

expandOnClassImported(DampedSpringJoint2D, Joint2D)

proc setLength*(self: DampedSpringJoint2D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DampedSpringJoint2D, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getLength*(self: DampedSpringJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DampedSpringJoint2D, "get_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRestLength*(self: DampedSpringJoint2D; restLength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DampedSpringJoint2D, "set_rest_length", 373806689)
  methodbind.ptrcall(self, [getPtr restLength], void)

proc getRestLength*(self: DampedSpringJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DampedSpringJoint2D, "get_rest_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setStiffness*(self: DampedSpringJoint2D; stiffness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DampedSpringJoint2D, "set_stiffness", 373806689)
  methodbind.ptrcall(self, [getPtr stiffness], void)

proc getStiffness*(self: DampedSpringJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DampedSpringJoint2D, "get_stiffness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDamping*(self: DampedSpringJoint2D; damping: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DampedSpringJoint2D, "set_damping", 373806689)
  methodbind.ptrcall(self, [getPtr damping], void)

proc getDamping*(self: DampedSpringJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DampedSpringJoint2D, "get_damping", 1740695150)
  methodbind.ptrcall(self, [], Float)

template length*(self: DampedSpringJoint2D): untyped = self.getLength()
template `length=`*(self: DampedSpringJoint2D; value) = self.setLength(value)

template restLength*(self: DampedSpringJoint2D): untyped = self.getRestLength()
template `restLength=`*(self: DampedSpringJoint2D; value) = self.setRestLength(value)

template stiffness*(self: DampedSpringJoint2D): untyped = self.getStiffness()
template `stiffness=`*(self: DampedSpringJoint2D; value) = self.setStiffness(value)

template damping*(self: DampedSpringJoint2D): untyped = self.getDamping()
template `damping=`*(self: DampedSpringJoint2D; value) = self.setDamping(value)
