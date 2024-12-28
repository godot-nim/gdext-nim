{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setMesh*(self: MeshInstance2D; mesh: gdref Mesh): void =
  expandMethodBind(className MeshInstance2D, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh])

proc getMesh*(self: MeshInstance2D): gdref Mesh =
  expandMethodBind(className MeshInstance2D, "get_mesh", 1808005922)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc setTexture*(self: MeshInstance2D; texture: gdref Texture2D): void =
  expandMethodBind(className MeshInstance2D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc getTexture*(self: MeshInstance2D): gdref Texture2D =
  expandMethodBind(className MeshInstance2D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

template mesh*(self: MeshInstance2D): untyped = self.getMesh()
template `mesh=`*(self: MeshInstance2D; value) = self.setMesh(value)

template texture*(self: MeshInstance2D): untyped = self.getTexture()
template `texture=`*(self: MeshInstance2D; value) = self.setTexture(value)

const MeshInstance2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MeshInstance2D]): Table[string, string] = MeshInstance2D_vmap

proc textureChanged*(self: MeshInstance2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("texture_changed")
  self.emitSignal(signalname)