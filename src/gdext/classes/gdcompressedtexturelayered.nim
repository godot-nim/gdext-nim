{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

proc load*(self: CompressedTextureLayered; path: String): Error =
  expandMethodBind(className CompressedTextureLayered, "load", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc getLoadPath*(self: CompressedTextureLayered): String =
  expandMethodBind(className CompressedTextureLayered, "get_load_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template loadPath*(self: CompressedTextureLayered): untyped = self.getLoadPath()
template `loadPath=`*(self: CompressedTextureLayered; value) = self.load(value)

const CompressedTextureLayered_vmap =
  TextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CompressedTextureLayered]): Table[string, string] = CompressedTextureLayered_vmap