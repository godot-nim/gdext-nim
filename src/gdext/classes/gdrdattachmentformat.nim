{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setFormat*(self: RDAttachmentFormat; pMember: RenderingDevice_DataFormat): void =
  expandMethodBind(className RDAttachmentFormat, "set_format", 565531219)
  methodbind.ptrcall(self, [getPtr pMember])

proc getFormat*(self: RDAttachmentFormat): RenderingDevice_DataFormat =
  expandMethodBind(className RDAttachmentFormat, "get_format", 2235804183)
  var ret: encoded RenderingDevice_DataFormat
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_DataFormat)

proc setSamples*(self: RDAttachmentFormat; pMember: RenderingDevice_TextureSamples): void =
  expandMethodBind(className RDAttachmentFormat, "set_samples", 3774171498)
  methodbind.ptrcall(self, [getPtr pMember])

proc getSamples*(self: RDAttachmentFormat): RenderingDevice_TextureSamples =
  expandMethodBind(className RDAttachmentFormat, "get_samples", 407791724)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc setUsageFlags*(self: RDAttachmentFormat; pMember: uint32): void =
  expandMethodBind(className RDAttachmentFormat, "set_usage_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember])

proc getUsageFlags*(self: RDAttachmentFormat): uint32 =
  expandMethodBind(className RDAttachmentFormat, "get_usage_flags", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

template format*(self: RDAttachmentFormat): untyped = self.getFormat()
template `format=`*(self: RDAttachmentFormat; value) = self.setFormat(value)

template samples*(self: RDAttachmentFormat): untyped = self.getSamples()
template `samples=`*(self: RDAttachmentFormat; value) = self.setSamples(value)

template usageFlags*(self: RDAttachmentFormat): untyped = self.getUsageFlags()
template `usageFlags=`*(self: RDAttachmentFormat; value) = self.setUsageFlags(value)

const RDAttachmentFormat_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDAttachmentFormat]): Table[string, string] = RDAttachmentFormat_vmap