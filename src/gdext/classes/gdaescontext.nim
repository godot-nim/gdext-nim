{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc start*(self: AesContext; mode: AesContext_Mode; key: PackedByteArray; iv: PackedByteArray = PackedByteArray()): Error =
  ##Start the AES context in the given mode. A key of either 16 or 32 bytes must always be provided, while an
  ##iv (initialization vector) of exactly 16 bytes, is only needed when mode is either MODE_CBC_ENCRYPT or
  ##MODE_CBC_DECRYPT.
  expandMethodBind(className AesContext, "start", 3122411423)
  var `?param` = [getPtr mode, getPtr key, getPtr iv]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc update*(self: AesContext; src: PackedByteArray): PackedByteArray =
  ##Run the desired operation for this AES context. Will return a PackedByteArray containing the result of
  ##encrypting (or decrypting) the given src. See start for mode of operation.
  ##
  ##Note: The size of src must be a multiple of 16. Apply some padding if needed.
  expandMethodBind(className AesContext, "update", 527836100)
  var `?param` = [getPtr src]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getIvState*(self: AesContext): PackedByteArray =
  ##Get the current IV state for this context (IV gets updated when calling update). You normally don't need this
  ##function.
  ##
  ##Note: This function only makes sense when the context is started with MODE_CBC_ENCRYPT or MODE_CBC_DECRYPT.
  expandMethodBind(className AesContext, "get_iv_state", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc finish*(self: AesContext): void =
  ##Close this AES context so it can be started again. See start.
  expandMethodBind(className AesContext, "finish", 3218959716)
  methodbind.ptrcall(self, nil)

const AesContext_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AesContext]): Table[string, string] = AesContext_vmap