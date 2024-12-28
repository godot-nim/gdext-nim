{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

proc setLength*(self: SeparationRayShape2D; length: Float): void =
  expandMethodBind(className SeparationRayShape2D, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr length])

proc getLength*(self: SeparationRayShape2D): Float =
  expandMethodBind(className SeparationRayShape2D, "get_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSlideOnSlope*(self: SeparationRayShape2D; active: bool): void =
  expandMethodBind(className SeparationRayShape2D, "set_slide_on_slope", 2586408642)
  methodbind.ptrcall(self, [getPtr active])

proc getSlideOnSlope*(self: SeparationRayShape2D): bool =
  expandMethodBind(className SeparationRayShape2D, "get_slide_on_slope", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template length*(self: SeparationRayShape2D): untyped = self.getLength()
template `length=`*(self: SeparationRayShape2D; value) = self.setLength(value)

template slideOnSlope*(self: SeparationRayShape2D): untyped = self.getSlideOnSlope()
template `slideOnSlope=`*(self: SeparationRayShape2D; value) = self.setSlideOnSlope(value)

const SeparationRayShape2D_vmap =
  Shape2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SeparationRayShape2D]): Table[string, string] = SeparationRayShape2D_vmap