{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc load*(self: CompressedTexture2D; path: String): Error =
  expandMethodBind(className CompressedTexture2D, "load", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc getLoadPath*(self: CompressedTexture2D): String =
  expandMethodBind(className CompressedTexture2D, "get_load_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template loadPath*(self: CompressedTexture2D): untyped = self.getLoadPath()
template `loadPath=`*(self: CompressedTexture2D; value) = self.load(value)
