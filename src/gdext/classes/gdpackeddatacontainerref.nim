{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc size*(self: PackedDataContainerRef): int32 =
  expandMethodBind(className PackedDataContainerRef, "size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

const PackedDataContainerRef_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PackedDataContainerRef]): Table[string, string] = PackedDataContainerRef_vmap