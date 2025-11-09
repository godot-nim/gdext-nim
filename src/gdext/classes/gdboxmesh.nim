{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(BoxMesh, PrimitiveMesh)

proc setSize*(self: BoxMesh; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxMesh, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: BoxMesh): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxMesh, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setSubdivideWidth*(self: BoxMesh; subdivide: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxMesh, "set_subdivide_width", 1286410249)
  methodbind.ptrcall(self, [getPtr subdivide], void)

proc getSubdivideWidth*(self: BoxMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxMesh, "get_subdivide_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSubdivideHeight*(self: BoxMesh; divisions: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxMesh, "set_subdivide_height", 1286410249)
  methodbind.ptrcall(self, [getPtr divisions], void)

proc getSubdivideHeight*(self: BoxMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxMesh, "get_subdivide_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSubdivideDepth*(self: BoxMesh; divisions: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxMesh, "set_subdivide_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr divisions], void)

proc getSubdivideDepth*(self: BoxMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxMesh, "get_subdivide_depth", 3905245786)
  methodbind.ptrcall(self, [], int32)

template size*(self: BoxMesh): untyped = self.getSize()
template `size=`*(self: BoxMesh; value) = self.setSize(value)

template subdivideWidth*(self: BoxMesh): untyped = self.getSubdivideWidth()
template `subdivideWidth=`*(self: BoxMesh; value) = self.setSubdivideWidth(value)

template subdivideHeight*(self: BoxMesh): untyped = self.getSubdivideHeight()
template `subdivideHeight=`*(self: BoxMesh; value) = self.setSubdivideHeight(value)

template subdivideDepth*(self: BoxMesh): untyped = self.getSubdivideDepth()
template `subdivideDepth=`*(self: BoxMesh; value) = self.setSubdivideDepth(value)
