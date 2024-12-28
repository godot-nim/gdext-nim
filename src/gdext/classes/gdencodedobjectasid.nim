{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setObjectId*(self: EncodedObjectAsID; id: uint64): void =
  expandMethodBind(className EncodedObjectAsID, "set_object_id", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc getObjectId*(self: EncodedObjectAsID): uint64 =
  expandMethodBind(className EncodedObjectAsID, "get_object_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

template objectId*(self: EncodedObjectAsID): untyped = self.getObjectId()
template `objectId=`*(self: EncodedObjectAsID; value) = self.setObjectId(value)

const EncodedObjectAsID_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EncodedObjectAsID]): Table[string, string] = EncodedObjectAsID_vmap