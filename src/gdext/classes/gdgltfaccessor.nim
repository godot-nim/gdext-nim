{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFAccessor, Resource)

proc fromDictionary*(_: typedesc[GLTFAccessor]; dictionary: Dictionary[Variant, Variant]): gdref GLTFAccessor =
  expandMethodBind(className GLTFAccessor, "from_dictionary", 3495091019)
  nilCheck dictionary
  var ret: encoded gdref GLTFAccessor
  methodbind.ptrcall([getPtr dictionary], addr ret)
  (addr ret).decode_result(gdref GLTFAccessor)

proc toDictionary*(self: GLTFAccessor): Dictionary[Variant, Variant] =
  expandMethodBind(className GLTFAccessor, "to_dictionary", 3102165223)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc getBufferView*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_buffer_view", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setBufferView*(self: GLTFAccessor; bufferView: int32): void =
  expandMethodBind(className GLTFAccessor, "set_buffer_view", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferView])

proc getByteOffset*(self: GLTFAccessor): int64 =
  expandMethodBind(className GLTFAccessor, "get_byte_offset", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setByteOffset*(self: GLTFAccessor; byteOffset: int64): void =
  expandMethodBind(className GLTFAccessor, "set_byte_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr byteOffset])

proc getComponentType*(self: GLTFAccessor): GLTFAccessor_GLTFComponentType =
  expandMethodBind(className GLTFAccessor, "get_component_type", 852227802)
  var ret: encoded GLTFAccessor_GLTFComponentType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GLTFAccessor_GLTFComponentType)

proc setComponentType*(self: GLTFAccessor; componentType: GLTFAccessor_GLTFComponentType): void =
  expandMethodBind(className GLTFAccessor, "set_component_type", 1780020221)
  methodbind.ptrcall(self, [getPtr componentType])

proc getNormalized*(self: GLTFAccessor): bool =
  expandMethodBind(className GLTFAccessor, "get_normalized", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setNormalized*(self: GLTFAccessor; normalized: bool): void =
  expandMethodBind(className GLTFAccessor, "set_normalized", 2586408642)
  methodbind.ptrcall(self, [getPtr normalized])

proc getCount*(self: GLTFAccessor): int64 =
  expandMethodBind(className GLTFAccessor, "get_count", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setCount*(self: GLTFAccessor; count: int64): void =
  expandMethodBind(className GLTFAccessor, "set_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getAccessorType*(self: GLTFAccessor): GLTFAccessor_GLTFAccessorType =
  expandMethodBind(className GLTFAccessor, "get_accessor_type", 1998183368)
  var ret: encoded GLTFAccessor_GLTFAccessorType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GLTFAccessor_GLTFAccessorType)

proc setAccessorType*(self: GLTFAccessor; accessorType: GLTFAccessor_GLTFAccessorType): void =
  expandMethodBind(className GLTFAccessor, "set_accessor_type", 2347728198)
  methodbind.ptrcall(self, [getPtr accessorType])

proc getType*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_type", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setType*(self: GLTFAccessor; `type`: int32): void =
  expandMethodBind(className GLTFAccessor, "set_type", 1286410249)
  methodbind.ptrcall(self, [getPtr `type`])

proc getMin*(self: GLTFAccessor): PackedFloat64Array =
  expandMethodBind(className GLTFAccessor, "get_min", 547233126)
  var ret: encoded PackedFloat64Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedFloat64Array)

proc setMin*(self: GLTFAccessor; min: PackedFloat64Array): void =
  expandMethodBind(className GLTFAccessor, "set_min", 2576592201)
  methodbind.ptrcall(self, [getPtr min])

proc getMax*(self: GLTFAccessor): PackedFloat64Array =
  expandMethodBind(className GLTFAccessor, "get_max", 547233126)
  var ret: encoded PackedFloat64Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedFloat64Array)

proc setMax*(self: GLTFAccessor; max: PackedFloat64Array): void =
  expandMethodBind(className GLTFAccessor, "set_max", 2576592201)
  methodbind.ptrcall(self, [getPtr max])

proc getSparseCount*(self: GLTFAccessor): int64 =
  expandMethodBind(className GLTFAccessor, "get_sparse_count", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setSparseCount*(self: GLTFAccessor; sparseCount: int64): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_count", 1286410249)
  methodbind.ptrcall(self, [getPtr sparseCount])

proc getSparseIndicesBufferView*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_sparse_indices_buffer_view", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSparseIndicesBufferView*(self: GLTFAccessor; sparseIndicesBufferView: int32): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_indices_buffer_view", 1286410249)
  methodbind.ptrcall(self, [getPtr sparseIndicesBufferView])

proc getSparseIndicesByteOffset*(self: GLTFAccessor): int64 =
  expandMethodBind(className GLTFAccessor, "get_sparse_indices_byte_offset", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setSparseIndicesByteOffset*(self: GLTFAccessor; sparseIndicesByteOffset: int64): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_indices_byte_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr sparseIndicesByteOffset])

proc getSparseIndicesComponentType*(self: GLTFAccessor): GLTFAccessor_GLTFComponentType =
  expandMethodBind(className GLTFAccessor, "get_sparse_indices_component_type", 852227802)
  var ret: encoded GLTFAccessor_GLTFComponentType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GLTFAccessor_GLTFComponentType)

proc setSparseIndicesComponentType*(self: GLTFAccessor; sparseIndicesComponentType: GLTFAccessor_GLTFComponentType): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_indices_component_type", 1780020221)
  methodbind.ptrcall(self, [getPtr sparseIndicesComponentType])

proc getSparseValuesBufferView*(self: GLTFAccessor): int32 =
  expandMethodBind(className GLTFAccessor, "get_sparse_values_buffer_view", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSparseValuesBufferView*(self: GLTFAccessor; sparseValuesBufferView: int32): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_values_buffer_view", 1286410249)
  methodbind.ptrcall(self, [getPtr sparseValuesBufferView])

proc getSparseValuesByteOffset*(self: GLTFAccessor): int64 =
  expandMethodBind(className GLTFAccessor, "get_sparse_values_byte_offset", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setSparseValuesByteOffset*(self: GLTFAccessor; sparseValuesByteOffset: int64): void =
  expandMethodBind(className GLTFAccessor, "set_sparse_values_byte_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr sparseValuesByteOffset])

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
