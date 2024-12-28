{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeTransformFunc; `func`: VisualShaderNodeTransformFunc_Function): void =
  expandMethodBind(className VisualShaderNodeTransformFunc, "set_function", 2900990409)
  methodbind.ptrcall(self, [getPtr `func`])

proc getFunction*(self: VisualShaderNodeTransformFunc): VisualShaderNodeTransformFunc_Function =
  expandMethodBind(className VisualShaderNodeTransformFunc, "get_function", 2839926569)
  var ret: encoded VisualShaderNodeTransformFunc_Function
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeTransformFunc_Function)

template function*(self: VisualShaderNodeTransformFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeTransformFunc; value) = self.setFunction(value)

const VisualShaderNodeTransformFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTransformFunc]): Table[string, string] = VisualShaderNodeTransformFunc_vmap