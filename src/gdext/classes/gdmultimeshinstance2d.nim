{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setMultimesh*(self: MultiMeshInstance2D; multimesh: gdref MultiMesh): void =
  expandMethodBind(className MultiMeshInstance2D, "set_multimesh", 2246127404)
  methodbind.ptrcall(self, [getPtr multimesh])

proc getMultimesh*(self: MultiMeshInstance2D): gdref MultiMesh =
  expandMethodBind(className MultiMeshInstance2D, "get_multimesh", 1385450523)
  var ret: encoded gdref MultiMesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref MultiMesh)

proc setTexture*(self: MultiMeshInstance2D; texture: gdref Texture2D): void =
  expandMethodBind(className MultiMeshInstance2D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc getTexture*(self: MultiMeshInstance2D): gdref Texture2D =
  expandMethodBind(className MultiMeshInstance2D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

template multimesh*(self: MultiMeshInstance2D): untyped = self.getMultimesh()
template `multimesh=`*(self: MultiMeshInstance2D; value) = self.setMultimesh(value)

template texture*(self: MultiMeshInstance2D): untyped = self.getTexture()
template `texture=`*(self: MultiMeshInstance2D; value) = self.setTexture(value)

const MultiMeshInstance2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MultiMeshInstance2D]): Table[string, string] = MultiMeshInstance2D_vmap

proc textureChanged*(self: MultiMeshInstance2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("texture_changed")
  self.emitSignal(signalname)