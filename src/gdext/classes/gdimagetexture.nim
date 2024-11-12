{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc createFromImage*(_: typedesc[ImageTexture]; image: gdref Image): gdref ImageTexture =
  expandMethodBind(className ImageTexture, "create_from_image", 2775144163)
  var `?param` = [getPtr image]
  var ret: encoded gdref ImageTexture
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref ImageTexture)

proc getFormat*(self: ImageTexture): Image_Format =
  expandMethodBind(className ImageTexture, "get_format", 3847873762)
  var ret: encoded Image_Format
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Image_Format)

proc setImage*(self: ImageTexture; image: gdref Image): void =
  expandMethodBind(className ImageTexture, "set_image", 532598488)
  var `?param` = [getPtr image]
  methodbind.ptrcall(self, addr `?param`[0])

proc update*(self: ImageTexture; image: gdref Image): void =
  expandMethodBind(className ImageTexture, "update", 532598488)
  var `?param` = [getPtr image]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSizeOverride*(self: ImageTexture; size: Vector2i): void =
  expandMethodBind(className ImageTexture, "set_size_override", 1130785943)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

const ImageTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImageTexture]): Table[string, string] = ImageTexture_vmap