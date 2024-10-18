{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodegroupbase; export gdvisualshadernodegroupbase

proc setExpression*(self: VisualShaderNodeExpression; expression: String): void =
  expandMethodBind(className VisualShaderNodeExpression, "set_expression", 83702148)
  var `?param` = [getPtr expression]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExpression*(self: VisualShaderNodeExpression): String =
  expandMethodBind(className VisualShaderNodeExpression, "get_expression", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template expression*(self: VisualShaderNodeExpression): untyped = self.getExpression()
template `expression=`*(self: VisualShaderNodeExpression; value) = self.setExpression(value)

const VisualShaderNodeExpression_vmap =
  VisualShaderNodeGroupBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeExpression]): Table[string, string] = VisualShaderNodeExpression_vmap