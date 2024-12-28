{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setSize*(self: PlaneMesh; size: Vector2): void =
  expandMethodBind(className PlaneMesh, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: PlaneMesh): Vector2 =
  expandMethodBind(className PlaneMesh, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setSubdivideWidth*(self: PlaneMesh; subdivide: int32): void =
  expandMethodBind(className PlaneMesh, "set_subdivide_width", 1286410249)
  methodbind.ptrcall(self, [getPtr subdivide])

proc getSubdivideWidth*(self: PlaneMesh): int32 =
  expandMethodBind(className PlaneMesh, "get_subdivide_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSubdivideDepth*(self: PlaneMesh; subdivide: int32): void =
  expandMethodBind(className PlaneMesh, "set_subdivide_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr subdivide])

proc getSubdivideDepth*(self: PlaneMesh): int32 =
  expandMethodBind(className PlaneMesh, "get_subdivide_depth", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setCenterOffset*(self: PlaneMesh; offset: Vector3): void =
  expandMethodBind(className PlaneMesh, "set_center_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset])

proc getCenterOffset*(self: PlaneMesh): Vector3 =
  expandMethodBind(className PlaneMesh, "get_center_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setOrientation*(self: PlaneMesh; orientation: PlaneMesh_Orientation): void =
  expandMethodBind(className PlaneMesh, "set_orientation", 2751399687)
  methodbind.ptrcall(self, [getPtr orientation])

proc getOrientation*(self: PlaneMesh): PlaneMesh_Orientation =
  expandMethodBind(className PlaneMesh, "get_orientation", 3227599250)
  var ret: encoded PlaneMesh_Orientation
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PlaneMesh_Orientation)

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

const PlaneMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaneMesh]): Table[string, string] = PlaneMesh_vmap