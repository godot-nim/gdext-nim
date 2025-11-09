{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(Crypto, RefCounted)

proc generateRandomBytes*(self: Crypto; size: int32): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "generate_random_bytes", 47165747)
  methodbind.ptrcall(self, [getPtr size], PackedByteArray)

proc generateRsa*(self: Crypto; size: int32): gdref CryptoKey =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "generate_rsa", 1237515462)
  methodbind.ptrcall(self, [getPtr size], gdref CryptoKey)

proc generateSelfSignedCertificate*(self: Crypto; key: gdref CryptoKey; issuerName: String = newGdString("CN=myserver,O=myorganisation,C=IT"); notBefore: String = newGdString("20140101000000"); notAfter: String = newGdString("20340101000000")): gdref X509Certificate =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "generate_self_signed_certificate", 492266173)
  methodbind.ptrcall(self, [getPtr key, getPtr issuerName, getPtr notBefore, getPtr notAfter], gdref X509Certificate)

proc sign*(self: Crypto; hashType: HashingContext_HashType; hash: PackedByteArray; key: gdref CryptoKey): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "sign", 1673662703)
  methodbind.ptrcall(self, [getPtr hashType, getPtr hash, getPtr key], PackedByteArray)

proc verify*(self: Crypto; hashType: HashingContext_HashType; hash: PackedByteArray; signature: PackedByteArray; key: gdref CryptoKey): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "verify", 2805902225)
  methodbind.ptrcall(self, [getPtr hashType, getPtr hash, getPtr signature, getPtr key], bool)

proc encrypt*(self: Crypto; key: gdref CryptoKey; plaintext: PackedByteArray): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "encrypt", 2361793670)
  methodbind.ptrcall(self, [getPtr key, getPtr plaintext], PackedByteArray)

proc decrypt*(self: Crypto; key: gdref CryptoKey; ciphertext: PackedByteArray): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "decrypt", 2361793670)
  methodbind.ptrcall(self, [getPtr key, getPtr ciphertext], PackedByteArray)

proc hmacDigest*(self: Crypto; hashType: HashingContext_HashType; key: PackedByteArray; msg: PackedByteArray): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "hmac_digest", 2368951203)
  methodbind.ptrcall(self, [getPtr hashType, getPtr key, getPtr msg], PackedByteArray)

proc constantTimeCompare*(self: Crypto; trusted: PackedByteArray; received: PackedByteArray): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Crypto, "constant_time_compare", 1024142237)
  methodbind.ptrcall(self, [getPtr trusted, getPtr received], bool)
