{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrtracker; export gdxrtracker

proc getBlendShape*(self: XRFaceTracker; blendShape: XRFaceTracker_BlendShapeEntry): Float =
  expandMethodBind(className XRFaceTracker, "get_blend_shape", 330010046)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr blendShape], addr ret)
  (addr ret).decode_result(Float)

proc setBlendShape*(self: XRFaceTracker; blendShape: XRFaceTracker_BlendShapeEntry; weight: Float): void =
  expandMethodBind(className XRFaceTracker, "set_blend_shape", 2352588791)
  methodbind.ptrcall(self, [getPtr blendShape, getPtr weight])

proc getBlendShapes*(self: XRFaceTracker): PackedFloat32Array =
  expandMethodBind(className XRFaceTracker, "get_blend_shapes", 675695659)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc setBlendShapes*(self: XRFaceTracker; weights: PackedFloat32Array): void =
  expandMethodBind(className XRFaceTracker, "set_blend_shapes", 2899603908)
  methodbind.ptrcall(self, [getPtr weights])

template blendShapes*(self: XRFaceTracker): untyped = self.getBlendShapes()
template `blendShapes=`*(self: XRFaceTracker; value) = self.setBlendShapes(value)

const XRFaceTracker_vmap =
  XRTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRFaceTracker]): Table[string, string] = XRFaceTracker_vmap