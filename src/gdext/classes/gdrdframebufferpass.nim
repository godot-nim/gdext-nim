{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDFramebufferPass, RefCounted)

const AttachmentUnused* = -1

proc setColorAttachments*(self: RDFramebufferPass; pMember: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "set_color_attachments", 3614634198)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getColorAttachments*(self: RDFramebufferPass): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "get_color_attachments", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setInputAttachments*(self: RDFramebufferPass; pMember: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "set_input_attachments", 3614634198)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getInputAttachments*(self: RDFramebufferPass): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "get_input_attachments", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setResolveAttachments*(self: RDFramebufferPass; pMember: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "set_resolve_attachments", 3614634198)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getResolveAttachments*(self: RDFramebufferPass): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "get_resolve_attachments", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setPreserveAttachments*(self: RDFramebufferPass; pMember: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "set_preserve_attachments", 3614634198)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getPreserveAttachments*(self: RDFramebufferPass): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "get_preserve_attachments", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setDepthAttachment*(self: RDFramebufferPass; pMember: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "set_depth_attachment", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getDepthAttachment*(self: RDFramebufferPass): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDFramebufferPass, "get_depth_attachment", 3905245786)
  methodbind.ptrcall(self, [], int32)

template colorAttachments*(self: RDFramebufferPass): untyped = self.getColorAttachments()
template `colorAttachments=`*(self: RDFramebufferPass; value) = self.setColorAttachments(value)

template inputAttachments*(self: RDFramebufferPass): untyped = self.getInputAttachments()
template `inputAttachments=`*(self: RDFramebufferPass; value) = self.setInputAttachments(value)

template resolveAttachments*(self: RDFramebufferPass): untyped = self.getResolveAttachments()
template `resolveAttachments=`*(self: RDFramebufferPass; value) = self.setResolveAttachments(value)

template preserveAttachments*(self: RDFramebufferPass): untyped = self.getPreserveAttachments()
template `preserveAttachments=`*(self: RDFramebufferPass; value) = self.setPreserveAttachments(value)

template depthAttachment*(self: RDFramebufferPass): untyped = self.getDepthAttachment()
template `depthAttachment=`*(self: RDFramebufferPass; value) = self.setDepthAttachment(value)
