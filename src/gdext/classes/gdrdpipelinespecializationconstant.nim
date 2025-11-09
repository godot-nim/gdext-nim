{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDPipelineSpecializationConstant, RefCounted)

proc setValue*(self: RDPipelineSpecializationConstant; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineSpecializationConstant, "set_value", 1114965689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getValue*(self: RDPipelineSpecializationConstant): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineSpecializationConstant, "get_value", 1214101251)
  methodbind.ptrcall(self, [], Variant)

proc setConstantId*(self: RDPipelineSpecializationConstant; constantId: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineSpecializationConstant, "set_constant_id", 1286410249)
  methodbind.ptrcall(self, [getPtr constantId], void)

proc getConstantId*(self: RDPipelineSpecializationConstant): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineSpecializationConstant, "get_constant_id", 3905245786)
  methodbind.ptrcall(self, [], uint32)

template value*(self: RDPipelineSpecializationConstant): untyped = self.getValue()
template `value=`*(self: RDPipelineSpecializationConstant; value) = self.setValue(value)

template constantId*(self: RDPipelineSpecializationConstant): untyped = self.getConstantId()
template `constantId=`*(self: RDPipelineSpecializationConstant; value) = self.setConstantId(value)
