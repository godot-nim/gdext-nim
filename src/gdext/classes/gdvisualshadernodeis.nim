{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeIs; `func`: VisualShaderNodeIs_Function): void =
  expandMethodBind(className VisualShaderNodeIs, "set_function", 1438374690)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFunction*(self: VisualShaderNodeIs): VisualShaderNodeIs_Function =
  expandMethodBind(className VisualShaderNodeIs, "get_function", 580678557)
  var ret: encoded VisualShaderNodeIs_Function
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeIs_Function)

template function*(self: VisualShaderNodeIs): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeIs; value) = self.setFunction(value)

const VisualShaderNodeIs_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeIs]): Table[string, string] = VisualShaderNodeIs_vmap