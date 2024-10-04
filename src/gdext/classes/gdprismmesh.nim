{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setLeftToRight*(self: PrismMesh; leftToRight: Float): void =
  expandMethodBind(className PrismMesh, "set_left_to_right", 373806689)
  var `?param` = [getPtr leftToRight]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLeftToRight*(self: PrismMesh): Float =
  expandMethodBind(className PrismMesh, "get_left_to_right", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSize*(self: PrismMesh; size: Vector3): void =
  expandMethodBind(className PrismMesh, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: PrismMesh): Vector3 =
  expandMethodBind(className PrismMesh, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setSubdivideWidth*(self: PrismMesh; segments: int32): void =
  expandMethodBind(className PrismMesh, "set_subdivide_width", 1286410249)
  var `?param` = [getPtr segments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubdivideWidth*(self: PrismMesh): int32 =
  expandMethodBind(className PrismMesh, "get_subdivide_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSubdivideHeight*(self: PrismMesh; segments: int32): void =
  expandMethodBind(className PrismMesh, "set_subdivide_height", 1286410249)
  var `?param` = [getPtr segments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubdivideHeight*(self: PrismMesh): int32 =
  expandMethodBind(className PrismMesh, "get_subdivide_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSubdivideDepth*(self: PrismMesh; segments: int32): void =
  expandMethodBind(className PrismMesh, "set_subdivide_depth", 1286410249)
  var `?param` = [getPtr segments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubdivideDepth*(self: PrismMesh): int32 =
  expandMethodBind(className PrismMesh, "get_subdivide_depth", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template leftToRight*(self: PrismMesh): untyped = self.getLeftToRight()
template `leftToRight=`*(self: PrismMesh; value) = self.setLeftToRight(value)

template size*(self: PrismMesh): untyped = self.getSize()
template `size=`*(self: PrismMesh; value) = self.setSize(value)

template subdivideWidth*(self: PrismMesh): untyped = self.getSubdivideWidth()
template `subdivideWidth=`*(self: PrismMesh; value) = self.setSubdivideWidth(value)

template subdivideHeight*(self: PrismMesh): untyped = self.getSubdivideHeight()
template `subdivideHeight=`*(self: PrismMesh; value) = self.setSubdivideHeight(value)

template subdivideDepth*(self: PrismMesh): untyped = self.getSubdivideDepth()
template `subdivideDepth=`*(self: PrismMesh; value) = self.setSubdivideDepth(value)

const PrismMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PrismMesh]): Table[string, string] = PrismMesh_vmap