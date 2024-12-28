{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmesh; export gdmesh

proc setAabb*(self: PlaceholderMesh; aabb: AABB): void =
  expandMethodBind(className PlaceholderMesh, "set_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb])

template aabb*(self: PlaceholderMesh): untyped = self.getAabb()
template `aabb=`*(self: PlaceholderMesh; value) = self.setAabb(value)

const PlaceholderMesh_vmap =
  Mesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderMesh]): Table[string, string] = PlaceholderMesh_vmap