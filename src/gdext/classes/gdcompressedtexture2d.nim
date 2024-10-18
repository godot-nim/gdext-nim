{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc load*(self: CompressedTexture2D; path: String): Error =
  expandMethodBind(className CompressedTexture2D, "load", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getLoadPath*(self: CompressedTexture2D): String =
  expandMethodBind(className CompressedTexture2D, "get_load_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template loadPath*(self: CompressedTexture2D): untyped = self.getLoadPath()
template `loadPath=`*(self: CompressedTexture2D; value) = self.load(value)

const CompressedTexture2D_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CompressedTexture2D]): Table[string, string] = CompressedTexture2D_vmap