{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

expandOnClassImported(ImageTextureLayered, TextureLayered)

proc createFromImages*(self: ImageTextureLayered; images: TypedArray[gdref Image]): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImageTextureLayered, "create_from_images", 2785773503)
  methodbind.ptrcall(self, [getPtr images], Error)

proc updateLayer*(self: ImageTextureLayered; image: gdref Image; layer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImageTextureLayered, "update_layer", 3331733361)
  methodbind.ptrcall(self, [getPtr image, getPtr layer], void)
