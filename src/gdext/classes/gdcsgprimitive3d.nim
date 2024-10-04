{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcsgshape3d; export gdcsgshape3d

proc setFlipFaces*(self: CsgPrimitive3D; flipFaces: bool): void =
  expandMethodBind(className CsgPrimitive3D, "set_flip_faces", 2586408642)
  var `?param` = [getPtr flipFaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlipFaces*(self: CsgPrimitive3D): bool =
  expandMethodBind(className CsgPrimitive3D, "get_flip_faces", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template flipFaces*(self: CsgPrimitive3D): untyped = self.getFlipFaces()
template `flipFaces=`*(self: CsgPrimitive3D; value) = self.setFlipFaces(value)

const CsgPrimitive3D_vmap =
  CsgShape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CsgPrimitive3D]): Table[string, string] = CsgPrimitive3D_vmap