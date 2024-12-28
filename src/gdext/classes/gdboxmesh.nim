{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setSize*(self: BoxMesh; size: Vector3): void =
  expandMethodBind(className BoxMesh, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: BoxMesh): Vector3 =
  expandMethodBind(className BoxMesh, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setSubdivideWidth*(self: BoxMesh; subdivide: int32): void =
  expandMethodBind(className BoxMesh, "set_subdivide_width", 1286410249)
  methodbind.ptrcall(self, [getPtr subdivide])

proc getSubdivideWidth*(self: BoxMesh): int32 =
  expandMethodBind(className BoxMesh, "get_subdivide_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSubdivideHeight*(self: BoxMesh; divisions: int32): void =
  expandMethodBind(className BoxMesh, "set_subdivide_height", 1286410249)
  methodbind.ptrcall(self, [getPtr divisions])

proc getSubdivideHeight*(self: BoxMesh): int32 =
  expandMethodBind(className BoxMesh, "get_subdivide_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSubdivideDepth*(self: BoxMesh; divisions: int32): void =
  expandMethodBind(className BoxMesh, "set_subdivide_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr divisions])

proc getSubdivideDepth*(self: BoxMesh): int32 =
  expandMethodBind(className BoxMesh, "get_subdivide_depth", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

template size*(self: BoxMesh): untyped = self.getSize()
template `size=`*(self: BoxMesh; value) = self.setSize(value)

template subdivideWidth*(self: BoxMesh): untyped = self.getSubdivideWidth()
template `subdivideWidth=`*(self: BoxMesh; value) = self.setSubdivideWidth(value)

template subdivideHeight*(self: BoxMesh): untyped = self.getSubdivideHeight()
template `subdivideHeight=`*(self: BoxMesh; value) = self.setSubdivideHeight(value)

template subdivideDepth*(self: BoxMesh): untyped = self.getSubdivideDepth()
template `subdivideDepth=`*(self: BoxMesh; value) = self.setSubdivideDepth(value)

const BoxMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[BoxMesh]): Table[string, string] = BoxMesh_vmap