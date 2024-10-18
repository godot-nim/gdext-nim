{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setComparisonType*(self: VisualShaderNodeCompare; `type`: VisualShaderNodeCompare_ComparisonType): void =
  expandMethodBind(className VisualShaderNodeCompare, "set_comparison_type", 516558320)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getComparisonType*(self: VisualShaderNodeCompare): VisualShaderNodeCompare_ComparisonType =
  expandMethodBind(className VisualShaderNodeCompare, "get_comparison_type", 3495315961)
  var ret: encoded VisualShaderNodeCompare_ComparisonType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeCompare_ComparisonType)

proc setFunction*(self: VisualShaderNodeCompare; `func`: VisualShaderNodeCompare_Function): void =
  expandMethodBind(className VisualShaderNodeCompare, "set_function", 2370951349)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFunction*(self: VisualShaderNodeCompare): VisualShaderNodeCompare_Function =
  expandMethodBind(className VisualShaderNodeCompare, "get_function", 4089164265)
  var ret: encoded VisualShaderNodeCompare_Function
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeCompare_Function)

proc setCondition*(self: VisualShaderNodeCompare; condition: VisualShaderNodeCompare_Condition): void =
  expandMethodBind(className VisualShaderNodeCompare, "set_condition", 918742392)
  var `?param` = [getPtr condition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCondition*(self: VisualShaderNodeCompare): VisualShaderNodeCompare_Condition =
  expandMethodBind(className VisualShaderNodeCompare, "get_condition", 3281078941)
  var ret: encoded VisualShaderNodeCompare_Condition
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeCompare_Condition)

template `type`*(self: VisualShaderNodeCompare): untyped = self.getComparisonType()
template `type=`*(self: VisualShaderNodeCompare; value) = self.setComparisonType(value)

template function*(self: VisualShaderNodeCompare): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeCompare; value) = self.setFunction(value)

template condition*(self: VisualShaderNodeCompare): untyped = self.getCondition()
template `condition=`*(self: VisualShaderNodeCompare; value) = self.setCondition(value)

const VisualShaderNodeCompare_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeCompare]): Table[string, string] = VisualShaderNodeCompare_vmap