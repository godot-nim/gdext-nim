{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(TLSOptions, RefCounted)

proc client*(_: typedesc[TLSOptions]; trustedChain: gdref X509Certificate = default gdref X509Certificate; commonNameOverride: String = newGdString()): gdref TLSOptions =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "client", 3565000357)
  methodbind.ptrcall([getPtr trustedChain, getPtr commonNameOverride], gdref TLSOptions)

proc clientUnsafe*(_: typedesc[TLSOptions]; trustedChain: gdref X509Certificate = default gdref X509Certificate): gdref TLSOptions =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "client_unsafe", 2090251749)
  methodbind.ptrcall([getPtr trustedChain], gdref TLSOptions)

proc server*(_: typedesc[TLSOptions]; key: gdref CryptoKey; certificate: gdref X509Certificate): gdref TLSOptions =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "server", 36969539)
  methodbind.ptrcall([getPtr key, getPtr certificate], gdref TLSOptions)

proc isServer*(self: TLSOptions): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "is_server", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isUnsafeClient*(self: TLSOptions): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "is_unsafe_client", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getCommonNameOverride*(self: TLSOptions): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "get_common_name_override", 201670096)
  methodbind.ptrcall(self, [], String)

proc getTrustedCaChain*(self: TLSOptions): gdref X509Certificate =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "get_trusted_ca_chain", 1120709175)
  methodbind.ptrcall(self, [], gdref X509Certificate)

proc getPrivateKey*(self: TLSOptions): gdref CryptoKey =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "get_private_key", 2119971811)
  methodbind.ptrcall(self, [], gdref CryptoKey)

proc getOwnCertificate*(self: TLSOptions): gdref X509Certificate =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TLSOptions, "get_own_certificate", 1120709175)
  methodbind.ptrcall(self, [], gdref X509Certificate)
