{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

proc create*(self: ImageTexture3D; format: Image_Format; width: int32; height: int32; depth: int32; useMipmaps: bool; data: TypedArray[Image]): Error =
  expandMethodBind(className ImageTexture3D, "create", 1130379827)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr format, getPtr width, getPtr height, getPtr depth, getPtr useMipmaps, getPtr data], addr ret)
  (addr ret).decode_result(Error)

proc update*(self: ImageTexture3D; data: TypedArray[Image]): void =
  expandMethodBind(className ImageTexture3D, "update", 381264803)
  methodbind.ptrcall(self, [getPtr data])

const ImageTexture3D_vmap =
  Texture3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImageTexture3D]): Table[string, string] = ImageTexture3D_vmap