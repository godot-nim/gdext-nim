{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setPath*(self: NavigationPathQueryResult2D; path: PackedVector2Array): void =
  expandMethodBind(className NavigationPathQueryResult2D, "set_path", 1509147220)
  methodbind.ptrcall(self, [getPtr path])

proc getPath*(self: NavigationPathQueryResult2D): PackedVector2Array =
  expandMethodBind(className NavigationPathQueryResult2D, "get_path", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setPathTypes*(self: NavigationPathQueryResult2D; pathTypes: PackedInt32Array): void =
  expandMethodBind(className NavigationPathQueryResult2D, "set_path_types", 3614634198)
  methodbind.ptrcall(self, [getPtr pathTypes])

proc getPathTypes*(self: NavigationPathQueryResult2D): PackedInt32Array =
  expandMethodBind(className NavigationPathQueryResult2D, "get_path_types", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setPathRids*(self: NavigationPathQueryResult2D; pathRids: TypedArray[RID]): void =
  expandMethodBind(className NavigationPathQueryResult2D, "set_path_rids", 381264803)
  methodbind.ptrcall(self, [getPtr pathRids])

proc getPathRids*(self: NavigationPathQueryResult2D): TypedArray[RID] =
  expandMethodBind(className NavigationPathQueryResult2D, "get_path_rids", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc setPathOwnerIds*(self: NavigationPathQueryResult2D; pathOwnerIds: PackedInt64Array): void =
  expandMethodBind(className NavigationPathQueryResult2D, "set_path_owner_ids", 3709968205)
  methodbind.ptrcall(self, [getPtr pathOwnerIds])

proc getPathOwnerIds*(self: NavigationPathQueryResult2D): PackedInt64Array =
  expandMethodBind(className NavigationPathQueryResult2D, "get_path_owner_ids", 235988956)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc reset*(self: NavigationPathQueryResult2D): void =
  expandMethodBind(className NavigationPathQueryResult2D, "reset", 3218959716)
  methodbind.ptrcall(self, [])

template path*(self: NavigationPathQueryResult2D): untyped = self.getPath()
template `path=`*(self: NavigationPathQueryResult2D; value) = self.setPath(value)

template pathTypes*(self: NavigationPathQueryResult2D): untyped = self.getPathTypes()
template `pathTypes=`*(self: NavigationPathQueryResult2D; value) = self.setPathTypes(value)

template pathRids*(self: NavigationPathQueryResult2D): untyped = self.getPathRids()
template `pathRids=`*(self: NavigationPathQueryResult2D; value) = self.setPathRids(value)

template pathOwnerIds*(self: NavigationPathQueryResult2D): untyped = self.getPathOwnerIds()
template `pathOwnerIds=`*(self: NavigationPathQueryResult2D; value) = self.setPathOwnerIds(value)

const NavigationPathQueryResult2D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationPathQueryResult2D]): Table[string, string] = NavigationPathQueryResult2D_vmap