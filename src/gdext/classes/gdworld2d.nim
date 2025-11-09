{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(World2D, Resource)

proc getCanvas*(self: World2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World2D, "get_canvas", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getNavigationMap*(self: World2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World2D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getSpace*(self: World2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World2D, "get_space", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getDirectSpaceState*(self: World2D): PhysicsDirectSpaceState2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className World2D, "get_direct_space_state", 2506717822)
  methodbind.ptrcall(self, [], PhysicsDirectSpaceState2D)

template canvas*(self: World2D): untyped = self.getCanvas()

template navigationMap*(self: World2D): untyped = self.getNavigationMap()

template space*(self: World2D): untyped = self.getSpace()

template directSpaceState*(self: World2D): untyped = self.getDirectSpaceState()
