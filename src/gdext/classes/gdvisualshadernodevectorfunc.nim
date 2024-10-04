{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

proc setFunction*(self: VisualShaderNodeVectorFunc; `func`: VisualShaderNodeVectorFunc_Function): void =
  expandMethodBind(className VisualShaderNodeVectorFunc, "set_function", 629964457)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFunction*(self: VisualShaderNodeVectorFunc): VisualShaderNodeVectorFunc_Function =
  expandMethodBind(className VisualShaderNodeVectorFunc, "get_function", 4047776843)
  var ret: encoded VisualShaderNodeVectorFunc_Function
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeVectorFunc_Function)

template function*(self: VisualShaderNodeVectorFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeVectorFunc; value) = self.setFunction(value)

const VisualShaderNodeVectorFunc_vmap =
  VisualShaderNodeVectorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVectorFunc]): Table[string, string] = VisualShaderNodeVectorFunc_vmap