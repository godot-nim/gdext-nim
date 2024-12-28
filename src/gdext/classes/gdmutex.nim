{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc lock*(self: Mutex): void =
  expandMethodBind(className Mutex, "lock", 3218959716)
  methodbind.ptrcall(self, [])

proc tryLock*(self: Mutex): bool =
  expandMethodBind(className Mutex, "try_lock", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc unlock*(self: Mutex): void =
  expandMethodBind(className Mutex, "unlock", 3218959716)
  methodbind.ptrcall(self, [])

const Mutex_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Mutex]): Table[string, string] = Mutex_vmap