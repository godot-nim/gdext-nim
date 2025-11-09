{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeResizableBase, VisualShaderNode)

proc setSize*(self: VisualShaderNodeResizableBase; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeResizableBase, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: VisualShaderNodeResizableBase): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeResizableBase, "get_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template size*(self: VisualShaderNodeResizableBase): untyped = self.getSize()
template `size=`*(self: VisualShaderNodeResizableBase; value) = self.setSize(value)
