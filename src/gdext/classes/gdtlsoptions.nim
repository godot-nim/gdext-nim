{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc client*(_: typedesc[TLSOptions]; trustedChain: gdref X509Certificate = default gdref X509Certificate; commonNameOverride: String = gdstring""): gdref TLSOptions =
  expandMethodBind(className TLSOptions, "client", 3565000357)
  var `?param` = [getPtr trustedChain, getPtr commonNameOverride]
  var ret: encoded gdref TLSOptions
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TLSOptions)

proc clientUnsafe*(_: typedesc[TLSOptions]; trustedChain: gdref X509Certificate = default gdref X509Certificate): gdref TLSOptions =
  expandMethodBind(className TLSOptions, "client_unsafe", 2090251749)
  var `?param` = [getPtr trustedChain]
  var ret: encoded gdref TLSOptions
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TLSOptions)

proc server*(_: typedesc[TLSOptions]; key: gdref CryptoKey; certificate: gdref X509Certificate): gdref TLSOptions =
  expandMethodBind(className TLSOptions, "server", 36969539)
  var `?param` = [getPtr key, getPtr certificate]
  var ret: encoded gdref TLSOptions
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TLSOptions)

proc isServer*(self: TLSOptions): bool =
  expandMethodBind(className TLSOptions, "is_server", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isUnsafeClient*(self: TLSOptions): bool =
  expandMethodBind(className TLSOptions, "is_unsafe_client", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCommonNameOverride*(self: TLSOptions): String =
  expandMethodBind(className TLSOptions, "get_common_name_override", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getTrustedCaChain*(self: TLSOptions): gdref X509Certificate =
  expandMethodBind(className TLSOptions, "get_trusted_ca_chain", 1120709175)
  var ret: encoded gdref X509Certificate
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref X509Certificate)

proc getPrivateKey*(self: TLSOptions): gdref CryptoKey =
  expandMethodBind(className TLSOptions, "get_private_key", 2119971811)
  var ret: encoded gdref CryptoKey
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CryptoKey)

proc getOwnCertificate*(self: TLSOptions): gdref X509Certificate =
  expandMethodBind(className TLSOptions, "get_own_certificate", 1120709175)
  var ret: encoded gdref X509Certificate
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref X509Certificate)

const TLSOptions_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TLSOptions]): Table[string, string] = TLSOptions_vmap