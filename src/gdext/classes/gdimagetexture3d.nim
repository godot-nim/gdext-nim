{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

proc create*(self: ImageTexture3D; format: Image_Format; width: int32; height: int32; depth: int32; useMipmaps: bool; data: gdref Image): Error =
  expandMethodBind(className ImageTexture3D, "create", 1130379827)
  var `?param` = [getPtr format, getPtr width, getPtr height, getPtr depth, getPtr useMipmaps, getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc update*(self: ImageTexture3D; data: gdref Image): void =
  expandMethodBind(className ImageTexture3D, "update", 381264803)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

const ImageTexture3D_vmap =
  Texture3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImageTexture3D]): Table[string, string] = ImageTexture3D_vmap