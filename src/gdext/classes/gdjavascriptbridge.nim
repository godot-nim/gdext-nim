{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc eval*(self: JavaScriptBridge; code: String; useGlobalExecutionContext: bool = false): Variant =
  expandMethodBind(className JavaScriptBridge, "eval", 218087648)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr code, getPtr useGlobalExecutionContext], addr ret)
  (addr ret).decode_result(Variant)

proc getInterface*(self: JavaScriptBridge; `interface`: String): gdref JavaScriptObject =
  expandMethodBind(className JavaScriptBridge, "get_interface", 1355533281)
  var ret: encoded gdref JavaScriptObject
  methodbind.ptrcall(self, [getPtr `interface`], addr ret)
  (addr ret).decode_result(gdref JavaScriptObject)

proc createCallback*(self: JavaScriptBridge; callable: Callable): gdref JavaScriptObject =
  expandMethodBind(className JavaScriptBridge, "create_callback", 422818440)
  var ret: encoded gdref JavaScriptObject
  methodbind.ptrcall(self, [getPtr callable], addr ret)
  (addr ret).decode_result(gdref JavaScriptObject)

proc isJsBuffer*(self: JavaScriptBridge; javascriptObject: gdref JavaScriptObject): bool =
  expandMethodBind(className JavaScriptBridge, "is_js_buffer", 821968997)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr javascriptObject], addr ret)
  (addr ret).decode_result(bool)

proc jsBufferToPackedByteArray*(self: JavaScriptBridge; javascriptBuffer: gdref JavaScriptObject): PackedByteArray =
  expandMethodBind(className JavaScriptBridge, "js_buffer_to_packed_byte_array", 64409880)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr javascriptBuffer], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc createObject*(self: JavaScriptBridge; `object`: Variant; args: varargs[Variant]): Variant =
  expandMethodBind(className JavaScriptBridge, "create_object", 3093893586)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `object`]
  methodbind.call(self, `?param`, args).get(Variant)
template createObject*(self: JavaScriptBridge; `object`: String; args: varargs[Variant]): Variant =
  createObject(self, variant `object`, args)

proc downloadBuffer*(self: JavaScriptBridge; buffer: PackedByteArray; name: String; mime: String = newGdString("application/octet-stream")): void =
  expandMethodBind(className JavaScriptBridge, "download_buffer", 3352272093)
  methodbind.ptrcall(self, [getPtr buffer, getPtr name, getPtr mime])

proc pwaNeedsUpdate*(self: JavaScriptBridge): bool =
  expandMethodBind(className JavaScriptBridge, "pwa_needs_update", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc pwaUpdate*(self: JavaScriptBridge): Error =
  expandMethodBind(className JavaScriptBridge, "pwa_update", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc forceFsSync*(self: JavaScriptBridge): void =
  expandMethodBind(className JavaScriptBridge, "force_fs_sync", 3218959716)
  methodbind.ptrcall(self, [])
