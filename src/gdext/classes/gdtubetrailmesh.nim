{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setRadius*(self: TubeTrailMesh; radius: Float): void =
  expandMethodBind(className TubeTrailMesh, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: TubeTrailMesh): Float =
  expandMethodBind(className TubeTrailMesh, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRadialSteps*(self: TubeTrailMesh; radialSteps: int32): void =
  expandMethodBind(className TubeTrailMesh, "set_radial_steps", 1286410249)
  methodbind.ptrcall(self, [getPtr radialSteps])

proc getRadialSteps*(self: TubeTrailMesh): int32 =
  expandMethodBind(className TubeTrailMesh, "get_radial_steps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSections*(self: TubeTrailMesh; sections: int32): void =
  expandMethodBind(className TubeTrailMesh, "set_sections", 1286410249)
  methodbind.ptrcall(self, [getPtr sections])

proc getSections*(self: TubeTrailMesh): int32 =
  expandMethodBind(className TubeTrailMesh, "get_sections", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSectionLength*(self: TubeTrailMesh; sectionLength: Float): void =
  expandMethodBind(className TubeTrailMesh, "set_section_length", 373806689)
  methodbind.ptrcall(self, [getPtr sectionLength])

proc getSectionLength*(self: TubeTrailMesh): Float =
  expandMethodBind(className TubeTrailMesh, "get_section_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSectionRings*(self: TubeTrailMesh; sectionRings: int32): void =
  expandMethodBind(className TubeTrailMesh, "set_section_rings", 1286410249)
  methodbind.ptrcall(self, [getPtr sectionRings])

proc getSectionRings*(self: TubeTrailMesh): int32 =
  expandMethodBind(className TubeTrailMesh, "get_section_rings", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setCapTop*(self: TubeTrailMesh; capTop: bool): void =
  expandMethodBind(className TubeTrailMesh, "set_cap_top", 2586408642)
  methodbind.ptrcall(self, [getPtr capTop])

proc isCapTop*(self: TubeTrailMesh): bool =
  expandMethodBind(className TubeTrailMesh, "is_cap_top", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCapBottom*(self: TubeTrailMesh; capBottom: bool): void =
  expandMethodBind(className TubeTrailMesh, "set_cap_bottom", 2586408642)
  methodbind.ptrcall(self, [getPtr capBottom])

proc isCapBottom*(self: TubeTrailMesh): bool =
  expandMethodBind(className TubeTrailMesh, "is_cap_bottom", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCurve*(self: TubeTrailMesh; curve: gdref Curve): void =
  expandMethodBind(className TubeTrailMesh, "set_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve])

proc getCurve*(self: TubeTrailMesh): gdref Curve =
  expandMethodBind(className TubeTrailMesh, "get_curve", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Curve)

template radius*(self: TubeTrailMesh): untyped = self.getRadius()
template `radius=`*(self: TubeTrailMesh; value) = self.setRadius(value)

template radialSteps*(self: TubeTrailMesh): untyped = self.getRadialSteps()
template `radialSteps=`*(self: TubeTrailMesh; value) = self.setRadialSteps(value)

template sections*(self: TubeTrailMesh): untyped = self.getSections()
template `sections=`*(self: TubeTrailMesh; value) = self.setSections(value)

template sectionLength*(self: TubeTrailMesh): untyped = self.getSectionLength()
template `sectionLength=`*(self: TubeTrailMesh; value) = self.setSectionLength(value)

template sectionRings*(self: TubeTrailMesh): untyped = self.getSectionRings()
template `sectionRings=`*(self: TubeTrailMesh; value) = self.setSectionRings(value)

template capTop*(self: TubeTrailMesh): untyped = self.isCapTop()
template `capTop=`*(self: TubeTrailMesh; value) = self.setCapTop(value)

template capBottom*(self: TubeTrailMesh): untyped = self.isCapBottom()
template `capBottom=`*(self: TubeTrailMesh; value) = self.setCapBottom(value)

template curve*(self: TubeTrailMesh): untyped = self.getCurve()
template `curve=`*(self: TubeTrailMesh; value) = self.setCurve(value)

const TubeTrailMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TubeTrailMesh]): Table[string, string] = TubeTrailMesh_vmap