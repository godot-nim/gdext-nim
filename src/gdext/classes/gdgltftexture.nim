{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getSrcImage*(self: GLTFTexture): int32 =
  expandMethodBind(className GLTFTexture, "get_src_image", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSrcImage*(self: GLTFTexture; srcImage: int32): void =
  expandMethodBind(className GLTFTexture, "set_src_image", 1286410249)
  methodbind.ptrcall(self, [getPtr srcImage])

proc getSampler*(self: GLTFTexture): int32 =
  expandMethodBind(className GLTFTexture, "get_sampler", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSampler*(self: GLTFTexture; sampler: int32): void =
  expandMethodBind(className GLTFTexture, "set_sampler", 1286410249)
  methodbind.ptrcall(self, [getPtr sampler])

template srcImage*(self: GLTFTexture): untyped = self.getSrcImage()
template `srcImage=`*(self: GLTFTexture; value) = self.setSrcImage(value)

template sampler*(self: GLTFTexture): untyped = self.getSampler()
template `sampler=`*(self: GLTFTexture; value) = self.setSampler(value)

const GLTFTexture_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFTexture]): Table[string, string] = GLTFTexture_vmap