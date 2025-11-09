{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(NavigationPathQueryResult2D, RefCounted)

proc setPath*(self: NavigationPathQueryResult2D; path: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "set_path", 1509147220)
  methodbind.ptrcall(self, [getPtr path], void)

proc getPath*(self: NavigationPathQueryResult2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "get_path", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc setPathTypes*(self: NavigationPathQueryResult2D; pathTypes: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "set_path_types", 3614634198)
  methodbind.ptrcall(self, [getPtr pathTypes], void)

proc getPathTypes*(self: NavigationPathQueryResult2D): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "get_path_types", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setPathRids*(self: NavigationPathQueryResult2D; pathRids: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "set_path_rids", 381264803)
  methodbind.ptrcall(self, [getPtr pathRids], void)

proc getPathRids*(self: NavigationPathQueryResult2D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "get_path_rids", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setPathOwnerIds*(self: NavigationPathQueryResult2D; pathOwnerIds: PackedInt64Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "set_path_owner_ids", 3709968205)
  methodbind.ptrcall(self, [getPtr pathOwnerIds], void)

proc getPathOwnerIds*(self: NavigationPathQueryResult2D): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "get_path_owner_ids", 235988956)
  methodbind.ptrcall(self, [], PackedInt64Array)

proc setPathLength*(self: NavigationPathQueryResult2D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "set_path_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getPathLength*(self: NavigationPathQueryResult2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "get_path_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc reset*(self: NavigationPathQueryResult2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryResult2D, "reset", 3218959716)
  methodbind.ptrcall(self, [], void)

template path*(self: NavigationPathQueryResult2D): untyped = self.getPath()
template `path=`*(self: NavigationPathQueryResult2D; value) = self.setPath(value)

template pathTypes*(self: NavigationPathQueryResult2D): untyped = self.getPathTypes()
template `pathTypes=`*(self: NavigationPathQueryResult2D; value) = self.setPathTypes(value)

template pathRids*(self: NavigationPathQueryResult2D): untyped = self.getPathRids()
template `pathRids=`*(self: NavigationPathQueryResult2D; value) = self.setPathRids(value)

template pathOwnerIds*(self: NavigationPathQueryResult2D): untyped = self.getPathOwnerIds()
template `pathOwnerIds=`*(self: NavigationPathQueryResult2D; value) = self.setPathOwnerIds(value)

template pathLength*(self: NavigationPathQueryResult2D): untyped = self.getPathLength()
template `pathLength=`*(self: NavigationPathQueryResult2D; value) = self.setPathLength(value)
