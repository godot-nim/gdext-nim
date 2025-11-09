{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(VisibleOnScreenNotifier3D, VisualInstance3D)

proc setAabb*(self: VisibleOnScreenNotifier3D; rect: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenNotifier3D, "set_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr rect], void)

proc isOnScreen*(self: VisibleOnScreenNotifier3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenNotifier3D, "is_on_screen", 36873697)
  methodbind.ptrcall(self, [], bool)

template aabb*(self: VisibleOnScreenNotifier3D): untyped = self.getAabb()
template `aabb=`*(self: VisibleOnScreenNotifier3D; value) = self.setAabb(value)
