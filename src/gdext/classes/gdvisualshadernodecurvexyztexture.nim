{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

expandOnClassImported(VisualShaderNodeCurveXYZTexture, VisualShaderNodeResizableBase)

proc setTexture*(self: VisualShaderNodeCurveXYZTexture; texture: gdref CurveXYZTexture): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCurveXYZTexture, "set_texture", 8031783)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: VisualShaderNodeCurveXYZTexture): gdref CurveXYZTexture =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCurveXYZTexture, "get_texture", 1950275015)
  methodbind.ptrcall(self, [], gdref CurveXYZTexture)

template texture*(self: VisualShaderNodeCurveXYZTexture): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeCurveXYZTexture; value) = self.setTexture(value)
