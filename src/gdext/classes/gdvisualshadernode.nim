{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getDefaultInputPort*(self: VisualShaderNode; `type`: VisualShaderNode_PortType): int32 =
  expandMethodBind(className VisualShaderNode, "get_default_input_port", 1894493699)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr `type`], addr ret)
  (addr ret).decode_result(int32)

proc setOutputPortForPreview*(self: VisualShaderNode; port: int32): void =
  expandMethodBind(className VisualShaderNode, "set_output_port_for_preview", 1286410249)
  methodbind.ptrcall(self, [getPtr port])

proc getOutputPortForPreview*(self: VisualShaderNode): int32 =
  expandMethodBind(className VisualShaderNode, "get_output_port_for_preview", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setInputPortDefaultValue*(self: VisualShaderNode; port: int32; value: Variant; prevValue: Variant = default(Variant)): void =
  expandMethodBind(className VisualShaderNode, "set_input_port_default_value", 150923387)
  methodbind.ptrcall(self, [getPtr port, getPtr value, getPtr prevValue])

proc getInputPortDefaultValue*(self: VisualShaderNode; port: int32): Variant =
  expandMethodBind(className VisualShaderNode, "get_input_port_default_value", 4227898402)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr port], addr ret)
  (addr ret).decode_result(Variant)

proc removeInputPortDefaultValue*(self: VisualShaderNode; port: int32): void =
  expandMethodBind(className VisualShaderNode, "remove_input_port_default_value", 1286410249)
  methodbind.ptrcall(self, [getPtr port])

proc clearDefaultInputValues*(self: VisualShaderNode): void =
  expandMethodBind(className VisualShaderNode, "clear_default_input_values", 3218959716)
  methodbind.ptrcall(self, [])

proc setDefaultInputValues*(self: VisualShaderNode; values: Array): void =
  expandMethodBind(className VisualShaderNode, "set_default_input_values", 381264803)
  methodbind.ptrcall(self, [getPtr values])

proc getDefaultInputValues*(self: VisualShaderNode): Array =
  expandMethodBind(className VisualShaderNode, "get_default_input_values", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc setFrame*(self: VisualShaderNode; frame: int32): void =
  expandMethodBind(className VisualShaderNode, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame])

proc getFrame*(self: VisualShaderNode): int32 =
  expandMethodBind(className VisualShaderNode, "get_frame", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

template outputPortForPreview*(self: VisualShaderNode): untyped = self.getOutputPortForPreview()
template `outputPortForPreview=`*(self: VisualShaderNode; value) = self.setOutputPortForPreview(value)

template defaultInputValues*(self: VisualShaderNode): untyped = self.getDefaultInputValues()
template `defaultInputValues=`*(self: VisualShaderNode; value) = self.setDefaultInputValues(value)

template expandedOutputPorts*(self: VisualShaderNode): untyped = self.getOutputPortsExpanded()
template `expandedOutputPorts=`*(self: VisualShaderNode; value) = self.setOutputPortsExpanded(value)

template linkedParentGraphFrame*(self: VisualShaderNode): untyped = self.getFrame()
template `linkedParentGraphFrame=`*(self: VisualShaderNode; value) = self.setFrame(value)

const VisualShaderNode_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNode]): Table[string, string] = VisualShaderNode_vmap