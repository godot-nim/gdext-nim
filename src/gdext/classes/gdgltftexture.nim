{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getSrcImage*(self: GltfTexture): int32 =
  expandMethodBind(className GltfTexture, "get_src_image", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSrcImage*(self: GltfTexture; srcImage: int32): void =
  expandMethodBind(className GltfTexture, "set_src_image", 1286410249)
  var `?param` = [getPtr srcImage]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSampler*(self: GltfTexture): int32 =
  expandMethodBind(className GltfTexture, "get_sampler", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSampler*(self: GltfTexture; sampler: int32): void =
  expandMethodBind(className GltfTexture, "set_sampler", 1286410249)
  var `?param` = [getPtr sampler]
  methodbind.ptrcall(self, addr `?param`[0])

template srcImage*(self: GltfTexture): untyped = self.getSrcImage()
template `srcImage=`*(self: GltfTexture; value) = self.setSrcImage(value)

template sampler*(self: GltfTexture): untyped = self.getSampler()
template `sampler=`*(self: GltfTexture; value) = self.setSampler(value)

const GltfTexture_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfTexture]): Table[string, string] = GltfTexture_vmap