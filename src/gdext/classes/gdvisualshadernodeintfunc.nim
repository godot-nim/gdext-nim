{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeIntFunc; `func`: VisualShaderNodeIntFunc_Function): void =
  expandMethodBind(className VisualShaderNodeIntFunc, "set_function", 424195284)
  methodbind.ptrcall(self, [getPtr `func`])

proc getFunction*(self: VisualShaderNodeIntFunc): VisualShaderNodeIntFunc_Function =
  expandMethodBind(className VisualShaderNodeIntFunc, "get_function", 2753496911)
  var ret: encoded VisualShaderNodeIntFunc_Function
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeIntFunc_Function)

template function*(self: VisualShaderNodeIntFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeIntFunc; value) = self.setFunction(value)

const VisualShaderNodeIntFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeIntFunc]): Table[string, string] = VisualShaderNodeIntFunc_vmap