{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc eval*(self: JavaScriptBridge; code: String; useGlobalExecutionContext: bool = false): Variant =
  expandMethodBind(className JavaScriptBridge, "eval", 218087648)
  var `?param` = [getPtr code, getPtr useGlobalExecutionContext]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc getInterface*(self: JavaScriptBridge; `interface`: String): gdref JavaScriptObject =
  expandMethodBind(className JavaScriptBridge, "get_interface", 1355533281)
  var `?param` = [getPtr `interface`]
  var ret: encoded gdref JavaScriptObject
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref JavaScriptObject)

proc createCallback*(self: JavaScriptBridge; callable: Callable): gdref JavaScriptObject =
  expandMethodBind(className JavaScriptBridge, "create_callback", 422818440)
  var `?param` = [getPtr callable]
  var ret: encoded gdref JavaScriptObject
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref JavaScriptObject)

proc createObject*(self: JavaScriptBridge; `object`: Variant; args: varargs[Variant]): Variant =
  expandMethodBind(className JavaScriptBridge, "create_object", 3093893586)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `object`]
  methodbind.call(self, `?param`, args).get(Variant)
template createObject*(self: JavaScriptBridge; `object`: String; args: varargs[Variant]): Variant =
  createObject(self, variant `object`, args)

proc downloadBuffer*(self: JavaScriptBridge; buffer: PackedByteArray; name: String; mime: String = gdstring"application/octet-stream"): void =
  expandMethodBind(className JavaScriptBridge, "download_buffer", 3352272093)
  var `?param` = [getPtr buffer, getPtr name, getPtr mime]
  methodbind.ptrcall(self, addr `?param`[0])

proc pwaNeedsUpdate*(self: JavaScriptBridge): bool =
  expandMethodBind(className JavaScriptBridge, "pwa_needs_update", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc pwaUpdate*(self: JavaScriptBridge): Error =
  expandMethodBind(className JavaScriptBridge, "pwa_update", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc forceFsSync*(self: JavaScriptBridge): void =
  expandMethodBind(className JavaScriptBridge, "force_fs_sync", 3218959716)
  methodbind.ptrcall(self, nil)

const JavaScriptBridge_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JavaScriptBridge]): Table[string, string] = JavaScriptBridge_vmap

proc pwaUpdateAvailable*(self: JavaScriptBridge): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pwa_update_available")
  self.emitSignal(signalname)