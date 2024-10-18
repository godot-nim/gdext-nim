{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setFriction*(self: PhysicsMaterial; friction: Float): void =
  expandMethodBind(className PhysicsMaterial, "set_friction", 373806689)
  var `?param` = [getPtr friction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFriction*(self: PhysicsMaterial): Float =
  expandMethodBind(className PhysicsMaterial, "get_friction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRough*(self: PhysicsMaterial; rough: bool): void =
  expandMethodBind(className PhysicsMaterial, "set_rough", 2586408642)
  var `?param` = [getPtr rough]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRough*(self: PhysicsMaterial): bool =
  expandMethodBind(className PhysicsMaterial, "is_rough", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBounce*(self: PhysicsMaterial; bounce: Float): void =
  expandMethodBind(className PhysicsMaterial, "set_bounce", 373806689)
  var `?param` = [getPtr bounce]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBounce*(self: PhysicsMaterial): Float =
  expandMethodBind(className PhysicsMaterial, "get_bounce", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAbsorbent*(self: PhysicsMaterial; absorbent: bool): void =
  expandMethodBind(className PhysicsMaterial, "set_absorbent", 2586408642)
  var `?param` = [getPtr absorbent]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAbsorbent*(self: PhysicsMaterial): bool =
  expandMethodBind(className PhysicsMaterial, "is_absorbent", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template friction*(self: PhysicsMaterial): untyped = self.getFriction()
template `friction=`*(self: PhysicsMaterial; value) = self.setFriction(value)

template rough*(self: PhysicsMaterial): untyped = self.isRough()
template `rough=`*(self: PhysicsMaterial; value) = self.setRough(value)

template bounce*(self: PhysicsMaterial): untyped = self.getBounce()
template `bounce=`*(self: PhysicsMaterial; value) = self.setBounce(value)

template absorbent*(self: PhysicsMaterial): untyped = self.isAbsorbent()
template `absorbent=`*(self: PhysicsMaterial; value) = self.setAbsorbent(value)

const PhysicsMaterial_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsMaterial]): Table[string, string] = PhysicsMaterial_vmap