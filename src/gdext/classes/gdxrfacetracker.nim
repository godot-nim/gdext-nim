{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdxrtracker; export gdxrtracker

proc getBlendShape*(self: XrFaceTracker; blendShape: XrFaceTracker_BlendShapeEntry): Float =
  expandMethodBind(className XrFaceTracker, "get_blend_shape", 330010046)
  var `?param` = [getPtr blendShape]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setBlendShape*(self: XrFaceTracker; blendShape: XrFaceTracker_BlendShapeEntry; weight: Float): void =
  expandMethodBind(className XrFaceTracker, "set_blend_shape", 2352588791)
  var `?param` = [getPtr blendShape, getPtr weight]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendShapes*(self: XrFaceTracker): PackedFloat32Array =
  expandMethodBind(className XrFaceTracker, "get_blend_shapes", 675695659)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc setBlendShapes*(self: XrFaceTracker; weights: PackedFloat32Array): void =
  expandMethodBind(className XrFaceTracker, "set_blend_shapes", 2899603908)
  var `?param` = [getPtr weights]
  methodbind.ptrcall(self, addr `?param`[0])

template blendShapes*(self: XrFaceTracker): untyped = self.getBlendShapes()
template `blendShapes=`*(self: XrFaceTracker; value) = self.setBlendShapes(value)

const XrFaceTracker_vmap =
  XrTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrFaceTracker]): Table[string, string] = XrFaceTracker_vmap