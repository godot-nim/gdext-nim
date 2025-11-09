{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

expandOnClassImported(PlaceholderTexture3D, Texture3D)

proc setSize*(self: PlaceholderTexture3D; size: Vector3i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaceholderTexture3D, "set_size", 560364750)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: PlaceholderTexture3D): Vector3i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaceholderTexture3D, "get_size", 2785653706)
  methodbind.ptrcall(self, [], Vector3i)

template size*(self: PlaceholderTexture3D): untyped = self.getSize()
template `size=`*(self: PlaceholderTexture3D; value) = self.setSize(value)
