{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrnode3d; export gdxrnode3d

expandOnClassImported(XRController3D, XRNode3D)

proc isButtonPressed*(self: XRController3D; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRController3D, "is_button_pressed", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getInput*(self: XRController3D; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRController3D, "get_input", 2760726917)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc getFloat*(self: XRController3D; name: StringName): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRController3D, "get_float", 2349060816)
  methodbind.ptrcall(self, [getPtr name], Float)

proc getVector2*(self: XRController3D; name: StringName): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRController3D, "get_vector2", 3100822709)
  methodbind.ptrcall(self, [getPtr name], Vector2)

proc getTrackerHand*(self: XRController3D): XRPositionalTracker_TrackerHand =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRController3D, "get_tracker_hand", 4181770860)
  methodbind.ptrcall(self, [], XRPositionalTracker_TrackerHand)
