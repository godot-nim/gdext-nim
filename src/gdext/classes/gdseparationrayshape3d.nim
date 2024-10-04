{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

proc setLength*(self: SeparationRayShape3D; length: Float): void =
  expandMethodBind(className SeparationRayShape3D, "set_length", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLength*(self: SeparationRayShape3D): Float =
  expandMethodBind(className SeparationRayShape3D, "get_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSlideOnSlope*(self: SeparationRayShape3D; active: bool): void =
  expandMethodBind(className SeparationRayShape3D, "set_slide_on_slope", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSlideOnSlope*(self: SeparationRayShape3D): bool =
  expandMethodBind(className SeparationRayShape3D, "get_slide_on_slope", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template length*(self: SeparationRayShape3D): untyped = self.getLength()
template `length=`*(self: SeparationRayShape3D; value) = self.setLength(value)

template slideOnSlope*(self: SeparationRayShape3D): untyped = self.getSlideOnSlope()
template `slideOnSlope=`*(self: SeparationRayShape3D; value) = self.setSlideOnSlope(value)

const SeparationRayShape3D_vmap =
  Shape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SeparationRayShape3D]): Table[string, string] = SeparationRayShape3D_vmap