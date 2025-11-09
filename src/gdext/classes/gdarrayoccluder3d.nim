{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

expandOnClassImported(ArrayOccluder3D, Occluder3D)

proc setArrays*(self: ArrayOccluder3D; vertices: PackedVector3Array; indices: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayOccluder3D, "set_arrays", 3233972621)
  methodbind.ptrcall(self, [getPtr vertices, getPtr indices], void)

proc setVertices*(self: ArrayOccluder3D; vertices: PackedVector3Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayOccluder3D, "set_vertices", 334873810)
  methodbind.ptrcall(self, [getPtr vertices], void)

proc setIndices*(self: ArrayOccluder3D; indices: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayOccluder3D, "set_indices", 3614634198)
  methodbind.ptrcall(self, [getPtr indices], void)

template vertices*(self: ArrayOccluder3D): untyped = self.getVertices()
template `vertices=`*(self: ArrayOccluder3D; value) = self.setVertices(value)

template indices*(self: ArrayOccluder3D): untyped = self.getIndices()
template `indices=`*(self: ArrayOccluder3D; value) = self.setIndices(value)
