{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

proc setSize*(self: PlaceholderTextureLayered; size: Vector2i): void =
  expandMethodBind(className PlaceholderTextureLayered, "set_size", 1130785943)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: PlaceholderTextureLayered): Vector2i =
  expandMethodBind(className PlaceholderTextureLayered, "get_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setLayers*(self: PlaceholderTextureLayered; layers: int32): void =
  expandMethodBind(className PlaceholderTextureLayered, "set_layers", 1286410249)
  var `?param` = [getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

template size*(self: PlaceholderTextureLayered): untyped = self.getSize()
template `size=`*(self: PlaceholderTextureLayered; value) = self.setSize(value)

template layers*(self: PlaceholderTextureLayered): untyped = self.getLayers()
template `layers=`*(self: PlaceholderTextureLayered; value) = self.setLayers(value)

const PlaceholderTextureLayered_vmap =
  TextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderTextureLayered]): Table[string, string] = PlaceholderTextureLayered_vmap