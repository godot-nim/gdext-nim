{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(TubeTrailMesh, PrimitiveMesh)

proc setRadius*(self: TubeTrailMesh; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: TubeTrailMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadialSteps*(self: TubeTrailMesh; radialSteps: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "set_radial_steps", 1286410249)
  methodbind.ptrcall(self, [getPtr radialSteps], void)

proc getRadialSteps*(self: TubeTrailMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "get_radial_steps", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSections*(self: TubeTrailMesh; sections: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "set_sections", 1286410249)
  methodbind.ptrcall(self, [getPtr sections], void)

proc getSections*(self: TubeTrailMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "get_sections", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSectionLength*(self: TubeTrailMesh; sectionLength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "set_section_length", 373806689)
  methodbind.ptrcall(self, [getPtr sectionLength], void)

proc getSectionLength*(self: TubeTrailMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "get_section_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSectionRings*(self: TubeTrailMesh; sectionRings: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "set_section_rings", 1286410249)
  methodbind.ptrcall(self, [getPtr sectionRings], void)

proc getSectionRings*(self: TubeTrailMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "get_section_rings", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCapTop*(self: TubeTrailMesh; capTop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "set_cap_top", 2586408642)
  methodbind.ptrcall(self, [getPtr capTop], void)

proc isCapTop*(self: TubeTrailMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "is_cap_top", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCapBottom*(self: TubeTrailMesh; capBottom: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "set_cap_bottom", 2586408642)
  methodbind.ptrcall(self, [getPtr capBottom], void)

proc isCapBottom*(self: TubeTrailMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "is_cap_bottom", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCurve*(self: TubeTrailMesh; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "set_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getCurve*(self: TubeTrailMesh): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TubeTrailMesh, "get_curve", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

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
