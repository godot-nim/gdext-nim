{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getCanvas*(self: World2D): Rid =
  expandMethodBind(className World2D, "get_canvas", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getSpace*(self: World2D): Rid =
  expandMethodBind(className World2D, "get_space", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getNavigationMap*(self: World2D): Rid =
  expandMethodBind(className World2D, "get_navigation_map", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getDirectSpaceState*(self: World2D): PhysicsDirectSpaceState2D =
  expandMethodBind(className World2D, "get_direct_space_state", 2506717822)
  var ret: encoded PhysicsDirectSpaceState2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PhysicsDirectSpaceState2D)

template canvas*(self: World2D): untyped = self.getCanvas()

template space*(self: World2D): untyped = self.getSpace()

template navigationMap*(self: World2D): untyped = self.getNavigationMap()

template directSpaceState*(self: World2D): untyped = self.getDirectSpaceState()

const World2D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[World2D]): Table[string, string] = World2D_vmap