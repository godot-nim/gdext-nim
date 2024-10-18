{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setCustomSolverBias*(self: Shape2D; bias: Float): void =
  expandMethodBind(className Shape2D, "set_custom_solver_bias", 373806689)
  var `?param` = [getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomSolverBias*(self: Shape2D): Float =
  expandMethodBind(className Shape2D, "get_custom_solver_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc collide*(self: Shape2D; localXform: Transform2D; withShape: gdref Shape2D; shapeXform: Transform2D): bool =
  expandMethodBind(className Shape2D, "collide", 3709843132)
  var `?param` = [getPtr localXform, getPtr withShape, getPtr shapeXform]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc collideWithMotion*(self: Shape2D; localXform: Transform2D; localMotion: Vector2; withShape: gdref Shape2D; shapeXform: Transform2D; shapeMotion: Vector2): bool =
  expandMethodBind(className Shape2D, "collide_with_motion", 2869556801)
  var `?param` = [getPtr localXform, getPtr localMotion, getPtr withShape, getPtr shapeXform, getPtr shapeMotion]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc collideAndGetContacts*(self: Shape2D; localXform: Transform2D; withShape: gdref Shape2D; shapeXform: Transform2D): PackedVector2Array =
  expandMethodBind(className Shape2D, "collide_and_get_contacts", 3056932662)
  var `?param` = [getPtr localXform, getPtr withShape, getPtr shapeXform]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc collideWithMotionAndGetContacts*(self: Shape2D; localXform: Transform2D; localMotion: Vector2; withShape: gdref Shape2D; shapeXform: Transform2D; shapeMotion: Vector2): PackedVector2Array =
  expandMethodBind(className Shape2D, "collide_with_motion_and_get_contacts", 3620351573)
  var `?param` = [getPtr localXform, getPtr localMotion, getPtr withShape, getPtr shapeXform, getPtr shapeMotion]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc draw*(self: Shape2D; canvasItem: Rid; color: Color): void =
  expandMethodBind(className Shape2D, "draw", 2948539648)
  var `?param` = [getPtr canvasItem, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRect*(self: Shape2D): Rect2 =
  expandMethodBind(className Shape2D, "get_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

template customSolverBias*(self: Shape2D): untyped = self.getCustomSolverBias()
template `customSolverBias=`*(self: Shape2D; value) = self.setCustomSolverBias(value)

const Shape2D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Shape2D]): Table[string, string] = Shape2D_vmap