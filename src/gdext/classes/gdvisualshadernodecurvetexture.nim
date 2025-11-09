{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

expandOnClassImported(VisualShaderNodeCurveTexture, VisualShaderNodeResizableBase)

proc setTexture*(self: VisualShaderNodeCurveTexture; texture: gdref CurveTexture): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCurveTexture, "set_texture", 181872837)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: VisualShaderNodeCurveTexture): gdref CurveTexture =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCurveTexture, "get_texture", 2800800579)
  methodbind.ptrcall(self, [], gdref CurveTexture)

template texture*(self: VisualShaderNodeCurveTexture): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeCurveTexture; value) = self.setTexture(value)
