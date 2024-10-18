{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

proc setTexture*(self: VisualShaderNodeCurveTexture; texture: gdref CurveTexture): void =
  expandMethodBind(className VisualShaderNodeCurveTexture, "set_texture", 181872837)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: VisualShaderNodeCurveTexture): gdref CurveTexture =
  expandMethodBind(className VisualShaderNodeCurveTexture, "get_texture", 2800800579)
  var ret: encoded gdref CurveTexture
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CurveTexture)

template texture*(self: VisualShaderNodeCurveTexture): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeCurveTexture; value) = self.setTexture(value)

const VisualShaderNodeCurveTexture_vmap =
  VisualShaderNodeResizableBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeCurveTexture]): Table[string, string] = VisualShaderNodeCurveTexture_vmap