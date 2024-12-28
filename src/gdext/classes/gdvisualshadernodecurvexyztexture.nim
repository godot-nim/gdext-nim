{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

proc setTexture*(self: VisualShaderNodeCurveXYZTexture; texture: gdref CurveXYZTexture): void =
  expandMethodBind(className VisualShaderNodeCurveXYZTexture, "set_texture", 8031783)
  methodbind.ptrcall(self, [getPtr texture])

proc getTexture*(self: VisualShaderNodeCurveXYZTexture): gdref CurveXYZTexture =
  expandMethodBind(className VisualShaderNodeCurveXYZTexture, "get_texture", 1950275015)
  var ret: encoded gdref CurveXYZTexture
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref CurveXYZTexture)

template texture*(self: VisualShaderNodeCurveXYZTexture): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeCurveXYZTexture; value) = self.setTexture(value)

const VisualShaderNodeCurveXYZTexture_vmap =
  VisualShaderNodeResizableBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeCurveXYZTexture]): Table[string, string] = VisualShaderNodeCurveXYZTexture_vmap