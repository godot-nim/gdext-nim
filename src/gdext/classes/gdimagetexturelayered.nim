{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

proc createFromImages*(self: ImageTextureLayered; images: TypedArray[Image]): Error =
  expandMethodBind(className ImageTextureLayered, "create_from_images", 2785773503)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr images], addr ret)
  (addr ret).decode_result(Error)

proc updateLayer*(self: ImageTextureLayered; image: gdref Image; layer: int32): void =
  expandMethodBind(className ImageTextureLayered, "update_layer", 3331733361)
  methodbind.ptrcall(self, [getPtr image, getPtr layer])

const ImageTextureLayered_vmap =
  TextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImageTextureLayered]): Table[string, string] = ImageTextureLayered_vmap