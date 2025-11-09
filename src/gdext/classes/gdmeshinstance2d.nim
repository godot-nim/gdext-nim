{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(MeshInstance2D, Node2D)

proc setMesh*(self: MeshInstance2D; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance2D, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getMesh*(self: MeshInstance2D): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance2D, "get_mesh", 1808005922)
  methodbind.ptrcall(self, [], gdref Mesh)

proc setTexture*(self: MeshInstance2D; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance2D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: MeshInstance2D): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance2D, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

template mesh*(self: MeshInstance2D): untyped = self.getMesh()
template `mesh=`*(self: MeshInstance2D; value) = self.setMesh(value)

template texture*(self: MeshInstance2D): untyped = self.getTexture()
template `texture=`*(self: MeshInstance2D; value) = self.setTexture(value)
