{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeTransformFunc; `func`: VisualShaderNodeTransformFunc_Function): void =
  expandMethodBind(className VisualShaderNodeTransformFunc, "set_function", 2900990409)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFunction*(self: VisualShaderNodeTransformFunc): VisualShaderNodeTransformFunc_Function =
  expandMethodBind(className VisualShaderNodeTransformFunc, "get_function", 2839926569)
  var ret: encoded VisualShaderNodeTransformFunc_Function
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTransformFunc_Function)

template function*(self: VisualShaderNodeTransformFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeTransformFunc; value) = self.setFunction(value)

const VisualShaderNodeTransformFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTransformFunc]): Table[string, string] = VisualShaderNodeTransformFunc_vmap