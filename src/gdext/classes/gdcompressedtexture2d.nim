{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(CompressedTexture2D, Texture2D)

proc load*(self: CompressedTexture2D; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompressedTexture2D, "load", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc getLoadPath*(self: CompressedTexture2D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompressedTexture2D, "get_load_path", 201670096)
  methodbind.ptrcall(self, [], String)

template loadPath*(self: CompressedTexture2D): untyped = self.getLoadPath()
template `loadPath=`*(self: CompressedTexture2D; value) = self.load(value)
