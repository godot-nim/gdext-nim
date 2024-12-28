{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getMagFilter*(self: GLTFTextureSampler): int32 =
  expandMethodBind(className GLTFTextureSampler, "get_mag_filter", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMagFilter*(self: GLTFTextureSampler; filterMode: int32): void =
  expandMethodBind(className GLTFTextureSampler, "set_mag_filter", 1286410249)
  methodbind.ptrcall(self, [getPtr filterMode])

proc getMinFilter*(self: GLTFTextureSampler): int32 =
  expandMethodBind(className GLTFTextureSampler, "get_min_filter", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMinFilter*(self: GLTFTextureSampler; filterMode: int32): void =
  expandMethodBind(className GLTFTextureSampler, "set_min_filter", 1286410249)
  methodbind.ptrcall(self, [getPtr filterMode])

proc getWrapS*(self: GLTFTextureSampler): int32 =
  expandMethodBind(className GLTFTextureSampler, "get_wrap_s", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setWrapS*(self: GLTFTextureSampler; wrapMode: int32): void =
  expandMethodBind(className GLTFTextureSampler, "set_wrap_s", 1286410249)
  methodbind.ptrcall(self, [getPtr wrapMode])

proc getWrapT*(self: GLTFTextureSampler): int32 =
  expandMethodBind(className GLTFTextureSampler, "get_wrap_t", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setWrapT*(self: GLTFTextureSampler; wrapMode: int32): void =
  expandMethodBind(className GLTFTextureSampler, "set_wrap_t", 1286410249)
  methodbind.ptrcall(self, [getPtr wrapMode])

template magFilter*(self: GLTFTextureSampler): untyped = self.getMagFilter()
template `magFilter=`*(self: GLTFTextureSampler; value) = self.setMagFilter(value)

template minFilter*(self: GLTFTextureSampler): untyped = self.getMinFilter()
template `minFilter=`*(self: GLTFTextureSampler; value) = self.setMinFilter(value)

template wrapS*(self: GLTFTextureSampler): untyped = self.getWrapS()
template `wrapS=`*(self: GLTFTextureSampler; value) = self.setWrapS(value)

template wrapT*(self: GLTFTextureSampler): untyped = self.getWrapT()
template `wrapT=`*(self: GLTFTextureSampler; value) = self.setWrapT(value)

const GLTFTextureSampler_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFTextureSampler]): Table[string, string] = GLTFTextureSampler_vmap