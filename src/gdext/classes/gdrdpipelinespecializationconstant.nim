{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setValue*(self: RDPipelineSpecializationConstant; value: Variant): void =
  expandMethodBind(className RDPipelineSpecializationConstant, "set_value", 1114965689)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getValue*(self: RDPipelineSpecializationConstant): Variant =
  expandMethodBind(className RDPipelineSpecializationConstant, "get_value", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

proc setConstantId*(self: RDPipelineSpecializationConstant; constantId: uint32): void =
  expandMethodBind(className RDPipelineSpecializationConstant, "set_constant_id", 1286410249)
  var `?param` = [getPtr constantId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantId*(self: RDPipelineSpecializationConstant): uint32 =
  expandMethodBind(className RDPipelineSpecializationConstant, "get_constant_id", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template value*(self: RDPipelineSpecializationConstant): untyped = self.getValue()
template `value=`*(self: RDPipelineSpecializationConstant; value) = self.setValue(value)

template constantId*(self: RDPipelineSpecializationConstant): untyped = self.getConstantId()
template `constantId=`*(self: RDPipelineSpecializationConstant; value) = self.setConstantId(value)

const RDPipelineSpecializationConstant_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDPipelineSpecializationConstant]): Table[string, string] = RDPipelineSpecializationConstant_vmap