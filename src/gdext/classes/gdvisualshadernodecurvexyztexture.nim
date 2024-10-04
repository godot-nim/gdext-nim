{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

proc setTexture*(self: VisualShaderNodeCurveXyzTexture; texture: gdref CurveXyzTexture): void =
  expandMethodBind(className VisualShaderNodeCurveXyzTexture, "set_texture", 8031783)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: VisualShaderNodeCurveXyzTexture): gdref CurveXyzTexture =
  expandMethodBind(className VisualShaderNodeCurveXyzTexture, "get_texture", 1950275015)
  var ret: encoded gdref CurveXyzTexture
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CurveXyzTexture)

template texture*(self: VisualShaderNodeCurveXyzTexture): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeCurveXyzTexture; value) = self.setTexture(value)

const VisualShaderNodeCurveXyzTexture_vmap =
  VisualShaderNodeResizableBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeCurveXyzTexture]): Table[string, string] = VisualShaderNodeCurveXyzTexture_vmap