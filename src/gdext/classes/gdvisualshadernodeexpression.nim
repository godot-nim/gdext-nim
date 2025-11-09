{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodegroupbase; export gdvisualshadernodegroupbase

expandOnClassImported(VisualShaderNodeExpression, VisualShaderNodeGroupBase)

proc setExpression*(self: VisualShaderNodeExpression; expression: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeExpression, "set_expression", 83702148)
  methodbind.ptrcall(self, [getPtr expression], void)

proc getExpression*(self: VisualShaderNodeExpression): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeExpression, "get_expression", 201670096)
  methodbind.ptrcall(self, [], String)

template expression*(self: VisualShaderNodeExpression): untyped = self.getExpression()
template `expression=`*(self: VisualShaderNodeExpression; value) = self.setExpression(value)
