{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeexpression; export gdvisualshadernodeexpression

const VisualShaderNodeGlobalExpression_vmap =
  VisualShaderNodeExpression.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeGlobalExpression]): Table[string, string] = VisualShaderNodeGlobalExpression_vmap