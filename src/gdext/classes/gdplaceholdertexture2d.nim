{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(PlaceholderTexture2D, Texture2D)

proc setSize*(self: PlaceholderTexture2D; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaceholderTexture2D, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

template size*(self: PlaceholderTexture2D): untyped = self.getSize()
template `size=`*(self: PlaceholderTexture2D; value) = self.setSize(value)
