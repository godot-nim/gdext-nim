{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getBufferView*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_buffer_view", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBufferView*(self: GltfAccessor; bufferView: int32): void =
  expandMethodBind(className GltfAccessor, "set_buffer_view", 1286410249)
  var `?param` = [getPtr bufferView]
  methodbind.ptrcall(self, addr `?param`[0])

proc getByteOffset*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_byte_offset", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setByteOffset*(self: GltfAccessor; byteOffset: int32): void =
  expandMethodBind(className GltfAccessor, "set_byte_offset", 1286410249)
  var `?param` = [getPtr byteOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getComponentType*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_component_type", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setComponentType*(self: GltfAccessor; componentType: int32): void =
  expandMethodBind(className GltfAccessor, "set_component_type", 1286410249)
  var `?param` = [getPtr componentType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNormalized*(self: GltfAccessor): bool =
  expandMethodBind(className GltfAccessor, "get_normalized", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNormalized*(self: GltfAccessor; normalized: bool): void =
  expandMethodBind(className GltfAccessor, "set_normalized", 2586408642)
  var `?param` = [getPtr normalized]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCount*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCount*(self: GltfAccessor; count: int32): void =
  expandMethodBind(className GltfAccessor, "set_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAccessorType*(self: GltfAccessor): GltfAccessor_GltfAccessorType =
  expandMethodBind(className GltfAccessor, "get_accessor_type", 679305214)
  var ret: encoded GltfAccessor_GltfAccessorType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GltfAccessor_GltfAccessorType)

proc setAccessorType*(self: GltfAccessor; accessorType: GltfAccessor_GltfAccessorType): void =
  expandMethodBind(className GltfAccessor, "set_accessor_type", 2347728198)
  var `?param` = [getPtr accessorType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getType*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_type", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setType*(self: GltfAccessor; `type`: int32): void =
  expandMethodBind(className GltfAccessor, "set_type", 1286410249)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMin*(self: GltfAccessor): PackedFloat64Array =
  expandMethodBind(className GltfAccessor, "get_min", 148677866)
  var ret: encoded PackedFloat64Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat64Array)

proc setMin*(self: GltfAccessor; min: PackedFloat64Array): void =
  expandMethodBind(className GltfAccessor, "set_min", 2576592201)
  var `?param` = [getPtr min]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMax*(self: GltfAccessor): PackedFloat64Array =
  expandMethodBind(className GltfAccessor, "get_max", 148677866)
  var ret: encoded PackedFloat64Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat64Array)

proc setMax*(self: GltfAccessor; max: PackedFloat64Array): void =
  expandMethodBind(className GltfAccessor, "set_max", 2576592201)
  var `?param` = [getPtr max]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseCount*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_sparse_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseCount*(self: GltfAccessor; sparseCount: int32): void =
  expandMethodBind(className GltfAccessor, "set_sparse_count", 1286410249)
  var `?param` = [getPtr sparseCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseIndicesBufferView*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_sparse_indices_buffer_view", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseIndicesBufferView*(self: GltfAccessor; sparseIndicesBufferView: int32): void =
  expandMethodBind(className GltfAccessor, "set_sparse_indices_buffer_view", 1286410249)
  var `?param` = [getPtr sparseIndicesBufferView]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseIndicesByteOffset*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_sparse_indices_byte_offset", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseIndicesByteOffset*(self: GltfAccessor; sparseIndicesByteOffset: int32): void =
  expandMethodBind(className GltfAccessor, "set_sparse_indices_byte_offset", 1286410249)
  var `?param` = [getPtr sparseIndicesByteOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseIndicesComponentType*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_sparse_indices_component_type", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseIndicesComponentType*(self: GltfAccessor; sparseIndicesComponentType: int32): void =
  expandMethodBind(className GltfAccessor, "set_sparse_indices_component_type", 1286410249)
  var `?param` = [getPtr sparseIndicesComponentType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseValuesBufferView*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_sparse_values_buffer_view", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseValuesBufferView*(self: GltfAccessor; sparseValuesBufferView: int32): void =
  expandMethodBind(className GltfAccessor, "set_sparse_values_buffer_view", 1286410249)
  var `?param` = [getPtr sparseValuesBufferView]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseValuesByteOffset*(self: GltfAccessor): int32 =
  expandMethodBind(className GltfAccessor, "get_sparse_values_byte_offset", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseValuesByteOffset*(self: GltfAccessor; sparseValuesByteOffset: int32): void =
  expandMethodBind(className GltfAccessor, "set_sparse_values_byte_offset", 1286410249)
  var `?param` = [getPtr sparseValuesByteOffset]
  methodbind.ptrcall(self, addr `?param`[0])

template bufferView*(self: GltfAccessor): untyped = self.getBufferView()
template `bufferView=`*(self: GltfAccessor; value) = self.setBufferView(value)

template byteOffset*(self: GltfAccessor): untyped = self.getByteOffset()
template `byteOffset=`*(self: GltfAccessor; value) = self.setByteOffset(value)

template componentType*(self: GltfAccessor): untyped = self.getComponentType()
template `componentType=`*(self: GltfAccessor; value) = self.setComponentType(value)

template normalized*(self: GltfAccessor): untyped = self.getNormalized()
template `normalized=`*(self: GltfAccessor; value) = self.setNormalized(value)

template count*(self: GltfAccessor): untyped = self.getCount()
template `count=`*(self: GltfAccessor; value) = self.setCount(value)

template accessorType*(self: GltfAccessor): untyped = self.getAccessorType()
template `accessorType=`*(self: GltfAccessor; value) = self.setAccessorType(value)

template `type`*(self: GltfAccessor): untyped = self.getType()
template ``type`=`*(self: GltfAccessor; value) = self.setType(value)

template min*(self: GltfAccessor): untyped = self.getMin()
template `min=`*(self: GltfAccessor; value) = self.setMin(value)

template max*(self: GltfAccessor): untyped = self.getMax()
template `max=`*(self: GltfAccessor; value) = self.setMax(value)

template sparseCount*(self: GltfAccessor): untyped = self.getSparseCount()
template `sparseCount=`*(self: GltfAccessor; value) = self.setSparseCount(value)

template sparseIndicesBufferView*(self: GltfAccessor): untyped = self.getSparseIndicesBufferView()
template `sparseIndicesBufferView=`*(self: GltfAccessor; value) = self.setSparseIndicesBufferView(value)

template sparseIndicesByteOffset*(self: GltfAccessor): untyped = self.getSparseIndicesByteOffset()
template `sparseIndicesByteOffset=`*(self: GltfAccessor; value) = self.setSparseIndicesByteOffset(value)

template sparseIndicesComponentType*(self: GltfAccessor): untyped = self.getSparseIndicesComponentType()
template `sparseIndicesComponentType=`*(self: GltfAccessor; value) = self.setSparseIndicesComponentType(value)

template sparseValuesBufferView*(self: GltfAccessor): untyped = self.getSparseValuesBufferView()
template `sparseValuesBufferView=`*(self: GltfAccessor; value) = self.setSparseValuesBufferView(value)

template sparseValuesByteOffset*(self: GltfAccessor): untyped = self.getSparseValuesByteOffset()
template `sparseValuesByteOffset=`*(self: GltfAccessor; value) = self.setSparseValuesByteOffset(value)

const GltfAccessor_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfAccessor]): Table[string, string] = GltfAccessor_vmap