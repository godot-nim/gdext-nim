{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setTopRadius*(self: CylinderMesh; radius: Float): void =
  expandMethodBind(className CylinderMesh, "set_top_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getTopRadius*(self: CylinderMesh): Float =
  expandMethodBind(className CylinderMesh, "get_top_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBottomRadius*(self: CylinderMesh; radius: Float): void =
  expandMethodBind(className CylinderMesh, "set_bottom_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getBottomRadius*(self: CylinderMesh): Float =
  expandMethodBind(className CylinderMesh, "get_bottom_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: CylinderMesh; height: Float): void =
  expandMethodBind(className CylinderMesh, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height])

proc getHeight*(self: CylinderMesh): Float =
  expandMethodBind(className CylinderMesh, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRadialSegments*(self: CylinderMesh; segments: int32): void =
  expandMethodBind(className CylinderMesh, "set_radial_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr segments])

proc getRadialSegments*(self: CylinderMesh): int32 =
  expandMethodBind(className CylinderMesh, "get_radial_segments", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setRings*(self: CylinderMesh; rings: int32): void =
  expandMethodBind(className CylinderMesh, "set_rings", 1286410249)
  methodbind.ptrcall(self, [getPtr rings])

proc getRings*(self: CylinderMesh): int32 =
  expandMethodBind(className CylinderMesh, "get_rings", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setCapTop*(self: CylinderMesh; capTop: bool): void =
  expandMethodBind(className CylinderMesh, "set_cap_top", 2586408642)
  methodbind.ptrcall(self, [getPtr capTop])

proc isCapTop*(self: CylinderMesh): bool =
  expandMethodBind(className CylinderMesh, "is_cap_top", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCapBottom*(self: CylinderMesh; capBottom: bool): void =
  expandMethodBind(className CylinderMesh, "set_cap_bottom", 2586408642)
  methodbind.ptrcall(self, [getPtr capBottom])

proc isCapBottom*(self: CylinderMesh): bool =
  expandMethodBind(className CylinderMesh, "is_cap_bottom", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template topRadius*(self: CylinderMesh): untyped = self.getTopRadius()
template `topRadius=`*(self: CylinderMesh; value) = self.setTopRadius(value)

template bottomRadius*(self: CylinderMesh): untyped = self.getBottomRadius()
template `bottomRadius=`*(self: CylinderMesh; value) = self.setBottomRadius(value)

template height*(self: CylinderMesh): untyped = self.getHeight()
template `height=`*(self: CylinderMesh; value) = self.setHeight(value)

template radialSegments*(self: CylinderMesh): untyped = self.getRadialSegments()
template `radialSegments=`*(self: CylinderMesh; value) = self.setRadialSegments(value)

template rings*(self: CylinderMesh): untyped = self.getRings()
template `rings=`*(self: CylinderMesh; value) = self.setRings(value)

template capTop*(self: CylinderMesh): untyped = self.isCapTop()
template `capTop=`*(self: CylinderMesh; value) = self.setCapTop(value)

template capBottom*(self: CylinderMesh): untyped = self.isCapBottom()
template `capBottom=`*(self: CylinderMesh; value) = self.setCapBottom(value)

const CylinderMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CylinderMesh]): Table[string, string] = CylinderMesh_vmap