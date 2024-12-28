{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmesh; export gdmesh

proc surfaceBegin*(self: ImmediateMesh; primitive: Mesh_PrimitiveType; material: gdref Material = default gdref Material): void =
  expandMethodBind(className ImmediateMesh, "surface_begin", 2794442543)
  methodbind.ptrcall(self, [getPtr primitive, getPtr material])

proc surfaceSetColor*(self: ImmediateMesh; color: Color): void =
  expandMethodBind(className ImmediateMesh, "surface_set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc surfaceSetNormal*(self: ImmediateMesh; normal: Vector3): void =
  expandMethodBind(className ImmediateMesh, "surface_set_normal", 3460891852)
  methodbind.ptrcall(self, [getPtr normal])

proc surfaceSetTangent*(self: ImmediateMesh; tangent: Plane): void =
  expandMethodBind(className ImmediateMesh, "surface_set_tangent", 3505987427)
  methodbind.ptrcall(self, [getPtr tangent])

proc surfaceSetUv*(self: ImmediateMesh; uv: Vector2): void =
  expandMethodBind(className ImmediateMesh, "surface_set_uv", 743155724)
  methodbind.ptrcall(self, [getPtr uv])

proc surfaceSetUv2*(self: ImmediateMesh; uv2: Vector2): void =
  expandMethodBind(className ImmediateMesh, "surface_set_uv2", 743155724)
  methodbind.ptrcall(self, [getPtr uv2])

proc surfaceAddVertex*(self: ImmediateMesh; vertex: Vector3): void =
  expandMethodBind(className ImmediateMesh, "surface_add_vertex", 3460891852)
  methodbind.ptrcall(self, [getPtr vertex])

proc surfaceAddVertex2D*(self: ImmediateMesh; vertex: Vector2): void =
  expandMethodBind(className ImmediateMesh, "surface_add_vertex_2d", 743155724)
  methodbind.ptrcall(self, [getPtr vertex])

proc surfaceEnd*(self: ImmediateMesh): void =
  expandMethodBind(className ImmediateMesh, "surface_end", 3218959716)
  methodbind.ptrcall(self, [])

proc clearSurfaces*(self: ImmediateMesh): void =
  expandMethodBind(className ImmediateMesh, "clear_surfaces", 3218959716)
  methodbind.ptrcall(self, [])

const ImmediateMesh_vmap =
  Mesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImmediateMesh]): Table[string, string] = ImmediateMesh_vmap