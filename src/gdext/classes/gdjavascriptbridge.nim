{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(JavaScriptBridge, Object)

proc eval*(self: JavaScriptBridge; code: String; useGlobalExecutionContext: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "eval", 218087648)
  methodbind.ptrcall(self, [getPtr code, getPtr useGlobalExecutionContext], Variant)

proc getInterface*(self: JavaScriptBridge; `interface`: String): gdref JavaScriptObject =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "get_interface", 1355533281)
  methodbind.ptrcall(self, [getPtr `interface`], gdref JavaScriptObject)

proc createCallback*(self: JavaScriptBridge; callable: Callable): gdref JavaScriptObject =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "create_callback", 422818440)
  methodbind.ptrcall(self, [getPtr callable], gdref JavaScriptObject)

proc isJsBuffer*(self: JavaScriptBridge; javascriptObject: gdref JavaScriptObject): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "is_js_buffer", 821968997)
  methodbind.ptrcall(self, [getPtr javascriptObject], bool)

proc jsBufferToPackedByteArray*(self: JavaScriptBridge; javascriptBuffer: gdref JavaScriptObject): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "js_buffer_to_packed_byte_array", 64409880)
  methodbind.ptrcall(self, [getPtr javascriptBuffer], PackedByteArray)

proc createObject*(self: JavaScriptBridge; `object`: Variant; args: varargs[Variant, variant]): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "create_object", 3093893586)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `object`]
  methodbind.call(self, `?param`, args).get(Variant)
template createObject*(self: JavaScriptBridge; `object`: String; args: varargs[Variant, variant]): Variant =
  createObject(self, variant `object`, args)

proc downloadBuffer*(self: JavaScriptBridge; buffer: PackedByteArray; name: String; mime: String = newGdString("application/octet-stream")): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "download_buffer", 3352272093)
  methodbind.ptrcall(self, [getPtr buffer, getPtr name, getPtr mime], void)

proc pwaNeedsUpdate*(self: JavaScriptBridge): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "pwa_needs_update", 36873697)
  methodbind.ptrcall(self, [], bool)

proc pwaUpdate*(self: JavaScriptBridge): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "pwa_update", 166280745)
  methodbind.ptrcall(self, [], Error)

proc forceFsSync*(self: JavaScriptBridge): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaScriptBridge, "force_fs_sync", 3218959716)
  methodbind.ptrcall(self, [], void)
