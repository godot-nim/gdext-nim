{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(FileAccess, RefCounted)

proc open*(_: typedesc[FileAccess]; path: String; flags: FileAccess_ModeFlags): gdref FileAccess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "open", 1247358404)
  methodbind.ptrcall([getPtr path, getPtr flags], gdref FileAccess)

proc openEncrypted*(_: typedesc[FileAccess]; path: String; modeFlags: FileAccess_ModeFlags; key: PackedByteArray; iv: PackedByteArray = PackedByteArray()): gdref FileAccess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "open_encrypted", 788003459)
  methodbind.ptrcall([getPtr path, getPtr modeFlags, getPtr key, getPtr iv], gdref FileAccess)

proc openEncryptedWithPass*(_: typedesc[FileAccess]; path: String; modeFlags: FileAccess_ModeFlags; pass: String): gdref FileAccess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "open_encrypted_with_pass", 790283377)
  methodbind.ptrcall([getPtr path, getPtr modeFlags, getPtr pass], gdref FileAccess)

proc openCompressed*(_: typedesc[FileAccess]; path: String; modeFlags: FileAccess_ModeFlags; compressionMode: FileAccess_CompressionMode = compressionFastlz): gdref FileAccess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "open_compressed", 3686439335)
  methodbind.ptrcall([getPtr path, getPtr modeFlags, getPtr compressionMode], gdref FileAccess)

proc getOpenError*(_: typedesc[FileAccess]): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_open_error", 166280745)
  methodbind.ptrcall([], Error)

proc createTemp*(_: typedesc[FileAccess]; modeFlags: int32; prefix: String = newGdString(); extension: String = newGdString(); keep: bool = false): gdref FileAccess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "create_temp", 3075606245)
  methodbind.ptrcall([getPtr modeFlags, getPtr prefix, getPtr extension, getPtr keep], gdref FileAccess)

proc getFileAsBytes*(_: typedesc[FileAccess]; path: String): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_file_as_bytes", 659035735)
  methodbind.ptrcall([getPtr path], PackedByteArray)

proc getFileAsString*(_: typedesc[FileAccess]; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_file_as_string", 1703090593)
  methodbind.ptrcall([getPtr path], String)

proc resize*(self: FileAccess; length: int64): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "resize", 844576869)
  methodbind.ptrcall(self, [getPtr length], Error)

proc flush*(self: FileAccess): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "flush", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getPath*(self: FileAccess): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getPathAbsolute*(self: FileAccess): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_path_absolute", 201670096)
  methodbind.ptrcall(self, [], String)

proc isOpen*(self: FileAccess): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "is_open", 36873697)
  methodbind.ptrcall(self, [], bool)

proc seek*(self: FileAccess; position: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "seek", 1286410249)
  methodbind.ptrcall(self, [getPtr position], void)

proc seekEnd*(self: FileAccess; position: int64 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "seek_end", 1995695955)
  methodbind.ptrcall(self, [getPtr position], void)

proc getPosition*(self: FileAccess): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_position", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getLength*(self: FileAccess): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_length", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc eofReached*(self: FileAccess): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "eof_reached", 36873697)
  methodbind.ptrcall(self, [], bool)

proc get8*(self: FileAccess): uint8 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_8", 3905245786)
  methodbind.ptrcall(self, [], uint8)

proc get16*(self: FileAccess): uint16 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_16", 3905245786)
  methodbind.ptrcall(self, [], uint16)

proc get32*(self: FileAccess): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_32", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc get64*(self: FileAccess): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_64", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getHalf*(self: FileAccess): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_half", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getFloat*(self: FileAccess): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_float", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getDouble*(self: FileAccess): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_double", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getReal*(self: FileAccess): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_real", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getBuffer*(self: FileAccess; length: int64): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_buffer", 4131300905)
  methodbind.ptrcall(self, [getPtr length], PackedByteArray)

proc getLine*(self: FileAccess): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_line", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCsvLine*(self: FileAccess; delim: String = newGdString(",")): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_csv_line", 2358116058)
  methodbind.ptrcall(self, [getPtr delim], PackedStringArray)

