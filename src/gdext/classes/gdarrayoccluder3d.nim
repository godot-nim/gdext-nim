{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

proc setArrays*(self: ArrayOccluder3D; vertices: PackedVector3Array; indices: PackedInt32Array): void =
  expandMethodBind(className ArrayOccluder3D, "set_arrays", 3233972621)
  methodbind.ptrcall(self, [getPtr vertices, getPtr indices])

proc setVertices*(self: ArrayOccluder3D; vertices: PackedVector3Array): void =
  expandMethodBind(className ArrayOccluder3D, "set_vertices", 334873810)
  methodbind.ptrcall(self, [getPtr vertices])

proc setIndices*(self: ArrayOccluder3D; indices: PackedInt32Array): void =
  expandMethodBind(className ArrayOccluder3D, "set_indices", 3614634198)
  methodbind.ptrcall(self, [getPtr indices])

template vertices*(self: ArrayOccluder3D): untyped = self.getVertices()
template `vertices=`*(self: ArrayOccluder3D; value) = self.setVertices(value)

template indices*(self: ArrayOccluder3D): untyped = self.getIndices()
template `indices=`*(self: ArrayOccluder3D; value) = self.setIndices(value)

const ArrayOccluder3D_vmap =
  Occluder3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ArrayOccluder3D]): Table[string, string] = ArrayOccluder3D_vmap