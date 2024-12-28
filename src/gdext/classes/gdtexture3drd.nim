{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

proc setTextureRdRid*(self: Texture3DRD; textureRdRid: RID): void =
  expandMethodBind(className Texture3DRD, "set_texture_rd_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr textureRdRid])

proc getTextureRdRid*(self: Texture3DRD): RID =
  expandMethodBind(className Texture3DRD, "get_texture_rd_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

template textureRdRid*(self: Texture3DRD): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: Texture3DRD; value) = self.setTextureRdRid(value)

const Texture3DRD_vmap =
  Texture3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture3DRD]): Table[string, string] = Texture3DRD_vmap