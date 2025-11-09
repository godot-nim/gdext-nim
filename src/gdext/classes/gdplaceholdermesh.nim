{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmesh; export gdmesh

expandOnClassImported(PlaceholderMesh, Mesh)

proc setAabb*(self: PlaceholderMesh; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaceholderMesh, "set_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb], void)

template aabb*(self: PlaceholderMesh): untyped = self.getAabb()
template `aabb=`*(self: PlaceholderMesh; value) = self.setAabb(value)
