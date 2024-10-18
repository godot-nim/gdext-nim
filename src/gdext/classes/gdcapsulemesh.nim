{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setRadius*(self: CapsuleMesh; radius: Float): void =
  expandMethodBind(className CapsuleMesh, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: CapsuleMesh): Float =
  expandMethodBind(className CapsuleMesh, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: CapsuleMesh; height: Float): void =
  expandMethodBind(className CapsuleMesh, "set_height", 373806689)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: CapsuleMesh): Float =
  expandMethodBind(className CapsuleMesh, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRadialSegments*(self: CapsuleMesh; segments: int32): void =
  expandMethodBind(className CapsuleMesh, "set_radial_segments", 1286410249)
  var `?param` = [getPtr segments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadialSegments*(self: CapsuleMesh): int32 =
  expandMethodBind(className CapsuleMesh, "get_radial_segments", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRings*(self: CapsuleMesh; rings: int32): void =
  expandMethodBind(className CapsuleMesh, "set_rings", 1286410249)
  var `?param` = [getPtr rings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRings*(self: CapsuleMesh): int32 =
  expandMethodBind(className CapsuleMesh, "get_rings", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template radius*(self: CapsuleMesh): untyped = self.getRadius()
template `radius=`*(self: CapsuleMesh; value) = self.setRadius(value)

template height*(self: CapsuleMesh): untyped = self.getHeight()
template `height=`*(self: CapsuleMesh; value) = self.setHeight(value)

template radialSegments*(self: CapsuleMesh): untyped = self.getRadialSegments()
template `radialSegments=`*(self: CapsuleMesh; value) = self.setRadialSegments(value)

template rings*(self: CapsuleMesh): untyped = self.getRings()
template `rings=`*(self: CapsuleMesh; value) = self.setRings(value)

const CapsuleMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CapsuleMesh]): Table[string, string] = CapsuleMesh_vmap