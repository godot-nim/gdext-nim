{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(MeshTexture, Texture2D)

proc setMesh*(self: MeshTexture; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshTexture, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getMesh*(self: MeshTexture): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshTexture, "get_mesh", 1808005922)
  methodbind.ptrcall(self, [], gdref Mesh)

proc setImageSize*(self: MeshTexture; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshTexture, "set_image_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc getImageSize*(self: MeshTexture): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshTexture, "get_image_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setBaseTexture*(self: MeshTexture; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshTexture, "set_base_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getBaseTexture*(self: MeshTexture): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshTexture, "get_base_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

template mesh*(self: MeshTexture): untyped = self.getMesh()
template `mesh=`*(self: MeshTexture; value) = self.setMesh(value)

template baseTexture*(self: MeshTexture): untyped = self.getBaseTexture()
template `baseTexture=`*(self: MeshTexture; value) = self.setBaseTexture(value)

template imageSize*(self: MeshTexture): untyped = self.getImageSize()
template `imageSize=`*(self: MeshTexture; value) = self.setImageSize(value)
