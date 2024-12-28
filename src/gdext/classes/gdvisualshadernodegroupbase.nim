{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

proc setInputs*(self: VisualShaderNodeGroupBase; inputs: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_inputs", 83702148)
  methodbind.ptrcall(self, [getPtr inputs])

proc getInputs*(self: VisualShaderNodeGroupBase): String =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_inputs", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setOutputs*(self: VisualShaderNodeGroupBase; outputs: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_outputs", 83702148)
  methodbind.ptrcall(self, [getPtr outputs])

proc getOutputs*(self: VisualShaderNodeGroupBase): String =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_outputs", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isValidPortName*(self: VisualShaderNodeGroupBase; name: String): bool =
  expandMethodBind(className VisualShaderNodeGroupBase, "is_valid_port_name", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc addInputPort*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32; name: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "add_input_port", 2285447957)
  methodbind.ptrcall(self, [getPtr id, getPtr `type`, getPtr name])

proc removeInputPort*(self: VisualShaderNodeGroupBase; id: int32): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "remove_input_port", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc getInputPortCount*(self: VisualShaderNodeGroupBase): int32 =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_input_port_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasInputPort*(self: VisualShaderNodeGroupBase; id: int32): bool =
  expandMethodBind(className VisualShaderNodeGroupBase, "has_input_port", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(bool)

proc clearInputPorts*(self: VisualShaderNodeGroupBase): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "clear_input_ports", 3218959716)
  methodbind.ptrcall(self, [])

proc addOutputPort*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32; name: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "add_output_port", 2285447957)
  methodbind.ptrcall(self, [getPtr id, getPtr `type`, getPtr name])

proc removeOutputPort*(self: VisualShaderNodeGroupBase; id: int32): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "remove_output_port", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc getOutputPortCount*(self: VisualShaderNodeGroupBase): int32 =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_output_port_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasOutputPort*(self: VisualShaderNodeGroupBase; id: int32): bool =
  expandMethodBind(className VisualShaderNodeGroupBase, "has_output_port", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(bool)

proc clearOutputPorts*(self: VisualShaderNodeGroupBase): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "clear_output_ports", 3218959716)
  methodbind.ptrcall(self, [])

proc setInputPortName*(self: VisualShaderNodeGroupBase; id: int32; name: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_input_port_name", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr name])

proc setInputPortType*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_input_port_type", 3937882851)
  methodbind.ptrcall(self, [getPtr id, getPtr `type`])

proc setOutputPortName*(self: VisualShaderNodeGroupBase; id: int32; name: String): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_output_port_name", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr name])

proc setOutputPortType*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32): void =
  expandMethodBind(className VisualShaderNodeGroupBase, "set_output_port_type", 3937882851)
  methodbind.ptrcall(self, [getPtr id, getPtr `type`])

proc getFreeInputPortId*(self: VisualShaderNodeGroupBase): int32 =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_free_input_port_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getFreeOutputPortId*(self: VisualShaderNodeGroupBase): int32 =
  expandMethodBind(className VisualShaderNodeGroupBase, "get_free_output_port_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

const VisualShaderNodeGroupBase_vmap =
  VisualShaderNodeResizableBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeGroupBase]): Table[string, string] = VisualShaderNodeGroupBase_vmap