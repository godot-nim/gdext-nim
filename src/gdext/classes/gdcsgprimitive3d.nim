{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgshape3d; export gdcsgshape3d

proc setFlipFaces*(self: CSGPrimitive3D; flipFaces: bool): void =
  expandMethodBind(className CSGPrimitive3D, "set_flip_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr flipFaces])

proc getFlipFaces*(self: CSGPrimitive3D): bool =
  expandMethodBind(className CSGPrimitive3D, "get_flip_faces", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template flipFaces*(self: CSGPrimitive3D): untyped = self.getFlipFaces()
template `flipFaces=`*(self: CSGPrimitive3D; value) = self.setFlipFaces(value)

const CSGPrimitive3D_vmap =
  CSGShape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGPrimitive3D]): Table[string, string] = CSGPrimitive3D_vmap