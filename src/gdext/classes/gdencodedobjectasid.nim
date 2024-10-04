{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setObjectId*(self: EncodedObjectAsId; id: uint64): void =
  expandMethodBind(className EncodedObjectAsId, "set_object_id", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc getObjectId*(self: EncodedObjectAsId): uint64 =
  expandMethodBind(className EncodedObjectAsId, "get_object_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

template objectId*(self: EncodedObjectAsId): untyped = self.getObjectId()
template `objectId=`*(self: EncodedObjectAsId; value) = self.setObjectId(value)

const EncodedObjectAsId_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EncodedObjectAsId]): Table[string, string] = EncodedObjectAsId_vmap