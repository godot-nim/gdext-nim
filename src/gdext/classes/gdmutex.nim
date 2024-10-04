{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc lock*(self: Mutex): void =
  expandMethodBind(className Mutex, "lock", 3218959716)
  methodbind.ptrcall(self, nil)

proc tryLock*(self: Mutex): bool =
  expandMethodBind(className Mutex, "try_lock", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc unlock*(self: Mutex): void =
  expandMethodBind(className Mutex, "unlock", 3218959716)
  methodbind.ptrcall(self, nil)

const Mutex_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Mutex]): Table[string, string] = Mutex_vmap