{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(RibbonTrailMesh, PrimitiveMesh)

proc setSize*(self: RibbonTrailMesh; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "set_size", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: RibbonTrailMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "get_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSections*(self: RibbonTrailMesh; sections: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "set_sections", 1286410249)
  methodbind.ptrcall(self, [getPtr sections], void)

proc getSections*(self: RibbonTrailMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "get_sections", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSectionLength*(self: RibbonTrailMesh; sectionLength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "set_section_length", 373806689)
  methodbind.ptrcall(self, [getPtr sectionLength], void)

proc getSectionLength*(self: RibbonTrailMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "get_section_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSectionSegments*(self: RibbonTrailMesh; sectionSegments: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "set_section_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr sectionSegments], void)

proc getSectionSegments*(self: RibbonTrailMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "get_section_segments", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCurve*(self: RibbonTrailMesh; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "set_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getCurve*(self: RibbonTrailMesh): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "get_curve", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

proc setShape*(self: RibbonTrailMesh; shape: RibbonTrailMesh_Shape): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "set_shape", 1684440262)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: RibbonTrailMesh): RibbonTrailMesh_Shape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RibbonTrailMesh, "get_shape", 1317484155)
  methodbind.ptrcall(self, [], RibbonTrailMesh_Shape)

template shape*(self: RibbonTrailMesh): untyped = self.getShape()
template `shape=`*(self: RibbonTrailMesh; value) = self.setShape(value)

template size*(self: RibbonTrailMesh): untyped = self.getSize()
template `size=`*(self: RibbonTrailMesh; value) = self.setSize(value)

template sections*(self: RibbonTrailMesh): untyped = self.getSections()
template `sections=`*(self: RibbonTrailMesh; value) = self.setSections(value)

template sectionLength*(self: RibbonTrailMesh): untyped = self.getSectionLength()
template `sectionLength=`*(self: RibbonTrailMesh; value) = self.setSectionLength(value)

template sectionSegments*(self: RibbonTrailMesh): untyped = self.getSectionSegments()
template `sectionSegments=`*(self: RibbonTrailMesh; value) = self.setSectionSegments(value)

template curve*(self: RibbonTrailMesh): untyped = self.getCurve()
template `curve=`*(self: RibbonTrailMesh; value) = self.setCurve(value)
