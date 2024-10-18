{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setPath*(self: NavigationPathQueryResult3D; path: PackedVector3Array): void =
  expandMethodBind(className NavigationPathQueryResult3D, "set_path", 334873810)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPath*(self: NavigationPathQueryResult3D): PackedVector3Array =
  expandMethodBind(className NavigationPathQueryResult3D, "get_path", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc setPathTypes*(self: NavigationPathQueryResult3D; pathTypes: PackedInt32Array): void =
  expandMethodBind(className NavigationPathQueryResult3D, "set_path_types", 3614634198)
  var `?param` = [getPtr pathTypes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathTypes*(self: NavigationPathQueryResult3D): PackedInt32Array =
  expandMethodBind(className NavigationPathQueryResult3D, "get_path_types", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setPathRids*(self: NavigationPathQueryResult3D; pathRids: TypedArray[Rid]): void =
  expandMethodBind(className NavigationPathQueryResult3D, "set_path_rids", 381264803)
  var `?param` = [getPtr pathRids]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathRids*(self: NavigationPathQueryResult3D): TypedArray[Rid] =
  expandMethodBind(className NavigationPathQueryResult3D, "get_path_rids", 3995934104)
  var ret: encoded TypedArray[Rid]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Rid])

proc setPathOwnerIds*(self: NavigationPathQueryResult3D; pathOwnerIds: PackedInt64Array): void =
  expandMethodBind(className NavigationPathQueryResult3D, "set_path_owner_ids", 3709968205)
  var `?param` = [getPtr pathOwnerIds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathOwnerIds*(self: NavigationPathQueryResult3D): PackedInt64Array =
  expandMethodBind(className NavigationPathQueryResult3D, "get_path_owner_ids", 235988956)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc reset*(self: NavigationPathQueryResult3D): void =
  expandMethodBind(className NavigationPathQueryResult3D, "reset", 3218959716)
  methodbind.ptrcall(self, nil)

template path*(self: NavigationPathQueryResult3D): untyped = self.getPath()
template `path=`*(self: NavigationPathQueryResult3D; value) = self.setPath(value)

template pathTypes*(self: NavigationPathQueryResult3D): untyped = self.getPathTypes()
template `pathTypes=`*(self: NavigationPathQueryResult3D; value) = self.setPathTypes(value)

template pathRids*(self: NavigationPathQueryResult3D): untyped = self.getPathRids()
template `pathRids=`*(self: NavigationPathQueryResult3D; value) = self.setPathRids(value)

template pathOwnerIds*(self: NavigationPathQueryResult3D): untyped = self.getPathOwnerIds()
template `pathOwnerIds=`*(self: NavigationPathQueryResult3D; value) = self.setPathOwnerIds(value)

const NavigationPathQueryResult3D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationPathQueryResult3D]): Table[string, string] = NavigationPathQueryResult3D_vmap