{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc generateRandomBytes*(self: Crypto; size: int32): PackedByteArray =
  expandMethodBind(className Crypto, "generate_random_bytes", 47165747)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr size], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc generateRsa*(self: Crypto; size: int32): gdref CryptoKey =
  expandMethodBind(className Crypto, "generate_rsa", 1237515462)
  var ret: encoded gdref CryptoKey
  methodbind.ptrcall(self, [getPtr size], addr ret)
  (addr ret).decode_result(gdref CryptoKey)

proc generateSelfSignedCertificate*(self: Crypto; key: gdref CryptoKey; issuerName: String = gdstring"CN=myserver,O=myorganisation,C=IT"; notBefore: String = gdstring"20140101000000"; notAfter: String = gdstring"20340101000000"): gdref X509Certificate =
  expandMethodBind(className Crypto, "generate_self_signed_certificate", 492266173)
  var ret: encoded gdref X509Certificate
  methodbind.ptrcall(self, [getPtr key, getPtr issuerName, getPtr notBefore, getPtr notAfter], addr ret)
  (addr ret).decode_result(gdref X509Certificate)

proc sign*(self: Crypto; hashType: HashingContext_HashType; hash: PackedByteArray; key: gdref CryptoKey): PackedByteArray =
  expandMethodBind(className Crypto, "sign", 1673662703)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr hashType, getPtr hash, getPtr key], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc verify*(self: Crypto; hashType: HashingContext_HashType; hash: PackedByteArray; signature: PackedByteArray; key: gdref CryptoKey): bool =
  expandMethodBind(className Crypto, "verify", 2805902225)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr hashType, getPtr hash, getPtr signature, getPtr key], addr ret)
  (addr ret).decode_result(bool)

proc encrypt*(self: Crypto; key: gdref CryptoKey; plaintext: PackedByteArray): PackedByteArray =
  expandMethodBind(className Crypto, "encrypt", 2361793670)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr key, getPtr plaintext], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc decrypt*(self: Crypto; key: gdref CryptoKey; ciphertext: PackedByteArray): PackedByteArray =
  expandMethodBind(className Crypto, "decrypt", 2361793670)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr key, getPtr ciphertext], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc hmacDigest*(self: Crypto; hashType: HashingContext_HashType; key: PackedByteArray; msg: PackedByteArray): PackedByteArray =
  expandMethodBind(className Crypto, "hmac_digest", 2368951203)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr hashType, getPtr key, getPtr msg], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc constantTimeCompare*(self: Crypto; trusted: PackedByteArray; received: PackedByteArray): bool =
  expandMethodBind(className Crypto, "constant_time_compare", 1024142237)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr trusted, getPtr received], addr ret)
  (addr ret).decode_result(bool)

const Crypto_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Crypto]): Table[string, string] = Crypto_vmap