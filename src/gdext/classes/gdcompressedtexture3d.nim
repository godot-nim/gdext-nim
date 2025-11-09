{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

expandOnClassImported(CompressedTexture3D, Texture3D)

proc load*(self: CompressedTexture3D; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompressedTexture3D, "load", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc getLoadPath*(self: CompressedTexture3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompressedTexture3D, "get_load_path", 201670096)
  methodbind.ptrcall(self, [], String)

template loadPath*(self: CompressedTexture3D): untyped = self.getLoadPath()
template `loadPath=`*(self: CompressedTexture3D; value) = self.load(value)
