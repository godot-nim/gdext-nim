{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getRef*(self: WeakRef): Variant =
  expandMethodBind(className WeakRef, "get_ref", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Variant)