proc getAsText*(self: FileAccess; skipCr: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_as_text", 1162154673)
  methodbind.ptrcall(self, [getPtr skipCr], String)

proc getMd5*(_: typedesc[FileAccess]; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_md5", 1703090593)
  methodbind.ptrcall([getPtr path], String)

proc getSha256*(_: typedesc[FileAccess]; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_sha256", 1703090593)
  methodbind.ptrcall([getPtr path], String)

proc isBigEndian*(self: FileAccess): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "is_big_endian", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBigEndian*(self: FileAccess; bigEndian: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "set_big_endian", 2586408642)
  methodbind.ptrcall(self, [getPtr bigEndian], void)

proc getError*(self: FileAccess): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_error", 3185525595)
  methodbind.ptrcall(self, [], Error)

proc getVar*(self: FileAccess; allowObjects: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_var", 189129690)
  methodbind.ptrcall(self, [getPtr allowObjects], Variant)

proc store8*(self: FileAccess; value: uint8): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_8", 3067735520)
  methodbind.ptrcall(self, [getPtr value], bool)

proc store16*(self: FileAccess; value: uint16): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_16", 3067735520)
  methodbind.ptrcall(self, [getPtr value], bool)

proc store32*(self: FileAccess; value: uint32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_32", 3067735520)
  methodbind.ptrcall(self, [getPtr value], bool)

proc store64*(self: FileAccess; value: uint64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_64", 3067735520)
  methodbind.ptrcall(self, [getPtr value], bool)

proc storeHalf*(self: FileAccess; value: Float): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_half", 330693286)
  methodbind.ptrcall(self, [getPtr value], bool)

proc storeFloat*(self: FileAccess; value: Float): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_float", 330693286)
  methodbind.ptrcall(self, [getPtr value], bool)

proc storeDouble*(self: FileAccess; value: float64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_double", 330693286)
  methodbind.ptrcall(self, [getPtr value], bool)

proc storeReal*(self: FileAccess; value: Float): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_real", 330693286)
  methodbind.ptrcall(self, [getPtr value], bool)

proc storeBuffer*(self: FileAccess; buffer: PackedByteArray): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_buffer", 114037665)
  methodbind.ptrcall(self, [getPtr buffer], bool)

proc storeLine*(self: FileAccess; line: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_line", 2323990056)
  methodbind.ptrcall(self, [getPtr line], bool)

proc storeCsvLine*(self: FileAccess; values: PackedStringArray; delim: String = newGdString(",")): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_csv_line", 1611473434)
  methodbind.ptrcall(self, [getPtr values, getPtr delim], bool)

proc storeString*(self: FileAccess; string: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_string", 2323990056)
  methodbind.ptrcall(self, [getPtr string], bool)

proc storeVar*(self: FileAccess; value: Variant; fullObjects: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_var", 117357437)
  methodbind.ptrcall(self, [getPtr value, getPtr fullObjects], bool)

proc storePascalString*(self: FileAccess; string: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "store_pascal_string", 2323990056)
  methodbind.ptrcall(self, [getPtr string], bool)

proc getPascalString*(self: FileAccess): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_pascal_string", 2841200299)
  methodbind.ptrcall(self, [], String)

proc close*(self: FileAccess): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "close", 3218959716)
  methodbind.ptrcall(self, [], void)

proc fileExists*(_: typedesc[FileAccess]; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "file_exists", 2323990056)
  methodbind.ptrcall([getPtr path], bool)

proc getModifiedTime*(_: typedesc[FileAccess]; file: String): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_modified_time", 1597066294)
  methodbind.ptrcall([getPtr file], uint64)

proc getAccessTime*(_: typedesc[FileAccess]; file: String): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_access_time", 1597066294)
  methodbind.ptrcall([getPtr file], uint64)

proc getSize*(_: typedesc[FileAccess]; file: String): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_size", 1597066294)
  methodbind.ptrcall([getPtr file], int64)

proc getUnixPermissions*(_: typedesc[FileAccess]; file: String): set[FileAccess_UnixPermissionFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_unix_permissions", 524341837)
  methodbind.ptrcall([getPtr file], set[FileAccess_UnixPermissionFlags])

proc setUnixPermissions*(_: typedesc[FileAccess]; file: String; permissions: set[FileAccess_UnixPermissionFlags]): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "set_unix_permissions", 846038644)
  methodbind.ptrcall([getPtr file, getPtr permissions], Error)

proc getHiddenAttribute*(_: typedesc[FileAccess]; file: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_hidden_attribute", 2323990056)
  methodbind.ptrcall([getPtr file], bool)

proc setHiddenAttribute*(_: typedesc[FileAccess]; file: String; hidden: bool): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "set_hidden_attribute", 2892558115)
  methodbind.ptrcall([getPtr file, getPtr hidden], Error)

proc setReadOnlyAttribute*(_: typedesc[FileAccess]; file: String; ro: bool): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "set_read_only_attribute", 2892558115)
  methodbind.ptrcall([getPtr file, getPtr ro], Error)

proc getReadOnlyAttribute*(_: typedesc[FileAccess]; file: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileAccess, "get_read_only_attribute", 2323990056)
  methodbind.ptrcall([getPtr file], bool)

template bigEndian*(self: FileAccess): untyped = self.isBigEndian()
template `bigEndian=`*(self: FileAccess; value) = self.setBigEndian(value)
