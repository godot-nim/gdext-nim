{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setColors*(self: ColorPalette; colors: PackedColorArray): void =
  expandMethodBind(className ColorPalette, "set_colors", 3546319833)
  methodbind.ptrcall(self, [getPtr colors])

proc getColors*(self: ColorPalette): PackedColorArray =
  expandMethodBind(className ColorPalette, "get_colors", 1392750486)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedColorArray)

template colors*(self: ColorPalette): untyped = self.getColors()
template `colors=`*(self: ColorPalette; value) = self.setColors(value)

const ColorPalette_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ColorPalette]): Table[string, string] = ColorPalette_vmap