{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

expandOnClassImported(CompressedTextureLayered, TextureLayered)

proc load*(self: CompressedTextureLayered; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompressedTextureLayered, "load", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc getLoadPath*(self: CompressedTextureLayered): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompressedTextureLayered, "get_load_path", 201670096)
  methodbind.ptrcall(self, [], String)

template loadPath*(self: CompressedTextureLayered): untyped = self.getLoadPath()
template `loadPath=`*(self: CompressedTextureLayered; value) = self.load(value)
