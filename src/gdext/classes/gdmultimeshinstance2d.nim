{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(MultiMeshInstance2D, Node2D)

proc setMultimesh*(self: MultiMeshInstance2D; multimesh: gdref MultiMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMeshInstance2D, "set_multimesh", 2246127404)
  methodbind.ptrcall(self, [getPtr multimesh], void)

proc getMultimesh*(self: MultiMeshInstance2D): gdref MultiMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMeshInstance2D, "get_multimesh", 1385450523)
  methodbind.ptrcall(self, [], gdref MultiMesh)

proc setTexture*(self: MultiMeshInstance2D; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMeshInstance2D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: MultiMeshInstance2D): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMeshInstance2D, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

template multimesh*(self: MultiMeshInstance2D): untyped = self.getMultimesh()
template `multimesh=`*(self: MultiMeshInstance2D; value) = self.setMultimesh(value)

template texture*(self: MultiMeshInstance2D): untyped = self.getTexture()
template `texture=`*(self: MultiMeshInstance2D; value) = self.setTexture(value)
