{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

proc setInputs*(self: VisualShaderNodeGroupBase; inputs: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_inputs", 83702148)
  var `?param` = [getPtr inputs]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInputs*(self: VisualShaderNodeGroupBase): String =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_inputs", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOutputs*(self: VisualShaderNodeGroupBase; outputs: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_outputs", 83702148)
  var `?param` = [getPtr outputs]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOutputs*(self: VisualShaderNodeGroupBase): String =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_outputs", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isValidPortName*(self: VisualShaderNodeGroupBase; name: String): bool =
  expandMethodBind(className VisualShaderNodeGroupBase, "is_valid_port_name", 3927539163)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addInputPort*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32; name: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "add_input_port", 2285447957)
  var `?param` = [getPtr id, getPtr `type`, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeInputPort*(self: VisualShaderNodeGroupBase; id: int32): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "remove_input_port", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInputPortCount*(self: VisualShaderNodeGroupBase): int32 =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_input_port_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc hasInputPort*(self: VisualShaderNodeGroupBase; id: int32): bool =
  expandMethodBind(className VisualShaderNodeGroupBase, "has_input_port", 1116898809)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc clearInputPorts*(self: VisualShaderNodeGroupBase): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "clear_input_ports", 3218959716)
  methodbind.ptrcall(self, nil)

proc addOutputPort*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32; name: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "add_output_port", 2285447957)
  var `?param` = [getPtr id, getPtr `type`, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeOutputPort*(self: VisualShaderNodeGroupBase; id: int32): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "remove_output_port", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOutputPortCount*(self: VisualShaderNodeGroupBase): int32 =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_output_port_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc hasOutputPort*(self: VisualShaderNodeGroupBase; id: int32): bool =
  expandMethodBind(className VisualShaderNodeGroupBase, "has_output_port", 1116898809)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc clearOutputPorts*(self: VisualShaderNodeGroupBase): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "clear_output_ports", 3218959716)
  methodbind.ptrcall(self, nil)

proc setInputPortName*(self: VisualShaderNodeGroupBase; id: int32; name: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_input_port_name", 501894301)
  var `?param` = [getPtr id, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInputPortType*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_input_port_type", 3937882851)
  var `?param` = [getPtr id, getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOutputPortName*(self: VisualShaderNodeGroupBase; id: int32; name: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_output_port_name", 501894301)
  var `?param` = [getPtr id, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOutputPortType*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_output_port_type", 3937882851)
  var `?param` = [getPtr id, getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFreeInputPortId*(self: VisualShaderNodeGroupBase): int32 =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_free_input_port_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFreeOutputPortId*(self: VisualShaderNodeGroupBase): int32 =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_free_output_port_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

const VisualShaderNodeGroupBase_vmap =
  VisualShaderNodeResizableBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeGroupBase]): Table[string, string] = VisualShaderNodeGroupBase_vmap