{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ZIPPacker, RefCounted)

proc open*(self: ZIPPacker; path: String; append: ZIPPacker_ZipAppend = appendCreate): Error =
  expandMethodBind(className ZIPPacker, "open", 1936816515)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr append], addr ret)
  (addr ret).decode_result(Error)

proc setCompressionLevel*(self: ZIPPacker; compressionLevel: int32): void =
  expandMethodBind(className ZIPPacker, "set_compression_level", 1286410249)
  methodbind.ptrcall(self, [getPtr compressionLevel])

proc getCompressionLevel*(self: ZIPPacker): int32 =
  expandMethodBind(className ZIPPacker, "get_compression_level", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc startFile*(self: ZIPPacker; path: String): Error =
  expandMethodBind(className ZIPPacker, "start_file", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc writeFile*(self: ZIPPacker; data: PackedByteArray): Error =
  expandMethodBind(className ZIPPacker, "write_file", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr data], addr ret)
  (addr ret).decode_result(Error)

proc closeFile*(self: ZIPPacker): Error =
  expandMethodBind(className ZIPPacker, "close_file", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: ZIPPacker): Error =
  expandMethodBind(className ZIPPacker, "close", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

template compressionLevel*(self: ZIPPacker): untyped = self.getCompressionLevel()
template `compressionLevel=`*(self: ZIPPacker; value) = self.setCompressionLevel(value)
