{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmesh; export gdmesh

proc setAabb*(self: PlaceholderMesh; aabb: Aabb): void =
  expandMethodBind(className PlaceholderMesh, "set_aabb", 259215842)
  var `?param` = [getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

template aabb*(self: PlaceholderMesh): untyped = self.getAabb()
template `aabb=`*(self: PlaceholderMesh; value) = self.setAabb(value)

const PlaceholderMesh_vmap =
  Mesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderMesh]): Table[string, string] = PlaceholderMesh_vmap