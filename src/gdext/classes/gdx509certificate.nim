{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(X509Certificate, Resource)

proc save*(self: X509Certificate; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className X509Certificate, "save", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc load*(self: X509Certificate; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className X509Certificate, "load", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc saveToString*(self: X509Certificate): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className X509Certificate, "save_to_string", 2841200299)
  methodbind.ptrcall(self, [], String)

proc loadFromString*(self: X509Certificate; string: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className X509Certificate, "load_from_string", 166001499)
  methodbind.ptrcall(self, [getPtr string], Error)
