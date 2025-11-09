{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFTextureSampler, Resource)

proc getMagFilter*(self: GLTFTextureSampler): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTextureSampler, "get_mag_filter", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMagFilter*(self: GLTFTextureSampler; filterMode: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTextureSampler, "set_mag_filter", 1286410249)
  methodbind.ptrcall(self, [getPtr filterMode], void)

proc getMinFilter*(self: GLTFTextureSampler): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTextureSampler, "get_min_filter", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMinFilter*(self: GLTFTextureSampler; filterMode: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTextureSampler, "set_min_filter", 1286410249)
  methodbind.ptrcall(self, [getPtr filterMode], void)

proc getWrapS*(self: GLTFTextureSampler): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTextureSampler, "get_wrap_s", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setWrapS*(self: GLTFTextureSampler; wrapMode: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTextureSampler, "set_wrap_s", 1286410249)
  methodbind.ptrcall(self, [getPtr wrapMode], void)

proc getWrapT*(self: GLTFTextureSampler): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTextureSampler, "get_wrap_t", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setWrapT*(self: GLTFTextureSampler; wrapMode: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTextureSampler, "set_wrap_t", 1286410249)
  methodbind.ptrcall(self, [getPtr wrapMode], void)

template magFilter*(self: GLTFTextureSampler): untyped = self.getMagFilter()
template `magFilter=`*(self: GLTFTextureSampler; value) = self.setMagFilter(value)

template minFilter*(self: GLTFTextureSampler): untyped = self.getMinFilter()
template `minFilter=`*(self: GLTFTextureSampler; value) = self.setMinFilter(value)

template wrapS*(self: GLTFTextureSampler): untyped = self.getWrapS()
template `wrapS=`*(self: GLTFTextureSampler; value) = self.setWrapS(value)

template wrapT*(self: GLTFTextureSampler): untyped = self.getWrapT()
template `wrapT=`*(self: GLTFTextureSampler; value) = self.setWrapT(value)
