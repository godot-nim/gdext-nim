{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(OggPacketSequence, Resource)

proc setPacketData*(self: OggPacketSequence; packetData: TypedArray[Array]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OggPacketSequence, "set_packet_data", 381264803)
  methodbind.ptrcall(self, [getPtr packetData], void)

proc getPacketData*(self: OggPacketSequence): TypedArray[Array] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OggPacketSequence, "get_packet_data", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Array])

proc setPacketGranulePositions*(self: OggPacketSequence; granulePositions: PackedInt64Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OggPacketSequence, "set_packet_granule_positions", 3709968205)
  methodbind.ptrcall(self, [getPtr granulePositions], void)

proc getPacketGranulePositions*(self: OggPacketSequence): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OggPacketSequence, "get_packet_granule_positions", 235988956)
  methodbind.ptrcall(self, [], PackedInt64Array)

proc setSamplingRate*(self: OggPacketSequence; samplingRate: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OggPacketSequence, "set_sampling_rate", 373806689)
  methodbind.ptrcall(self, [getPtr samplingRate], void)

proc getSamplingRate*(self: OggPacketSequence): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OggPacketSequence, "get_sampling_rate", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getLength*(self: OggPacketSequence): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OggPacketSequence, "get_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

template packetData*(self: OggPacketSequence): untyped = self.getPacketData()
template `packetData=`*(self: OggPacketSequence; value) = self.setPacketData(value)

template granulePositions*(self: OggPacketSequence): untyped = self.getPacketGranulePositions()
template `granulePositions=`*(self: OggPacketSequence; value) = self.setPacketGranulePositions(value)

template samplingRate*(self: OggPacketSequence): untyped = self.getSamplingRate()
template `samplingRate=`*(self: OggPacketSequence; value) = self.setSamplingRate(value)
