{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setFormat*(self: RdAttachmentFormat; pMember: RenderingDevice_DataFormat): void =
  expandMethodBind(className RdAttachmentFormat, "set_format", 565531219)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFormat*(self: RdAttachmentFormat): RenderingDevice_DataFormat =
  expandMethodBind(className RdAttachmentFormat, "get_format", 2235804183)
  var ret: encoded RenderingDevice_DataFormat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_DataFormat)

proc setSamples*(self: RdAttachmentFormat; pMember: RenderingDevice_TextureSamples): void =
  expandMethodBind(className RdAttachmentFormat, "set_samples", 3774171498)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSamples*(self: RdAttachmentFormat): RenderingDevice_TextureSamples =
  expandMethodBind(className RdAttachmentFormat, "get_samples", 407791724)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc setUsageFlags*(self: RdAttachmentFormat; pMember: uint32): void =
  expandMethodBind(className RdAttachmentFormat, "set_usage_flags", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUsageFlags*(self: RdAttachmentFormat): uint32 =
  expandMethodBind(className RdAttachmentFormat, "get_usage_flags", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template format*(self: RdAttachmentFormat): untyped = self.getFormat()
template `format=`*(self: RdAttachmentFormat; value) = self.setFormat(value)

template samples*(self: RdAttachmentFormat): untyped = self.getSamples()
template `samples=`*(self: RdAttachmentFormat; value) = self.setSamples(value)

template usageFlags*(self: RdAttachmentFormat): untyped = self.getUsageFlags()
template `usageFlags=`*(self: RdAttachmentFormat; value) = self.setUsageFlags(value)

const RdAttachmentFormat_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdAttachmentFormat]): Table[string, string] = RdAttachmentFormat_vmap