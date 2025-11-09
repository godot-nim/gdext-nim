{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ZIPPacker, RefCounted)

proc open*(self: ZIPPacker; path: String; append: ZIPPacker_ZipAppend = appendCreate): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPPacker, "open", 1936816515)
  methodbind.ptrcall(self, [getPtr path, getPtr append], Error)

proc setCompressionLevel*(self: ZIPPacker; compressionLevel: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPPacker, "set_compression_level", 1286410249)
  methodbind.ptrcall(self, [getPtr compressionLevel], void)

proc getCompressionLevel*(self: ZIPPacker): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPPacker, "get_compression_level", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc startFile*(self: ZIPPacker; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPPacker, "start_file", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc writeFile*(self: ZIPPacker; data: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPPacker, "write_file", 680677267)
  methodbind.ptrcall(self, [getPtr data], Error)

proc closeFile*(self: ZIPPacker): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPPacker, "close_file", 166280745)
  methodbind.ptrcall(self, [], Error)

proc close*(self: ZIPPacker): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPPacker, "close", 166280745)
  methodbind.ptrcall(self, [], Error)

template compressionLevel*(self: ZIPPacker): untyped = self.getCompressionLevel()
template `compressionLevel=`*(self: ZIPPacker; value) = self.setCompressionLevel(value)
