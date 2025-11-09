{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(PhysicsMaterial, Resource)

proc setFriction*(self: PhysicsMaterial; friction: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsMaterial, "set_friction", 373806689)
  methodbind.ptrcall(self, [getPtr friction], void)

proc getFriction*(self: PhysicsMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsMaterial, "get_friction", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRough*(self: PhysicsMaterial; rough: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsMaterial, "set_rough", 2586408642)
  methodbind.ptrcall(self, [getPtr rough], void)

proc isRough*(self: PhysicsMaterial): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsMaterial, "is_rough", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBounce*(self: PhysicsMaterial; bounce: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsMaterial, "set_bounce", 373806689)
  methodbind.ptrcall(self, [getPtr bounce], void)

proc getBounce*(self: PhysicsMaterial): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsMaterial, "get_bounce", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAbsorbent*(self: PhysicsMaterial; absorbent: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsMaterial, "set_absorbent", 2586408642)
  methodbind.ptrcall(self, [getPtr absorbent], void)

proc isAbsorbent*(self: PhysicsMaterial): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsMaterial, "is_absorbent", 36873697)
  methodbind.ptrcall(self, [], bool)

template friction*(self: PhysicsMaterial): untyped = self.getFriction()
template `friction=`*(self: PhysicsMaterial; value) = self.setFriction(value)

template rough*(self: PhysicsMaterial): untyped = self.isRough()
template `rough=`*(self: PhysicsMaterial; value) = self.setRough(value)

template bounce*(self: PhysicsMaterial): untyped = self.getBounce()
template `bounce=`*(self: PhysicsMaterial; value) = self.setBounce(value)

template absorbent*(self: PhysicsMaterial): untyped = self.isAbsorbent()
template `absorbent=`*(self: PhysicsMaterial; value) = self.setAbsorbent(value)
