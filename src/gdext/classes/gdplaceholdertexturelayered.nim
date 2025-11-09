{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

expandOnClassImported(PlaceholderTextureLayered, TextureLayered)

proc setSize*(self: PlaceholderTextureLayered; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaceholderTextureLayered, "set_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: PlaceholderTextureLayered): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaceholderTextureLayered, "get_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setLayers*(self: PlaceholderTextureLayered; layers: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PlaceholderTextureLayered, "set_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layers], void)

template size*(self: PlaceholderTextureLayered): untyped = self.getSize()
template `size=`*(self: PlaceholderTextureLayered; value) = self.setSize(value)

template layers*(self: PlaceholderTextureLayered): untyped = self.getLayers()
template `layers=`*(self: PlaceholderTextureLayered; value) = self.setLayers(value)
