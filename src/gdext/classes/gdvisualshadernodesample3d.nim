{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeSample3D, VisualShaderNode)

proc setSource*(self: VisualShaderNodeSample3D; value: VisualShaderNodeSample3D_Source): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeSample3D, "set_source", 3315130991)
  methodbind.ptrcall(self, [getPtr value], void)

proc getSource*(self: VisualShaderNodeSample3D): VisualShaderNodeSample3D_Source =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeSample3D, "get_source", 1079494121)
  methodbind.ptrcall(self, [], VisualShaderNodeSample3D_Source)

template source*(self: VisualShaderNodeSample3D): untyped = self.getSource()
template `source=`*(self: VisualShaderNodeSample3D; value) = self.setSource(value)
