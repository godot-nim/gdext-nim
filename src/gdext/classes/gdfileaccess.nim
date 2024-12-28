{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc open*(_: typedesc[FileAccess]; path: String; flags: FileAccess_ModeFlags): gdref FileAccess =
  expandMethodBind(className FileAccess, "open", 1247358404)
  var ret: encoded gdref FileAccess
  methodbind.ptrcall([getPtr path, getPtr flags], addr ret)
  (addr ret).decode_result(gdref FileAccess)

proc openEncrypted*(_: typedesc[FileAccess]; path: String; modeFlags: FileAccess_ModeFlags; key: PackedByteArray): gdref FileAccess =
  expandMethodBind(className FileAccess, "open_encrypted", 1482131466)
  var ret: encoded gdref FileAccess
  methodbind.ptrcall([getPtr path, getPtr modeFlags, getPtr key], addr ret)
  (addr ret).decode_result(gdref FileAccess)

proc openEncryptedWithPass*(_: typedesc[FileAccess]; path: String; modeFlags: FileAccess_ModeFlags; pass: String): gdref FileAccess =
  expandMethodBind(className FileAccess, "open_encrypted_with_pass", 790283377)
  var ret: encoded gdref FileAccess
  methodbind.ptrcall([getPtr path, getPtr modeFlags, getPtr pass], addr ret)
  (addr ret).decode_result(gdref FileAccess)

proc openCompressed*(_: typedesc[FileAccess]; path: String; modeFlags: FileAccess_ModeFlags; compressionMode: FileAccess_CompressionMode = compressionFastlz): gdref FileAccess =
  expandMethodBind(className FileAccess, "open_compressed", 3686439335)
  var ret: encoded gdref FileAccess
  methodbind.ptrcall([getPtr path, getPtr modeFlags, getPtr compressionMode], addr ret)
  (addr ret).decode_result(gdref FileAccess)

proc getOpenError*(_: typedesc[FileAccess]): Error =
  expandMethodBind(className FileAccess, "get_open_error", 166280745)
  var ret: encoded Error
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(Error)

proc getFileAsBytes*(_: typedesc[FileAccess]; path: String): PackedByteArray =
  expandMethodBind(className FileAccess, "get_file_as_bytes", 659035735)
  var ret: encoded PackedByteArray
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getFileAsString*(_: typedesc[FileAccess]; path: String): String =
  expandMethodBind(className FileAccess, "get_file_as_string", 1703090593)
  var ret: encoded String
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(String)

proc resize*(self: FileAccess; length: int64): Error =
  expandMethodBind(className FileAccess, "resize", 844576869)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr length], addr ret)
  (addr ret).decode_result(Error)

proc flush*(self: FileAccess): void =
  expandMethodBind(className FileAccess, "flush", 3218959716)
  methodbind.ptrcall(self, [])

