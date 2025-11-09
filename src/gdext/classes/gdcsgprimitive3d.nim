{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgshape3d; export gdcsgshape3d

expandOnClassImported(CSGPrimitive3D, CSGShape3D)

proc setFlipFaces*(self: CSGPrimitive3D; flipFaces: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPrimitive3D, "set_flip_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr flipFaces], void)

proc getFlipFaces*(self: CSGPrimitive3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPrimitive3D, "get_flip_faces", 2240911060)
  methodbind.ptrcall(self, [], bool)

template flipFaces*(self: CSGPrimitive3D): untyped = self.getFlipFaces()
template `flipFaces=`*(self: CSGPrimitive3D; value) = self.setFlipFaces(value)
