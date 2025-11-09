{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeReroute, VisualShaderNode)

proc getPortType*(self: VisualShaderNodeReroute): VisualShaderNode_PortType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeReroute, "get_port_type", 1287173294)
  methodbind.ptrcall(self, [], VisualShaderNode_PortType)

template portType*(self: VisualShaderNodeReroute): untyped = self.getPortType()
template `portType=`*(self: VisualShaderNodeReroute; value) = self.setPortType(value)
