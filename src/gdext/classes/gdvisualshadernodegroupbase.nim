{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

expandOnClassImported(VisualShaderNodeGroupBase, VisualShaderNodeResizableBase)

proc setInputs*(self: VisualShaderNodeGroupBase; inputs: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "set_inputs", 83702148)
  methodbind.ptrcall(self, [getPtr inputs], void)

proc getInputs*(self: VisualShaderNodeGroupBase): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "get_inputs", 201670096)
  methodbind.ptrcall(self, [], String)

proc setOutputs*(self: VisualShaderNodeGroupBase; outputs: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "set_outputs", 83702148)
  methodbind.ptrcall(self, [getPtr outputs], void)

proc getOutputs*(self: VisualShaderNodeGroupBase): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "get_outputs", 201670096)
  methodbind.ptrcall(self, [], String)

proc isValidPortName*(self: VisualShaderNodeGroupBase; name: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "is_valid_port_name", 3927539163)
  methodbind.ptrcall(self, [getPtr name], bool)

proc addInputPort*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "add_input_port", 2285447957)
  methodbind.ptrcall(self, [getPtr id, getPtr `type`, getPtr name], void)

proc removeInputPort*(self: VisualShaderNodeGroupBase; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "remove_input_port", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc getInputPortCount*(self: VisualShaderNodeGroupBase): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "get_input_port_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasInputPort*(self: VisualShaderNodeGroupBase; id: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "has_input_port", 1116898809)
  methodbind.ptrcall(self, [getPtr id], bool)

proc clearInputPorts*(self: VisualShaderNodeGroupBase): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "clear_input_ports", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addOutputPort*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "add_output_port", 2285447957)
  methodbind.ptrcall(self, [getPtr id, getPtr `type`, getPtr name], void)

proc removeOutputPort*(self: VisualShaderNodeGroupBase; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "remove_output_port", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc getOutputPortCount*(self: VisualShaderNodeGroupBase): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "get_output_port_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasOutputPort*(self: VisualShaderNodeGroupBase; id: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "has_output_port", 1116898809)
  methodbind.ptrcall(self, [getPtr id], bool)

proc clearOutputPorts*(self: VisualShaderNodeGroupBase): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "clear_output_ports", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setInputPortName*(self: VisualShaderNodeGroupBase; id: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "set_input_port_name", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr name], void)

proc setInputPortType*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "set_input_port_type", 3937882851)
  methodbind.ptrcall(self, [getPtr id, getPtr `type`], void)

proc setOutputPortName*(self: VisualShaderNodeGroupBase; id: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "set_output_port_name", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr name], void)

proc setOutputPortType*(self: VisualShaderNodeGroupBase; id: int32; `type`: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "set_output_port_type", 3937882851)
  methodbind.ptrcall(self, [getPtr id, getPtr `type`], void)

proc getFreeInputPortId*(self: VisualShaderNodeGroupBase): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "get_free_input_port_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getFreeOutputPortId*(self: VisualShaderNodeGroupBase): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeGroupBase, "get_free_output_port_id", 3905245786)
  methodbind.ptrcall(self, [], int32)
