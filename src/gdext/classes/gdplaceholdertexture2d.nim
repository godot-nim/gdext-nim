{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setSize*(self: PlaceholderTexture2D; size: Vector2): void =
  expandMethodBind(className PlaceholderTexture2D, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size])

template size*(self: PlaceholderTexture2D): untyped = self.getSize()
template `size=`*(self: PlaceholderTexture2D; value) = self.setSize(value)
