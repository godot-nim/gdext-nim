{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

proc setSize*(self: PlaceholderTexture3D; size: Vector3i): void =
  expandMethodBind(className PlaceholderTexture3D, "set_size", 560364750)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: PlaceholderTexture3D): Vector3i =
  expandMethodBind(className PlaceholderTexture3D, "get_size", 2785653706)
  var ret: encoded Vector3i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3i)

template size*(self: PlaceholderTexture3D): untyped = self.getSize()
template `size=`*(self: PlaceholderTexture3D; value) = self.setSize(value)

const PlaceholderTexture3D_vmap =
  Texture3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderTexture3D]): Table[string, string] = PlaceholderTexture3D_vmap