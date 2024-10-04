{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getMagFilter*(self: GltfTextureSampler): int32 =
  expandMethodBind(className GltfTextureSampler, "get_mag_filter", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMagFilter*(self: GltfTextureSampler; filterMode: int32): void =
  expandMethodBind(className GltfTextureSampler, "set_mag_filter", 1286410249)
  var `?param` = [getPtr filterMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinFilter*(self: GltfTextureSampler): int32 =
  expandMethodBind(className GltfTextureSampler, "get_min_filter", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMinFilter*(self: GltfTextureSampler; filterMode: int32): void =
  expandMethodBind(className GltfTextureSampler, "set_min_filter", 1286410249)
  var `?param` = [getPtr filterMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWrapS*(self: GltfTextureSampler): int32 =
  expandMethodBind(className GltfTextureSampler, "get_wrap_s", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setWrapS*(self: GltfTextureSampler; wrapMode: int32): void =
  expandMethodBind(className GltfTextureSampler, "set_wrap_s", 1286410249)
  var `?param` = [getPtr wrapMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWrapT*(self: GltfTextureSampler): int32 =
  expandMethodBind(className GltfTextureSampler, "get_wrap_t", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setWrapT*(self: GltfTextureSampler; wrapMode: int32): void =
  expandMethodBind(className GltfTextureSampler, "set_wrap_t", 1286410249)
  var `?param` = [getPtr wrapMode]
  methodbind.ptrcall(self, addr `?param`[0])

template magFilter*(self: GltfTextureSampler): untyped = self.getMagFilter()
template `magFilter=`*(self: GltfTextureSampler; value) = self.setMagFilter(value)

template minFilter*(self: GltfTextureSampler): untyped = self.getMinFilter()
template `minFilter=`*(self: GltfTextureSampler; value) = self.setMinFilter(value)

template wrapS*(self: GltfTextureSampler): untyped = self.getWrapS()
template `wrapS=`*(self: GltfTextureSampler; value) = self.setWrapS(value)

template wrapT*(self: GltfTextureSampler): untyped = self.getWrapT()
template `wrapT=`*(self: GltfTextureSampler; value) = self.setWrapT(value)

const GltfTextureSampler_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfTextureSampler]): Table[string, string] = GltfTextureSampler_vmap