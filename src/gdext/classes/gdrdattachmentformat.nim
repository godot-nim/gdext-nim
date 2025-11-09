{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDAttachmentFormat, RefCounted)

proc setFormat*(self: RDAttachmentFormat; pMember: RenderingDevice_DataFormat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDAttachmentFormat, "set_format", 565531219)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getFormat*(self: RDAttachmentFormat): RenderingDevice_DataFormat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDAttachmentFormat, "get_format", 2235804183)
  methodbind.ptrcall(self, [], RenderingDevice_DataFormat)

proc setSamples*(self: RDAttachmentFormat; pMember: RenderingDevice_TextureSamples): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDAttachmentFormat, "set_samples", 3774171498)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getSamples*(self: RDAttachmentFormat): RenderingDevice_TextureSamples =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDAttachmentFormat, "get_samples", 407791724)
  methodbind.ptrcall(self, [], RenderingDevice_TextureSamples)

proc setUsageFlags*(self: RDAttachmentFormat; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDAttachmentFormat, "set_usage_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getUsageFlags*(self: RDAttachmentFormat): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDAttachmentFormat, "get_usage_flags", 3905245786)
  methodbind.ptrcall(self, [], uint32)

template format*(self: RDAttachmentFormat): untyped = self.getFormat()
template `format=`*(self: RDAttachmentFormat; value) = self.setFormat(value)

template samples*(self: RDAttachmentFormat): untyped = self.getSamples()
template `samples=`*(self: RDAttachmentFormat; value) = self.setSamples(value)

template usageFlags*(self: RDAttachmentFormat): untyped = self.getUsageFlags()
template `usageFlags=`*(self: RDAttachmentFormat; value) = self.setUsageFlags(value)
