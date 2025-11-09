{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(PrismMesh, PrimitiveMesh)

proc setLeftToRight*(self: PrismMesh; leftToRight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "set_left_to_right", 373806689)
  methodbind.ptrcall(self, [getPtr leftToRight], void)

proc getLeftToRight*(self: PrismMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "get_left_to_right", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSize*(self: PrismMesh; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: PrismMesh): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setSubdivideWidth*(self: PrismMesh; segments: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "set_subdivide_width", 1286410249)
  methodbind.ptrcall(self, [getPtr segments], void)

proc getSubdivideWidth*(self: PrismMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "get_subdivide_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSubdivideHeight*(self: PrismMesh; segments: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "set_subdivide_height", 1286410249)
  methodbind.ptrcall(self, [getPtr segments], void)

proc getSubdivideHeight*(self: PrismMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "get_subdivide_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSubdivideDepth*(self: PrismMesh; segments: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "set_subdivide_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr segments], void)

proc getSubdivideDepth*(self: PrismMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrismMesh, "get_subdivide_depth", 3905245786)
  methodbind.ptrcall(self, [], int32)

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
