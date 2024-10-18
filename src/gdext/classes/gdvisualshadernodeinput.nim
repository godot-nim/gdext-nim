{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setInputName*(self: VisualShaderNodeInput; name: String): void =
  expandMethodBind(className VisualShaderNodeInput, "set_input_name", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInputName*(self: VisualShaderNodeInput): String =
  expandMethodBind(className VisualShaderNodeInput, "get_input_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getInputRealName*(self: VisualShaderNodeInput): String =
  expandMethodBind(className VisualShaderNodeInput, "get_input_real_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template inputName*(self: VisualShaderNodeInput): untyped = self.getInputName()
template `inputName=`*(self: VisualShaderNodeInput; value) = self.setInputName(value)

const VisualShaderNodeInput_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeInput]): Table[string, string] = VisualShaderNodeInput_vmap

proc inputTypeChanged*(self: VisualShaderNodeInput): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_type_changed")
  self.emitSignal(signalname)