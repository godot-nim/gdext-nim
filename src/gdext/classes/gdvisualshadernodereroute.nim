{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc getPortType*(self: VisualShaderNodeReroute): VisualShaderNode_PortType =
  expandMethodBind(className VisualShaderNodeReroute, "get_port_type", 1287173294)
  var ret: encoded VisualShaderNode_PortType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNode_PortType)

template portType*(self: VisualShaderNodeReroute): untyped = self.getPortType()
template `portType=`*(self: VisualShaderNodeReroute; value) = self.setPortType(value)

const VisualShaderNodeReroute_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeReroute]): Table[string, string] = VisualShaderNodeReroute_vmap