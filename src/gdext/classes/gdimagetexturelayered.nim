{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

proc createFromImages*(self: ImageTextureLayered; images: TypedArray[gdref Image]): Error =
  expandMethodBind(className ImageTextureLayered, "create_from_images", 2785773503)
  var `?param` = [getPtr images]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc updateLayer*(self: ImageTextureLayered; image: gdref Image; layer: int32): void =
  expandMethodBind(className ImageTextureLayered, "update_layer", 3331733361)
  var `?param` = [getPtr image, getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

const ImageTextureLayered_vmap =
  TextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImageTextureLayered]): Table[string, string] = ImageTextureLayered_vmap