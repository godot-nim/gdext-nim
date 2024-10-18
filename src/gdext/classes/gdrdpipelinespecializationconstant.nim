{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setValue*(self: RdPipelineSpecializationConstant; value: Variant): void =
  expandMethodBind(className RdPipelineSpecializationConstant, "set_value", 1114965689)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getValue*(self: RdPipelineSpecializationConstant): Variant =
  expandMethodBind(className RdPipelineSpecializationConstant, "get_value", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

proc setConstantId*(self: RdPipelineSpecializationConstant; constantId: uint32): void =
  expandMethodBind(className RdPipelineSpecializationConstant, "set_constant_id", 1286410249)
  var `?param` = [getPtr constantId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantId*(self: RdPipelineSpecializationConstant): uint32 =
  expandMethodBind(className RdPipelineSpecializationConstant, "get_constant_id", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template value*(self: RdPipelineSpecializationConstant): untyped = self.getValue()
template `value=`*(self: RdPipelineSpecializationConstant; value) = self.setValue(value)

template constantId*(self: RdPipelineSpecializationConstant): untyped = self.getConstantId()
template `constantId=`*(self: RdPipelineSpecializationConstant; value) = self.setConstantId(value)

const RdPipelineSpecializationConstant_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdPipelineSpecializationConstant]): Table[string, string] = RdPipelineSpecializationConstant_vmap