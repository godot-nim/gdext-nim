{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc wait*(self: Semaphore): void =
  expandMethodBind(className Semaphore, "wait", 3218959716)
  methodbind.ptrcall(self, nil)

proc tryWait*(self: Semaphore): bool =
  expandMethodBind(className Semaphore, "try_wait", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc post*(self: Semaphore): void =
  expandMethodBind(className Semaphore, "post", 3218959716)
  methodbind.ptrcall(self, nil)

const Semaphore_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Semaphore]): Table[string, string] = Semaphore_vmap