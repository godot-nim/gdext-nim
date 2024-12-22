{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getOriginalName*(self: GLTFAnimation): String =
  expandMethodBind(className GLTFAnimation, "get_original_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOriginalName*(self: GLTFAnimation; originalName: String): void =
  expandMethodBind(className GLTFAnimation, "set_original_name", 83702148)
  var `?param` = [getPtr originalName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoop*(self: GLTFAnimation): bool =
  expandMethodBind(className GLTFAnimation, "get_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLoop*(self: GLTFAnimation; loop: bool): void =
  expandMethodBind(className GLTFAnimation, "set_loop", 2586408642)
  var `?param` = [getPtr loop]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalData*(self: GLTFAnimation; extensionName: StringName): Variant =
  expandMethodBind(className GLTFAnimation, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GLTFAnimation; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GLTFAnimation, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

template originalName*(self: GLTFAnimation): untyped = self.getOriginalName()
template `originalName=`*(self: GLTFAnimation; value) = self.setOriginalName(value)

template loop*(self: GLTFAnimation): untyped = self.getLoop()
template `loop=`*(self: GLTFAnimation; value) = self.setLoop(value)

const GLTFAnimation_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFAnimation]): Table[string, string] = GLTFAnimation_vmap