{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

proc setFunction*(self: VisualShaderNodeVectorFunc; `func`: VisualShaderNodeVectorFunc_Function): void =
  expandMethodBind(className VisualShaderNodeVectorFunc, "set_function", 629964457)
  methodbind.ptrcall(self, [getPtr `func`])

proc getFunction*(self: VisualShaderNodeVectorFunc): VisualShaderNodeVectorFunc_Function =
  expandMethodBind(className VisualShaderNodeVectorFunc, "get_function", 4047776843)
  var ret: encoded VisualShaderNodeVectorFunc_Function
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeVectorFunc_Function)

template function*(self: VisualShaderNodeVectorFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeVectorFunc; value) = self.setFunction(value)

const VisualShaderNodeVectorFunc_vmap =
  VisualShaderNodeVectorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVectorFunc]): Table[string, string] = VisualShaderNodeVectorFunc_vmap