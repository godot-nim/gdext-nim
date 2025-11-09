{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(CollisionShape3D, Node3D)

proc resourceChanged*(self: CollisionShape3D; resource: gdref Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "resource_changed", 968641751)
  methodbind.ptrcall(self, [getPtr resource], void)

proc setShape*(self: CollisionShape3D; shape: gdref Shape3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "set_shape", 1549710052)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: CollisionShape3D): gdref Shape3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "get_shape", 3214262478)
  methodbind.ptrcall(self, [], gdref Shape3D)

proc setDisabled*(self: CollisionShape3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDisabled*(self: CollisionShape3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "is_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc makeConvexFromSiblings*(self: CollisionShape3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "make_convex_from_siblings", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setDebugColor*(self: CollisionShape3D; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "set_debug_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getDebugColor*(self: CollisionShape3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "get_debug_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setEnableDebugFill*(self: CollisionShape3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "set_enable_debug_fill", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getEnableDebugFill*(self: CollisionShape3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape3D, "get_enable_debug_fill", 36873697)
  methodbind.ptrcall(self, [], bool)

template shape*(self: CollisionShape3D): untyped = self.getShape()
template `shape=`*(self: CollisionShape3D; value) = self.setShape(value)

template disabled*(self: CollisionShape3D): untyped = self.isDisabled()
template `disabled=`*(self: CollisionShape3D; value) = self.setDisabled(value)

template debugColor*(self: CollisionShape3D): untyped = self.getDebugColor()
template `debugColor=`*(self: CollisionShape3D; value) = self.setDebugColor(value)

template debugFill*(self: CollisionShape3D): untyped = self.getEnableDebugFill()
template `debugFill=`*(self: CollisionShape3D; value) = self.setEnableDebugFill(value)
