{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc client*(_: TlsOptions; trustedChain: gdref X509Certificate = default gdref X509Certificate; commonNameOverride: String = gdstring""): gdref TlsOptions =
  expandMethodBind(className TlsOptions, "client", 3565000357)
  var `?param` = [getPtr trustedChain, getPtr commonNameOverride]
  var ret: encoded gdref TlsOptions
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TlsOptions)

proc clientUnsafe*(_: TlsOptions; trustedChain: gdref X509Certificate = default gdref X509Certificate): gdref TlsOptions =
  expandMethodBind(className TlsOptions, "client_unsafe", 2090251749)
  var `?param` = [getPtr trustedChain]
  var ret: encoded gdref TlsOptions
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TlsOptions)

proc server*(_: TlsOptions; key: gdref CryptoKey; certificate: gdref X509Certificate): gdref TlsOptions =
  expandMethodBind(className TlsOptions, "server", 36969539)
  var `?param` = [getPtr key, getPtr certificate]
  var ret: encoded gdref TlsOptions
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TlsOptions)

proc isServer*(self: TlsOptions): bool =
  expandMethodBind(className TlsOptions, "is_server", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isUnsafeClient*(self: TlsOptions): bool =
  expandMethodBind(className TlsOptions, "is_unsafe_client", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCommonNameOverride*(self: TlsOptions): String =
  expandMethodBind(className TlsOptions, "get_common_name_override", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getTrustedCaChain*(self: TlsOptions): gdref X509Certificate =
  expandMethodBind(className TlsOptions, "get_trusted_ca_chain", 1120709175)
  var ret: encoded gdref X509Certificate
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref X509Certificate)

proc getPrivateKey*(self: TlsOptions): gdref CryptoKey =
  expandMethodBind(className TlsOptions, "get_private_key", 2119971811)
  var ret: encoded gdref CryptoKey
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CryptoKey)

proc getOwnCertificate*(self: TlsOptions): gdref X509Certificate =
  expandMethodBind(className TlsOptions, "get_own_certificate", 1120709175)
  var ret: encoded gdref X509Certificate
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref X509Certificate)

const TlsOptions_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TlsOptions]): Table[string, string] = TlsOptions_vmap