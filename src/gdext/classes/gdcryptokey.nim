{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(CryptoKey, Resource)

proc save*(self: CryptoKey; path: String; publicOnly: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CryptoKey, "save", 885841341)
  methodbind.ptrcall(self, [getPtr path, getPtr publicOnly], Error)

proc load*(self: CryptoKey; path: String; publicOnly: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CryptoKey, "load", 885841341)
  methodbind.ptrcall(self, [getPtr path, getPtr publicOnly], Error)

proc isPublicOnly*(self: CryptoKey): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CryptoKey, "is_public_only", 36873697)
  methodbind.ptrcall(self, [], bool)

proc saveToString*(self: CryptoKey; publicOnly: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CryptoKey, "save_to_string", 32795936)
  methodbind.ptrcall(self, [getPtr publicOnly], String)

proc loadFromString*(self: CryptoKey; stringKey: String; publicOnly: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CryptoKey, "load_from_string", 885841341)
  methodbind.ptrcall(self, [getPtr stringKey, getPtr publicOnly], Error)
