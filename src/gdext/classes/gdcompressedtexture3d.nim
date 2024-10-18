{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

proc load*(self: CompressedTexture3D; path: String): Error =
  expandMethodBind(className CompressedTexture3D, "load", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getLoadPath*(self: CompressedTexture3D): String =
  expandMethodBind(className CompressedTexture3D, "get_load_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template loadPath*(self: CompressedTexture3D): untyped = self.getLoadPath()
template `loadPath=`*(self: CompressedTexture3D; value) = self.load(value)

const CompressedTexture3D_vmap =
  Texture3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CompressedTexture3D]): Table[string, string] = CompressedTexture3D_vmap