{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeUIntFunc; `func`: VisualShaderNodeUIntFunc_Function): void =
  expandMethodBind(className VisualShaderNodeUIntFunc, "set_function", 2273148961)
  methodbind.ptrcall(self, [getPtr `func`])

proc getFunction*(self: VisualShaderNodeUIntFunc): VisualShaderNodeUIntFunc_Function =
  expandMethodBind(className VisualShaderNodeUIntFunc, "get_function", 4187123296)
  var ret: encoded VisualShaderNodeUIntFunc_Function
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeUIntFunc_Function)

template function*(self: VisualShaderNodeUIntFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeUIntFunc; value) = self.setFunction(value)

const VisualShaderNodeUIntFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeUIntFunc]): Table[string, string] = VisualShaderNodeUIntFunc_vmap