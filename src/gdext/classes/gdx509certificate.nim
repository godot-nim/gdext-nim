{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc save*(self: X509Certificate; path: String): Error =
  expandMethodBind(className X509Certificate, "save", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc load*(self: X509Certificate; path: String): Error =
  expandMethodBind(className X509Certificate, "load", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc saveToString*(self: X509Certificate): String =
  expandMethodBind(className X509Certificate, "save_to_string", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc loadFromString*(self: X509Certificate; string: String): Error =
  expandMethodBind(className X509Certificate, "load_from_string", 166001499)
  var `?param` = [getPtr string]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

const X509Certificate_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[X509Certificate]): Table[string, string] = X509Certificate_vmap