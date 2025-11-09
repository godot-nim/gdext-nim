{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(NavigationPathQueryResult3D, RefCounted)

proc setPath*(self: NavigationPathQueryResult3D; path: PackedVector3Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "set_path", 334873810)
  methodbind.ptrcall(self, [getPtr path], void)

proc getPath*(self: NavigationPathQueryResult3D): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "get_path", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc setPathTypes*(self: NavigationPathQueryResult3D; pathTypes: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "set_path_types", 3614634198)
  methodbind.ptrcall(self, [getPtr pathTypes], void)

proc getPathTypes*(self: NavigationPathQueryResult3D): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "get_path_types", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setPathRids*(self: NavigationPathQueryResult3D; pathRids: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "set_path_rids", 381264803)
  methodbind.ptrcall(self, [getPtr pathRids], void)

proc getPathRids*(self: NavigationPathQueryResult3D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "get_path_rids", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setPathOwnerIds*(self: NavigationPathQueryResult3D; pathOwnerIds: PackedInt64Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "set_path_owner_ids", 3709968205)
  methodbind.ptrcall(self, [getPtr pathOwnerIds], void)

proc getPathOwnerIds*(self: NavigationPathQueryResult3D): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "get_path_owner_ids", 235988956)
  methodbind.ptrcall(self, [], PackedInt64Array)

proc setPathLength*(self: NavigationPathQueryResult3D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "set_path_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getPathLength*(self: NavigationPathQueryResult3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "get_path_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc reset*(self: NavigationPathQueryResult3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult3D, "reset", 3218959716)
  methodbind.ptrcall(self, [], void)

template path*(self: NavigationPathQueryResult3D): untyped = self.getPath()
template `path=`*(self: NavigationPathQueryResult3D; value) = self.setPath(value)

template pathTypes*(self: NavigationPathQueryResult3D): untyped = self.getPathTypes()
template `pathTypes=`*(self: NavigationPathQueryResult3D; value) = self.setPathTypes(value)

template pathRids*(self: NavigationPathQueryResult3D): untyped = self.getPathRids()
template `pathRids=`*(self: NavigationPathQueryResult3D; value) = self.setPathRids(value)

template pathOwnerIds*(self: NavigationPathQueryResult3D): untyped = self.getPathOwnerIds()
template `pathOwnerIds=`*(self: NavigationPathQueryResult3D; value) = self.setPathOwnerIds(value)

template pathLength*(self: NavigationPathQueryResult3D): untyped = self.getPathLength()
template `pathLength=`*(self: NavigationPathQueryResult3D; value) = self.setPathLength(value)
