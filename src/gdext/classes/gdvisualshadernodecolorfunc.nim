{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeColorFunc; `func`: VisualShaderNodeColorFunc_Function): void =
  expandMethodBind(className VisualShaderNodeColorFunc, "set_function", 3973396138)
  methodbind.ptrcall(self, [getPtr `func`])

proc getFunction*(self: VisualShaderNodeColorFunc): VisualShaderNodeColorFunc_Function =
  expandMethodBind(className VisualShaderNodeColorFunc, "get_function", 554863321)
  var ret: encoded VisualShaderNodeColorFunc_Function
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeColorFunc_Function)

template function*(self: VisualShaderNodeColorFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeColorFunc; value) = self.setFunction(value)

const VisualShaderNodeColorFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeColorFunc]): Table[string, string] = VisualShaderNodeColorFunc_vmap