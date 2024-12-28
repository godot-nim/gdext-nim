{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setSize*(self: VisualShaderNodeResizableBase; size: Vector2): void =
  expandMethodBind(className VisualShaderNodeResizableBase, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: VisualShaderNodeResizableBase): Vector2 =
  expandMethodBind(className VisualShaderNodeResizableBase, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template size*(self: VisualShaderNodeResizableBase): untyped = self.getSize()
template `size=`*(self: VisualShaderNodeResizableBase; value) = self.setSize(value)

const VisualShaderNodeResizableBase_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeResizableBase]): Table[string, string] = VisualShaderNodeResizableBase_vmap