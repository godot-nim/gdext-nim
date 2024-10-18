{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setColorAttachments*(self: RdFramebufferPass; pMember: PackedInt32Array): void =
  expandMethodBind(className RdFramebufferPass, "set_color_attachments", 3614634198)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorAttachments*(self: RdFramebufferPass): PackedInt32Array =
  expandMethodBind(className RdFramebufferPass, "get_color_attachments", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setInputAttachments*(self: RdFramebufferPass; pMember: PackedInt32Array): void =
  expandMethodBind(className RdFramebufferPass, "set_input_attachments", 3614634198)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInputAttachments*(self: RdFramebufferPass): PackedInt32Array =
  expandMethodBind(className RdFramebufferPass, "get_input_attachments", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setResolveAttachments*(self: RdFramebufferPass; pMember: PackedInt32Array): void =
  expandMethodBind(className RdFramebufferPass, "set_resolve_attachments", 3614634198)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getResolveAttachments*(self: RdFramebufferPass): PackedInt32Array =
  expandMethodBind(className RdFramebufferPass, "get_resolve_attachments", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setPreserveAttachments*(self: RdFramebufferPass; pMember: PackedInt32Array): void =
  expandMethodBind(className RdFramebufferPass, "set_preserve_attachments", 3614634198)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPreserveAttachments*(self: RdFramebufferPass): PackedInt32Array =
  expandMethodBind(className RdFramebufferPass, "get_preserve_attachments", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setDepthAttachment*(self: RdFramebufferPass; pMember: int32): void =
  expandMethodBind(className RdFramebufferPass, "set_depth_attachment", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthAttachment*(self: RdFramebufferPass): int32 =
  expandMethodBind(className RdFramebufferPass, "get_depth_attachment", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template colorAttachments*(self: RdFramebufferPass): untyped = self.getColorAttachments()
template `colorAttachments=`*(self: RdFramebufferPass; value) = self.setColorAttachments(value)

template inputAttachments*(self: RdFramebufferPass): untyped = self.getInputAttachments()
template `inputAttachments=`*(self: RdFramebufferPass; value) = self.setInputAttachments(value)

template resolveAttachments*(self: RdFramebufferPass): untyped = self.getResolveAttachments()
template `resolveAttachments=`*(self: RdFramebufferPass; value) = self.setResolveAttachments(value)

template preserveAttachments*(self: RdFramebufferPass): untyped = self.getPreserveAttachments()
template `preserveAttachments=`*(self: RdFramebufferPass; value) = self.setPreserveAttachments(value)

template depthAttachment*(self: RdFramebufferPass): untyped = self.getDepthAttachment()
template `depthAttachment=`*(self: RdFramebufferPass; value) = self.setDepthAttachment(value)

const RdFramebufferPass_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdFramebufferPass]): Table[string, string] = RdFramebufferPass_vmap