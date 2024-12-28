{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc pack*(self: PackedDataContainer; value: Variant): Error =
  expandMethodBind(className PackedDataContainer, "pack", 966674026)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr value], addr ret)
  (addr ret).decode_result(Error)

proc size*(self: PackedDataContainer): int32 =
  expandMethodBind(className PackedDataContainer, "size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

const PackedDataContainer_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PackedDataContainer]): Table[string, string] = PackedDataContainer_vmap