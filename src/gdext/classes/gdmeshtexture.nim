{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setMesh*(self: MeshTexture; mesh: gdref Mesh): void =
  expandMethodBind(className MeshTexture, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh])

proc getMesh*(self: MeshTexture): gdref Mesh =
  expandMethodBind(className MeshTexture, "get_mesh", 1808005922)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc setImageSize*(self: MeshTexture; size: Vector2): void =
  expandMethodBind(className MeshTexture, "set_image_size", 743155724)
  methodbind.ptrcall(self, [getPtr size])

proc getImageSize*(self: MeshTexture): Vector2 =
  expandMethodBind(className MeshTexture, "get_image_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setBaseTexture*(self: MeshTexture; texture: gdref Texture2D): void =
  expandMethodBind(className MeshTexture, "set_base_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc getBaseTexture*(self: MeshTexture): gdref Texture2D =
  expandMethodBind(className MeshTexture, "get_base_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

template mesh*(self: MeshTexture): untyped = self.getMesh()
template `mesh=`*(self: MeshTexture; value) = self.setMesh(value)

template baseTexture*(self: MeshTexture): untyped = self.getBaseTexture()
template `baseTexture=`*(self: MeshTexture; value) = self.setBaseTexture(value)

template imageSize*(self: MeshTexture): untyped = self.getImageSize()
template `imageSize=`*(self: MeshTexture; value) = self.setImageSize(value)

const MeshTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MeshTexture]): Table[string, string] = MeshTexture_vmap