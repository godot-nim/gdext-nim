{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc save*(self: CryptoKey; path: String; publicOnly: bool = false): Error =
  expandMethodBind(className CryptoKey, "save", 885841341)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr publicOnly], addr ret)
  (addr ret).decode_result(Error)

proc load*(self: CryptoKey; path: String; publicOnly: bool = false): Error =
  expandMethodBind(className CryptoKey, "load", 885841341)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr publicOnly], addr ret)
  (addr ret).decode_result(Error)

proc isPublicOnly*(self: CryptoKey): bool =
  expandMethodBind(className CryptoKey, "is_public_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc saveToString*(self: CryptoKey; publicOnly: bool = false): String =
  expandMethodBind(className CryptoKey, "save_to_string", 32795936)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr publicOnly], addr ret)
  (addr ret).decode_result(String)

proc loadFromString*(self: CryptoKey; stringKey: String; publicOnly: bool = false): Error =
  expandMethodBind(className CryptoKey, "load_from_string", 885841341)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr stringKey, getPtr publicOnly], addr ret)
  (addr ret).decode_result(Error)

const CryptoKey_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CryptoKey]): Table[string, string] = CryptoKey_vmap