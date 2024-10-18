{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setSource*(self: VisualShaderNodeSample3D; value: VisualShaderNodeSample3D_Source): void =
  expandMethodBind(className VisualShaderNodeSample3D, "set_source", 3315130991)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSource*(self: VisualShaderNodeSample3D): VisualShaderNodeSample3D_Source =
  expandMethodBind(className VisualShaderNodeSample3D, "get_source", 1079494121)
  var ret: encoded VisualShaderNodeSample3D_Source
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeSample3D_Source)

template source*(self: VisualShaderNodeSample3D): untyped = self.getSource()
template `source=`*(self: VisualShaderNodeSample3D; value) = self.setSource(value)

const VisualShaderNodeSample3D_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeSample3D]): Table[string, string] = VisualShaderNodeSample3D_vmap