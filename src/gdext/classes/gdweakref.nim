{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getRef*(self: WeakRef): Variant =
  expandMethodBind(className WeakRef, "get_ref", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

const WeakRef_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WeakRef]): Table[string, string] = WeakRef_vmap