{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc initRef*(self: RefCounted): bool =
  expandMethodBind(className RefCounted, "init_ref", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc reference*(self: RefCounted): bool =
  expandMethodBind(className RefCounted, "reference", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc unreference*(self: RefCounted): bool =
  expandMethodBind(className RefCounted, "unreference", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getReferenceCount*(self: RefCounted): int32 =
  expandMethodBind(className RefCounted, "get_reference_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

const RefCounted_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RefCounted]): Table[string, string] = RefCounted_vmap