{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getOriginalName*(self: GltfAnimation): String =
  expandMethodBind(className GltfAnimation, "get_original_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOriginalName*(self: GltfAnimation; originalName: String): void =
  expandMethodBind(className GltfAnimation, "set_original_name", 83702148)
  var `?param` = [getPtr originalName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoop*(self: GltfAnimation): bool =
  expandMethodBind(className GltfAnimation, "get_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLoop*(self: GltfAnimation; loop: bool): void =
  expandMethodBind(className GltfAnimation, "set_loop", 2586408642)
  var `?param` = [getPtr loop]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalData*(self: GltfAnimation; extensionName: StringName): Variant =
  expandMethodBind(className GltfAnimation, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GltfAnimation; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GltfAnimation, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

template originalName*(self: GltfAnimation): untyped = self.getOriginalName()
template `originalName=`*(self: GltfAnimation; value) = self.setOriginalName(value)

template loop*(self: GltfAnimation): untyped = self.getLoop()
template `loop=`*(self: GltfAnimation; value) = self.setLoop(value)

const GltfAnimation_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfAnimation]): Table[string, string] = GltfAnimation_vmap