{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setInnerRadius*(self: TorusMesh; radius: Float): void =
  expandMethodBind(className TorusMesh, "set_inner_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInnerRadius*(self: TorusMesh): Float =
  expandMethodBind(className TorusMesh, "get_inner_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setOuterRadius*(self: TorusMesh; radius: Float): void =
  expandMethodBind(className TorusMesh, "set_outer_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOuterRadius*(self: TorusMesh): Float =
  expandMethodBind(className TorusMesh, "get_outer_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRings*(self: TorusMesh; rings: int32): void =
  expandMethodBind(className TorusMesh, "set_rings", 1286410249)
  var `?param` = [getPtr rings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRings*(self: TorusMesh): int32 =
  expandMethodBind(className TorusMesh, "get_rings", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRingSegments*(self: TorusMesh; rings: int32): void =
  expandMethodBind(className TorusMesh, "set_ring_segments", 1286410249)
  var `?param` = [getPtr rings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRingSegments*(self: TorusMesh): int32 =
  expandMethodBind(className TorusMesh, "get_ring_segments", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template innerRadius*(self: TorusMesh): untyped = self.getInnerRadius()
template `innerRadius=`*(self: TorusMesh; value) = self.setInnerRadius(value)

template outerRadius*(self: TorusMesh): untyped = self.getOuterRadius()
template `outerRadius=`*(self: TorusMesh; value) = self.setOuterRadius(value)

template rings*(self: TorusMesh): untyped = self.getRings()
template `rings=`*(self: TorusMesh; value) = self.setRings(value)

template ringSegments*(self: TorusMesh): untyped = self.getRingSegments()
template `ringSegments=`*(self: TorusMesh; value) = self.setRingSegments(value)

const TorusMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TorusMesh]): Table[string, string] = TorusMesh_vmap