{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EncodedObjectAsID, RefCounted)

proc setObjectId*(self: EncodedObjectAsID; id: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EncodedObjectAsID, "set_object_id", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc getObjectId*(self: EncodedObjectAsID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EncodedObjectAsID, "get_object_id", 3905245786)
  methodbind.ptrcall(self, [], uint64)

template objectId*(self: EncodedObjectAsID): untyped = self.getObjectId()
template `objectId=`*(self: EncodedObjectAsID; value) = self.setObjectId(value)
