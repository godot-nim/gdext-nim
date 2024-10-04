{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeUvFunc; `func`: VisualShaderNodeUvFunc_Function): void =
  expandMethodBind(className VisualShaderNodeUvFunc, "set_function", 765791915)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFunction*(self: VisualShaderNodeUvFunc): VisualShaderNodeUvFunc_Function =
  expandMethodBind(className VisualShaderNodeUvFunc, "get_function", 3772902164)
  var ret: encoded VisualShaderNodeUvFunc_Function
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeUvFunc_Function)

template function*(self: VisualShaderNodeUvFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeUvFunc; value) = self.setFunction(value)

const VisualShaderNodeUvFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeUvFunc]): Table[string, string] = VisualShaderNodeUvFunc_vmap