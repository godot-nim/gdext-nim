{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmesh; export gdmesh

proc surfaceBegin*(self: ImmediateMesh; primitive: Mesh_PrimitiveType; material: gdref Material = default gdref Material): void =
  expandMethodBind(className ImmediateMesh, "surface_begin", 2794442543)
  var `?param` = [getPtr primitive, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceSetColor*(self: ImmediateMesh; color: Color): void =
  expandMethodBind(className ImmediateMesh, "surface_set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceSetNormal*(self: ImmediateMesh; normal: Vector3): void =
  expandMethodBind(className ImmediateMesh, "surface_set_normal", 3460891852)
  var `?param` = [getPtr normal]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceSetTangent*(self: ImmediateMesh; tangent: Plane): void =
  expandMethodBind(className ImmediateMesh, "surface_set_tangent", 3505987427)
  var `?param` = [getPtr tangent]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceSetUv*(self: ImmediateMesh; uv: Vector2): void =
  expandMethodBind(className ImmediateMesh, "surface_set_uv", 743155724)
  var `?param` = [getPtr uv]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceSetUv2*(self: ImmediateMesh; uv2: Vector2): void =
  expandMethodBind(className ImmediateMesh, "surface_set_uv2", 743155724)
  var `?param` = [getPtr uv2]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceAddVertex*(self: ImmediateMesh; vertex: Vector3): void =
  expandMethodBind(className ImmediateMesh, "surface_add_vertex", 3460891852)
  var `?param` = [getPtr vertex]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceAddVertex2D*(self: ImmediateMesh; vertex: Vector2): void =
  expandMethodBind(className ImmediateMesh, "surface_add_vertex_2d", 743155724)
  var `?param` = [getPtr vertex]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceEnd*(self: ImmediateMesh): void =
  expandMethodBind(className ImmediateMesh, "surface_end", 3218959716)
  methodbind.ptrcall(self, nil)

proc clearSurfaces*(self: ImmediateMesh): void =
  expandMethodBind(className ImmediateMesh, "clear_surfaces", 3218959716)
  methodbind.ptrcall(self, nil)

const ImmediateMesh_vmap =
  Mesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImmediateMesh]): Table[string, string] = ImmediateMesh_vmap