{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(PlaneMesh, PrimitiveMesh)

proc setSize*(self: PlaneMesh; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: PlaneMesh): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "get_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setSubdivideWidth*(self: PlaneMesh; subdivide: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "set_subdivide_width", 1286410249)
  methodbind.ptrcall(self, [getPtr subdivide], void)

proc getSubdivideWidth*(self: PlaneMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "get_subdivide_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSubdivideDepth*(self: PlaneMesh; subdivide: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "set_subdivide_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr subdivide], void)

proc getSubdivideDepth*(self: PlaneMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "get_subdivide_depth", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCenterOffset*(self: PlaneMesh; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "set_center_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getCenterOffset*(self: PlaneMesh): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "get_center_offset", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setOrientation*(self: PlaneMesh; orientation: PlaneMesh_Orientation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "set_orientation", 2751399687)
  methodbind.ptrcall(self, [getPtr orientation], void)

proc getOrientation*(self: PlaneMesh): PlaneMesh_Orientation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaneMesh, "get_orientation", 3227599250)
  methodbind.ptrcall(self, [], PlaneMesh_Orientation)

template size*(self: PlaneMesh): untyped = self.getSize()
template `size=`*(self: PlaneMesh; value) = self.setSize(value)

template subdivideWidth*(self: PlaneMesh): untyped = self.getSubdivideWidth()
template `subdivideWidth=`*(self: PlaneMesh; value) = self.setSubdivideWidth(value)

template subdivideDepth*(self: PlaneMesh): untyped = self.getSubdivideDepth()
template `subdivideDepth=`*(self: PlaneMesh; value) = self.setSubdivideDepth(value)

template centerOffset*(self: PlaneMesh): untyped = self.getCenterOffset()
template `centerOffset=`*(self: PlaneMesh; value) = self.setCenterOffset(value)

template orientation*(self: PlaneMesh): untyped = self.getOrientation()
template `orientation=`*(self: PlaneMesh; value) = self.setOrientation(value)
