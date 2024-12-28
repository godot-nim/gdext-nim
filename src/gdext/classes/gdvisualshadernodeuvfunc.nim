{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeUVFunc; `func`: VisualShaderNodeUVFunc_Function): void =
  expandMethodBind(className VisualShaderNodeUVFunc, "set_function", 765791915)
  methodbind.ptrcall(self, [getPtr `func`])

proc getFunction*(self: VisualShaderNodeUVFunc): VisualShaderNodeUVFunc_Function =
  expandMethodBind(className VisualShaderNodeUVFunc, "get_function", 3772902164)
  var ret: encoded VisualShaderNodeUVFunc_Function
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeUVFunc_Function)

template function*(self: VisualShaderNodeUVFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeUVFunc; value) = self.setFunction(value)

const VisualShaderNodeUVFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeUVFunc]): Table[string, string] = VisualShaderNodeUVFunc_vmap