proc getPath*(self: FileAccess): String =
  expandMethodBind(className FileAccess, "get_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getPathAbsolute*(self: FileAccess): String =
  expandMethodBind(className FileAccess, "get_path_absolute", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isOpen*(self: FileAccess): bool =
  expandMethodBind(className FileAccess, "is_open", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc seek*(self: FileAccess; position: uint64): void =
  expandMethodBind(className FileAccess, "seek", 1286410249)
  methodbind.ptrcall(self, [getPtr position])

proc seekEnd*(self: FileAccess; position: int64 = 0): void =
  expandMethodBind(className FileAccess, "seek_end", 1995695955)
  methodbind.ptrcall(self, [getPtr position])

proc getPosition*(self: FileAccess): uint64 =
  expandMethodBind(className FileAccess, "get_position", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getLength*(self: FileAccess): uint64 =
  expandMethodBind(className FileAccess, "get_length", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc eofReached*(self: FileAccess): bool =
  expandMethodBind(className FileAccess, "eof_reached", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc get8*(self: FileAccess): uint8 =
  expandMethodBind(className FileAccess, "get_8", 3905245786)
  var ret: encoded uint8
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint8)

proc get16*(self: FileAccess): uint16 =
  expandMethodBind(className FileAccess, "get_16", 3905245786)
  var ret: encoded uint16
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint16)

proc get32*(self: FileAccess): uint32 =
  expandMethodBind(className FileAccess, "get_32", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc get64*(self: FileAccess): uint64 =
  expandMethodBind(className FileAccess, "get_64", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getFloat*(self: FileAccess): Float =
  expandMethodBind(className FileAccess, "get_float", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getDouble*(self: FileAccess): float64 =
  expandMethodBind(className FileAccess, "get_double", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getReal*(self: FileAccess): Float =
  expandMethodBind(className FileAccess, "get_real", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getBuffer*(self: FileAccess; length: int64): PackedByteArray =
  expandMethodBind(className FileAccess, "get_buffer", 4131300905)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr length], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getLine*(self: FileAccess): String =
  expandMethodBind(className FileAccess, "get_line", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getCsvLine*(self: FileAccess; delim: String = gdstring","): PackedStringArray =
  expandMethodBind(className FileAccess, "get_csv_line", 2358116058)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr delim], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getAsText*(self: FileAccess; skipCr: bool = false): String =
  expandMethodBind(className FileAccess, "get_as_text", 1162154673)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr skipCr], addr ret)
  (addr ret).decode_result(String)

proc getMd5*(_: typedesc[FileAccess]; path: String): String =
  expandMethodBind(className FileAccess, "get_md5", 1703090593)
  var ret: encoded String
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(String)

proc getSha256*(_: typedesc[FileAccess]; path: String): String =
  expandMethodBind(className FileAccess, "get_sha256", 1703090593)
  var ret: encoded String
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(String)

proc isBigEndian*(self: FileAccess): bool =
  expandMethodBind(className FileAccess, "is_big_endian", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setBigEndian*(self: FileAccess; bigEndian: bool): void =
  expandMethodBind(className FileAccess, "set_big_endian", 2586408642)
  methodbind.ptrcall(self, [getPtr bigEndian])

proc getError*(self: FileAccess): Error =
  expandMethodBind(className FileAccess, "get_error", 3185525595)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc getVar*(self: FileAccess; allowObjects: bool = false): Variant =
  expandMethodBind(className FileAccess, "get_var", 189129690)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr allowObjects], addr ret)
  (addr ret).decode_result(Variant)

proc store8*(self: FileAccess; value: uint8): void =
  expandMethodBind(className FileAccess, "store_8", 1286410249)
  methodbind.ptrcall(self, [getPtr value])

proc store16*(self: FileAccess; value: uint16): void =
  expandMethodBind(className FileAccess, "store_16", 1286410249)
  methodbind.ptrcall(self, [getPtr value])

proc store32*(self: FileAccess; value: uint32): void =
  expandMethodBind(className FileAccess, "store_32", 1286410249)
  methodbind.ptrcall(self, [getPtr value])

proc store64*(self: FileAccess; value: uint64): void =
  expandMethodBind(className FileAccess, "store_64", 1286410249)
  methodbind.ptrcall(self, [getPtr value])

proc storeFloat*(self: FileAccess; value: Float): void =
  expandMethodBind(className FileAccess, "store_float", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc storeDouble*(self: FileAccess; value: float64): void =
  expandMethodBind(className FileAccess, "store_double", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc storeReal*(self: FileAccess; value: Float): void =
  expandMethodBind(className FileAccess, "store_real", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc storeBuffer*(self: FileAccess; buffer: PackedByteArray): void =
  expandMethodBind(className FileAccess, "store_buffer", 2971499966)
  methodbind.ptrcall(self, [getPtr buffer])

proc storeLine*(self: FileAccess; line: String): void =
  expandMethodBind(className FileAccess, "store_line", 83702148)
  methodbind.ptrcall(self, [getPtr line])

proc storeCsvLine*(self: FileAccess; values: PackedStringArray; delim: String = gdstring","): void =
  expandMethodBind(className FileAccess, "store_csv_line", 2173791505)
  methodbind.ptrcall(self, [getPtr values, getPtr delim])

proc storeString*(self: FileAccess; string: String): void =
  expandMethodBind(className FileAccess, "store_string", 83702148)
  methodbind.ptrcall(self, [getPtr string])

proc storeVar*(self: FileAccess; value: Variant; fullObjects: bool = false): void =
  expandMethodBind(className FileAccess, "store_var", 738511890)
  methodbind.ptrcall(self, [getPtr value, getPtr fullObjects])

proc storePascalString*(self: FileAccess; string: String): void =
  expandMethodBind(className FileAccess, "store_pascal_string", 83702148)
  methodbind.ptrcall(self, [getPtr string])

proc getPascalString*(self: FileAccess): String =
  expandMethodBind(className FileAccess, "get_pascal_string", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc close*(self: FileAccess): void =
  expandMethodBind(className FileAccess, "close", 3218959716)
  methodbind.ptrcall(self, [])

proc fileExists*(_: typedesc[FileAccess]; path: String): bool =
  expandMethodBind(className FileAccess, "file_exists", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc getModifiedTime*(_: typedesc[FileAccess]; file: String): uint64 =
  expandMethodBind(className FileAccess, "get_modified_time", 1597066294)
  var ret: encoded uint64
  methodbind.ptrcall([getPtr file], addr ret)
  (addr ret).decode_result(uint64)

proc getUnixPermissions*(_: typedesc[FileAccess]; file: String): set[FileAccess_UnixPermissionFlags] =
  expandMethodBind(className FileAccess, "get_unix_permissions", 524341837)
  var ret: encoded set[FileAccess_UnixPermissionFlags]
  methodbind.ptrcall([getPtr file], addr ret)
  (addr ret).decode_result(set[FileAccess_UnixPermissionFlags])

proc setUnixPermissions*(_: typedesc[FileAccess]; file: String; permissions: set[FileAccess_UnixPermissionFlags]): Error =
  expandMethodBind(className FileAccess, "set_unix_permissions", 846038644)
  var ret: encoded Error
  methodbind.ptrcall([getPtr file, getPtr permissions], addr ret)
  (addr ret).decode_result(Error)

proc getHiddenAttribute*(_: typedesc[FileAccess]; file: String): bool =
  expandMethodBind(className FileAccess, "get_hidden_attribute", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall([getPtr file], addr ret)
  (addr ret).decode_result(bool)

proc setHiddenAttribute*(_: typedesc[FileAccess]; file: String; hidden: bool): Error =
  expandMethodBind(className FileAccess, "set_hidden_attribute", 2892558115)
  var ret: encoded Error
  methodbind.ptrcall([getPtr file, getPtr hidden], addr ret)
  (addr ret).decode_result(Error)

proc setReadOnlyAttribute*(_: typedesc[FileAccess]; file: String; ro: bool): Error =
  expandMethodBind(className FileAccess, "set_read_only_attribute", 2892558115)
  var ret: encoded Error
  methodbind.ptrcall([getPtr file, getPtr ro], addr ret)
  (addr ret).decode_result(Error)

proc getReadOnlyAttribute*(_: typedesc[FileAccess]; file: String): bool =
  expandMethodBind(className FileAccess, "get_read_only_attribute", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall([getPtr file], addr ret)
  (addr ret).decode_result(bool)

template bigEndian*(self: FileAccess): untyped = self.isBigEndian()
template `bigEndian=`*(self: FileAccess; value) = self.setBigEndian(value)

const FileAccess_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FileAccess]): Table[string, string] = FileAccess_vmap