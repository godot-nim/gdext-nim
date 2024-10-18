{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setSize*(self: PlaceholderTexture2D; size: Vector2): void =
  expandMethodBind(className PlaceholderTexture2D, "set_size", 743155724)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

template size*(self: PlaceholderTexture2D): untyped = self.getSize()
template `size=`*(self: PlaceholderTexture2D; value) = self.setSize(value)

const PlaceholderTexture2D_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderTexture2D]): Table[string, string] = PlaceholderTexture2D_vmap