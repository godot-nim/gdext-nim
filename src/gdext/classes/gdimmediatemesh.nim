{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmesh; export gdmesh

expandOnClassImported(ImmediateMesh, Mesh)

proc surfaceBegin*(self: ImmediateMesh; primitive: Mesh_PrimitiveType; material: gdref Material = default gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_begin", 2794442543)
  methodbind.ptrcall(self, [getPtr primitive, getPtr material], void)

proc surfaceSetColor*(self: ImmediateMesh; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc surfaceSetNormal*(self: ImmediateMesh; normal: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_set_normal", 3460891852)
  methodbind.ptrcall(self, [getPtr normal], void)

proc surfaceSetTangent*(self: ImmediateMesh; tangent: Plane): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_set_tangent", 3505987427)
  methodbind.ptrcall(self, [getPtr tangent], void)

proc surfaceSetUv*(self: ImmediateMesh; uv: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_set_uv", 743155724)
  methodbind.ptrcall(self, [getPtr uv], void)

proc surfaceSetUv2*(self: ImmediateMesh; uv2: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_set_uv2", 743155724)
  methodbind.ptrcall(self, [getPtr uv2], void)

proc surfaceAddVertex*(self: ImmediateMesh; vertex: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_add_vertex", 3460891852)
  methodbind.ptrcall(self, [getPtr vertex], void)

proc surfaceAddVertex2D*(self: ImmediateMesh; vertex: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_add_vertex_2d", 743155724)
  methodbind.ptrcall(self, [getPtr vertex], void)

proc surfaceEnd*(self: ImmediateMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "surface_end", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearSurfaces*(self: ImmediateMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImmediateMesh, "clear_surfaces", 3218959716)
  methodbind.ptrcall(self, [], void)
