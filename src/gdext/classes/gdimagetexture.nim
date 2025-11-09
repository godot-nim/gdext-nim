{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(ImageTexture, Texture2D)

proc createFromImage*(_: typedesc[ImageTexture]; image: gdref Image): gdref ImageTexture =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImageTexture, "create_from_image", 2775144163)
  methodbind.ptrcall([getPtr image], gdref ImageTexture)

proc getFormat*(self: ImageTexture): Image_Format =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImageTexture, "get_format", 3847873762)
  methodbind.ptrcall(self, [], Image_Format)

proc setImage*(self: ImageTexture; image: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImageTexture, "set_image", 532598488)
  methodbind.ptrcall(self, [getPtr image], void)

proc update*(self: ImageTexture; image: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImageTexture, "update", 532598488)
  methodbind.ptrcall(self, [getPtr image], void)

proc setSizeOverride*(self: ImageTexture; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImageTexture, "set_size_override", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)
