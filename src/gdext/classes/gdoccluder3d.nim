{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Occluder3D, Resource)

proc getVertices*(self: Occluder3D): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Occluder3D, "get_vertices", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc getIndices*(self: Occluder3D): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Occluder3D, "get_indices", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)
