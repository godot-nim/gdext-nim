{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getBufferView*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_buffer_view", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBufferView*(self: GLTFAccessor; bufferView: int32): void =
  expandMethodBind(className GLTFAccessor, "set_buffer_view", 1286410249)
  var `?param` = [getPtr bufferView]
  methodbind.ptrcall(self, addr `?param`[0])

proc getByteOffset*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_byte_offset", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setByteOffset*(self: GLTFAccessor; byteOffset: int32): void =
  expandMethodBind(className GLTFAccessor, "set_byte_offset", 1286410249)
  var `?param` = [getPtr byteOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getComponentType*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_component_type", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setComponentType*(self: GLTFAccessor; componentType: int32): void =
  expandMethodBind(className GLTFAccessor, "set_component_type", 1286410249)
  var `?param` = [getPtr componentType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNormalized*(self: GLTFAccessor): bool =
  expandMethodBind(className GLTFAccessor, "get_normalized", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNormalized*(self: GLTFAccessor; normalized: bool): void =
  expandMethodBind(className GLTFAccessor, "set_normalized", 2586408642)
  var `?param` = [getPtr normalized]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCount*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCount*(self: GLTFAccessor; count: int32): void =
  expandMethodBind(className GLTFAccessor, "set_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAccessorType*(self: GLTFAccessor): GLTFAccessor_GLTFAccessorType =
  expandMethodBind(className GLTFAccessor, "get_accessor_type", 679305214)
  var ret: encoded GLTFAccessor_GLTFAccessorType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GLTFAccessor_GLTFAccessorType)

proc setAccessorType*(self: GLTFAccessor; accessorType: GLTFAccessor_GLTFAccessorType): void =
  expandMethodBind(className GLTFAccessor, "set_accessor_type", 2347728198)
  var `?param` = [getPtr accessorType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getType*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_type", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setType*(self: GLTFAccessor; `type`: int32): void =
  expandMethodBind(className GLTFAccessor, "set_type", 1286410249)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMin*(self: GLTFAccessor): PackedFloat64Array =
  expandMethodBind(className GLTFAccessor, "get_min", 148677866)
  var ret: encoded PackedFloat64Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat64Array)

proc setMin*(self: GLTFAccessor; min: PackedFloat64Array): void =
  expandMethodBind(className GLTFAccessor, "set_min", 2576592201)
  var `?param` = [getPtr min]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMax*(self: GLTFAccessor): PackedFloat64Array =
  expandMethodBind(className GLTFAccessor, "get_max", 148677866)
  var ret: encoded PackedFloat64Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat64Array)

proc setMax*(self: GLTFAccessor; max: PackedFloat64Array): void =
  expandMethodBind(className GLTFAccessor, "set_max", 2576592201)
  var `?param` = [getPtr max]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseCount*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_sparse_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseCount*(self: GLTFAccessor; sparseCount: int32): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_count", 1286410249)
  var `?param` = [getPtr sparseCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseIndicesBufferView*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_sparse_indices_buffer_view", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseIndicesBufferView*(self: GLTFAccessor; sparseIndicesBufferView: int32): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_indices_buffer_view", 1286410249)
  var `?param` = [getPtr sparseIndicesBufferView]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseIndicesByteOffset*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_sparse_indices_byte_offset", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseIndicesByteOffset*(self: GLTFAccessor; sparseIndicesByteOffset: int32): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_indices_byte_offset", 1286410249)
  var `?param` = [getPtr sparseIndicesByteOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseIndicesComponentType*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_sparse_indices_component_type", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseIndicesComponentType*(self: GLTFAccessor; sparseIndicesComponentType: int32): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_indices_component_type", 1286410249)
  var `?param` = [getPtr sparseIndicesComponentType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseValuesBufferView*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_sparse_values_buffer_view", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseValuesBufferView*(self: GLTFAccessor; sparseValuesBufferView: int32): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_values_buffer_view", 1286410249)
  var `?param` = [getPtr sparseValuesBufferView]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSparseValuesByteOffset*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_sparse_values_byte_offset", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSparseValuesByteOffset*(self: GLTFAccessor; sparseValuesByteOffset: int32): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_values_byte_offset", 1286410249)
  var `?param` = [getPtr sparseValuesByteOffset]
  methodbind.ptrcall(self, addr `?param`[0])

template bufferView*(self: GLTFAccessor): untyped = self.getBufferView()
template `bufferView=`*(self: GLTFAccessor; value) = self.setBufferView(value)

template byteOffset*(self: GLTFAccessor): untyped = self.getByteOffset()
template `byteOffset=`*(self: GLTFAccessor; value) = self.setByteOffset(value)

template componentType*(self: GLTFAccessor): untyped = self.getComponentType()
template `componentType=`*(self: GLTFAccessor; value) = self.setComponentType(value)

template normalized*(self: GLTFAccessor): untyped = self.getNormalized()
template `normalized=`*(self: GLTFAccessor; value) = self.setNormalized(value)

template count*(self: GLTFAccessor): untyped = self.getCount()
template `count=`*(self: GLTFAccessor; value) = self.setCount(value)

template accessorType*(self: GLTFAccessor): untyped = self.getAccessorType()
template `accessorType=`*(self: GLTFAccessor; value) = self.setAccessorType(value)

template `type`*(self: GLTFAccessor): untyped = self.getType()
template `type=`*(self: GLTFAccessor; value) = self.setType(value)

template min*(self: GLTFAccessor): untyped = self.getMin()
template `min=`*(self: GLTFAccessor; value) = self.setMin(value)

template max*(self: GLTFAccessor): untyped = self.getMax()
template `max=`*(self: GLTFAccessor; value) = self.setMax(value)

template sparseCount*(self: GLTFAccessor): untyped = self.getSparseCount()
template `sparseCount=`*(self: GLTFAccessor; value) = self.setSparseCount(value)

template sparseIndicesBufferView*(self: GLTFAccessor): untyped = self.getSparseIndicesBufferView()
template `sparseIndicesBufferView=`*(self: GLTFAccessor; value) = self.setSparseIndicesBufferView(value)

template sparseIndicesByteOffset*(self: GLTFAccessor): untyped = self.getSparseIndicesByteOffset()
template `sparseIndicesByteOffset=`*(self: GLTFAccessor; value) = self.setSparseIndicesByteOffset(value)

template sparseIndicesComponentType*(self: GLTFAccessor): untyped = self.getSparseIndicesComponentType()
template `sparseIndicesComponentType=`*(self: GLTFAccessor; value) = self.setSparseIndicesComponentType(value)

template sparseValuesBufferView*(self: GLTFAccessor): untyped = self.getSparseValuesBufferView()
template `sparseValuesBufferView=`*(self: GLTFAccessor; value) = self.setSparseValuesBufferView(value)

template sparseValuesByteOffset*(self: GLTFAccessor): untyped = self.getSparseValuesByteOffset()
template `sparseValuesByteOffset=`*(self: GLTFAccessor; value) = self.setSparseValuesByteOffset(value)

const GLTFAccessor_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFAccessor]): Table[string, string] = GLTFAccessor_vmap