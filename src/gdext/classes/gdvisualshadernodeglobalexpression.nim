{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeexpression; export gdvisualshadernodeexpression

const VisualShaderNodeGlobalExpression_vmap =
  VisualShaderNodeExpression.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeGlobalExpression]): Table[string, string] = VisualShaderNodeGlobalExpression_vmap