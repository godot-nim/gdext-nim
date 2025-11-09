{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(VisualShaderNode, Resource)

proc getDefaultInputPort*(self: VisualShaderNode; `type`: VisualShaderNode_PortType): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "get_default_input_port", 1894493699)
  methodbind.ptrcall(self, [getPtr `type`], int32)

proc setOutputPortForPreview*(self: VisualShaderNode; port: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "set_output_port_for_preview", 1286410249)
  methodbind.ptrcall(self, [getPtr port], void)

proc getOutputPortForPreview*(self: VisualShaderNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "get_output_port_for_preview", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setInputPortDefaultValue*(self: VisualShaderNode; port: int32; value: Variant; prevValue: Variant = default(Variant)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "set_input_port_default_value", 150923387)
  methodbind.ptrcall(self, [getPtr port, getPtr value, getPtr prevValue], void)

proc getInputPortDefaultValue*(self: VisualShaderNode; port: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "get_input_port_default_value", 4227898402)
  methodbind.ptrcall(self, [getPtr port], Variant)

proc removeInputPortDefaultValue*(self: VisualShaderNode; port: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "remove_input_port_default_value", 1286410249)
  methodbind.ptrcall(self, [getPtr port], void)

proc clearDefaultInputValues*(self: VisualShaderNode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "clear_default_input_values", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setDefaultInputValues*(self: VisualShaderNode; values: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "set_default_input_values", 381264803)
  methodbind.ptrcall(self, [getPtr values], void)

proc getDefaultInputValues*(self: VisualShaderNode): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "get_default_input_values", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setFrame*(self: VisualShaderNode; frame: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame], void)

proc getFrame*(self: VisualShaderNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNode, "get_frame", 3905245786)
  methodbind.ptrcall(self, [], int32)

template outputPortForPreview*(self: VisualShaderNode): untyped = self.getOutputPortForPreview()
template `outputPortForPreview=`*(self: VisualShaderNode; value) = self.setOutputPortForPreview(value)

template defaultInputValues*(self: VisualShaderNode): untyped = self.getDefaultInputValues()
template `defaultInputValues=`*(self: VisualShaderNode; value) = self.setDefaultInputValues(value)

template expandedOutputPorts*(self: VisualShaderNode): untyped = self.getOutputPortsExpanded()
template `expandedOutputPorts=`*(self: VisualShaderNode; value) = self.setOutputPortsExpanded(value)

template linkedParentGraphFrame*(self: VisualShaderNode): untyped = self.getFrame()
template `linkedParentGraphFrame=`*(self: VisualShaderNode; value) = self.setFrame(value)
