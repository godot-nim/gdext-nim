{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc resourceChanged*(self: CollisionShape3D; resource: gdref Resource): void =
  expandMethodBind(className CollisionShape3D, "resource_changed", 968641751)
  methodbind.ptrcall(self, [getPtr resource])

proc setShape*(self: CollisionShape3D; shape: gdref Shape3D): void =
  expandMethodBind(className CollisionShape3D, "set_shape", 1549710052)
  methodbind.ptrcall(self, [getPtr shape])

proc getShape*(self: CollisionShape3D): gdref Shape3D =
  expandMethodBind(className CollisionShape3D, "get_shape", 3214262478)
  var ret: encoded gdref Shape3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Shape3D)

proc setDisabled*(self: CollisionShape3D; enable: bool): void =
  expandMethodBind(className CollisionShape3D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isDisabled*(self: CollisionShape3D): bool =
  expandMethodBind(className CollisionShape3D, "is_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc makeConvexFromSiblings*(self: CollisionShape3D): void =
  expandMethodBind(className CollisionShape3D, "make_convex_from_siblings", 3218959716)
  methodbind.ptrcall(self, [])

proc setDebugColor*(self: CollisionShape3D; color: Color): void =
  expandMethodBind(className CollisionShape3D, "set_debug_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getDebugColor*(self: CollisionShape3D): Color =
  expandMethodBind(className CollisionShape3D, "get_debug_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setEnableDebugFill*(self: CollisionShape3D; enable: bool): void =
  expandMethodBind(className CollisionShape3D, "set_enable_debug_fill", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getEnableDebugFill*(self: CollisionShape3D): bool =
  expandMethodBind(className CollisionShape3D, "get_enable_debug_fill", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template shape*(self: CollisionShape3D): untyped = self.getShape()
template `shape=`*(self: CollisionShape3D; value) = self.setShape(value)

template disabled*(self: CollisionShape3D): untyped = self.isDisabled()
template `disabled=`*(self: CollisionShape3D; value) = self.setDisabled(value)

template debugColor*(self: CollisionShape3D): untyped = self.getDebugColor()
template `debugColor=`*(self: CollisionShape3D; value) = self.setDebugColor(value)

template debugFill*(self: CollisionShape3D): untyped = self.getEnableDebugFill()
template `debugFill=`*(self: CollisionShape3D; value) = self.setEnableDebugFill(value)
