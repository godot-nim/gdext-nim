{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFTexture, Resource)

proc getSrcImage*(self: GLTFTexture): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTexture, "get_src_image", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSrcImage*(self: GLTFTexture; srcImage: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTexture, "set_src_image", 1286410249)
  methodbind.ptrcall(self, [getPtr srcImage], void)

proc getSampler*(self: GLTFTexture): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTexture, "get_sampler", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSampler*(self: GLTFTexture; sampler: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFTexture, "set_sampler", 1286410249)
  methodbind.ptrcall(self, [getPtr sampler], void)

template srcImage*(self: GLTFTexture): untyped = self.getSrcImage()
template `srcImage=`*(self: GLTFTexture; value) = self.setSrcImage(value)

template sampler*(self: GLTFTexture): untyped = self.getSampler()
template `sampler=`*(self: GLTFTexture; value) = self.setSampler(value)
