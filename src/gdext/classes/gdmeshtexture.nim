{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setMesh*(self: MeshTexture; mesh: gdref Mesh): void =
  expandMethodBind(className MeshTexture, "set_mesh", 194775623)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: MeshTexture): gdref Mesh =
  expandMethodBind(className MeshTexture, "get_mesh", 1808005922)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Mesh)

proc setImageSize*(self: MeshTexture; size: Vector2): void =
  expandMethodBind(className MeshTexture, "set_image_size", 743155724)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getImageSize*(self: MeshTexture): Vector2 =
  expandMethodBind(className MeshTexture, "get_image_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setBaseTexture*(self: MeshTexture; texture: gdref Texture2D): void =
  expandMethodBind(className MeshTexture, "set_base_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBaseTexture*(self: MeshTexture): gdref Texture2D =
  expandMethodBind(className MeshTexture, "get_base_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
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