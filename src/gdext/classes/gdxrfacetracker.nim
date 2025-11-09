{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrtracker; export gdxrtracker

expandOnClassImported(XRFaceTracker, XRTracker)

proc getBlendShape*(self: XRFaceTracker; blendShape: XRFaceTracker_BlendShapeEntry): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRFaceTracker, "get_blend_shape", 330010046)
  methodbind.ptrcall(self, [getPtr blendShape], Float)

proc setBlendShape*(self: XRFaceTracker; blendShape: XRFaceTracker_BlendShapeEntry; weight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRFaceTracker, "set_blend_shape", 2352588791)
  methodbind.ptrcall(self, [getPtr blendShape, getPtr weight], void)

proc getBlendShapes*(self: XRFaceTracker): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRFaceTracker, "get_blend_shapes", 675695659)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc setBlendShapes*(self: XRFaceTracker; weights: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRFaceTracker, "set_blend_shapes", 2899603908)
  methodbind.ptrcall(self, [getPtr weights], void)

template blendShapes*(self: XRFaceTracker): untyped = self.getBlendShapes()
template `blendShapes=`*(self: XRFaceTracker; value) = self.setBlendShapes(value)
