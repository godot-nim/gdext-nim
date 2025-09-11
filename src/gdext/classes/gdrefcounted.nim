{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(RefCounted, Object)

proc initRef*(self: RefCounted): bool =
  expandMethodBind(className RefCounted, "init_ref", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc reference*(self: RefCounted): bool =
  expandMethodBind(className RefCounted, "reference", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc unreference*(self: RefCounted): bool =
  expandMethodBind(className RefCounted, "unreference", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getReferenceCount*(self: RefCounted): int32 =
  expandMethodBind(className RefCounted, "get_reference_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)
