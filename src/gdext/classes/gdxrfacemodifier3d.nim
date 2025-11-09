{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(XRFaceModifier3D, Node3D)

proc setFaceTracker*(self: XRFaceModifier3D; trackerName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRFaceModifier3D, "set_face_tracker", 3304788590)
  methodbind.ptrcall(self, [getPtr trackerName], void)

proc getFaceTracker*(self: XRFaceModifier3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRFaceModifier3D, "get_face_tracker", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setTarget*(self: XRFaceModifier3D; target: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRFaceModifier3D, "set_target", 1348162250)
  methodbind.ptrcall(self, [getPtr target], void)

proc getTarget*(self: XRFaceModifier3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRFaceModifier3D, "get_target", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

template faceTracker*(self: XRFaceModifier3D): untyped = self.getFaceTracker()
template `faceTracker=`*(self: XRFaceModifier3D; value) = self.setFaceTracker(value)

template target*(self: XRFaceModifier3D): untyped = self.getTarget()
template `target=`*(self: XRFaceModifier3D; value) = self.setTarget(value)
