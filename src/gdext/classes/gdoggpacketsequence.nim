{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc setPacketData*(self: OggPacketSequence; packetData: TypedArray[Array]): void =
  expandMethodBind(className OggPacketSequence, "set_packet_data", 381264803)
  var `?param` = [getPtr packetData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPacketData*(self: OggPacketSequence): TypedArray[Array] =
  expandMethodBind(className OggPacketSequence, "get_packet_data", 3995934104)
  var ret: encoded TypedArray[Array]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Array])

proc setPacketGranulePositions*(self: OggPacketSequence; granulePositions: PackedInt64Array): void =
  expandMethodBind(className OggPacketSequence, "set_packet_granule_positions", 3709968205)
  var `?param` = [getPtr granulePositions]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPacketGranulePositions*(self: OggPacketSequence): PackedInt64Array =
  expandMethodBind(className OggPacketSequence, "get_packet_granule_positions", 235988956)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc setSamplingRate*(self: OggPacketSequence; samplingRate: Float): void =
  expandMethodBind(className OggPacketSequence, "set_sampling_rate", 373806689)
  var `?param` = [getPtr samplingRate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSamplingRate*(self: OggPacketSequence): Float =
  expandMethodBind(className OggPacketSequence, "get_sampling_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getLength*(self: OggPacketSequence): Float =
  expandMethodBind(className OggPacketSequence, "get_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template packetData*(self: OggPacketSequence): untyped = self.getPacketData()
template `packetData=`*(self: OggPacketSequence; value) = self.setPacketData(value)

template granulePositions*(self: OggPacketSequence): untyped = self.getPacketGranulePositions()
template `granulePositions=`*(self: OggPacketSequence; value) = self.setPacketGranulePositions(value)

template samplingRate*(self: OggPacketSequence): untyped = self.getSamplingRate()
template `samplingRate=`*(self: OggPacketSequence; value) = self.setSamplingRate(value)

const OggPacketSequence_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OggPacketSequence]): Table[string, string] = OggPacketSequence_vmap