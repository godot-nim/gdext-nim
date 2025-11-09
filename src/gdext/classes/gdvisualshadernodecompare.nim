{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeCompare, VisualShaderNode)

proc setComparisonType*(self: VisualShaderNodeCompare; `type`: VisualShaderNodeCompare_ComparisonType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCompare, "set_comparison_type", 516558320)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getComparisonType*(self: VisualShaderNodeCompare): VisualShaderNodeCompare_ComparisonType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCompare, "get_comparison_type", 3495315961)
  methodbind.ptrcall(self, [], VisualShaderNodeCompare_ComparisonType)

proc setFunction*(self: VisualShaderNodeCompare; `func`: VisualShaderNodeCompare_Function): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCompare, "set_function", 2370951349)
  methodbind.ptrcall(self, [getPtr `func`], void)

proc getFunction*(self: VisualShaderNodeCompare): VisualShaderNodeCompare_Function =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCompare, "get_function", 4089164265)
  methodbind.ptrcall(self, [], VisualShaderNodeCompare_Function)

proc setCondition*(self: VisualShaderNodeCompare; condition: VisualShaderNodeCompare_Condition): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCompare, "set_condition", 918742392)
  methodbind.ptrcall(self, [getPtr condition], void)

proc getCondition*(self: VisualShaderNodeCompare): VisualShaderNodeCompare_Condition =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCompare, "get_condition", 3281078941)
  methodbind.ptrcall(self, [], VisualShaderNodeCompare_Condition)

template `type`*(self: VisualShaderNodeCompare): untyped = self.getComparisonType()
template `type=`*(self: VisualShaderNodeCompare; value) = self.setComparisonType(value)

template function*(self: VisualShaderNodeCompare): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeCompare; value) = self.setFunction(value)

template condition*(self: VisualShaderNodeCompare): untyped = self.getCondition()
template `condition=`*(self: VisualShaderNodeCompare; value) = self.setCondition(value)
