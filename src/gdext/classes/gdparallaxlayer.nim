{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setMotionScale*(self: ParallaxLayer; scale: Vector2): void =
  expandMethodBind(className ParallaxLayer, "set_motion_scale", 743155724)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotionScale*(self: ParallaxLayer): Vector2 =
  expandMethodBind(className ParallaxLayer, "get_motion_scale", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setMotionOffset*(self: ParallaxLayer; offset: Vector2): void =
  expandMethodBind(className ParallaxLayer, "set_motion_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotionOffset*(self: ParallaxLayer): Vector2 =
  expandMethodBind(className ParallaxLayer, "get_motion_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setMirroring*(self: ParallaxLayer; mirror: Vector2): void =
  expandMethodBind(className ParallaxLayer, "set_mirroring", 743155724)
  var `?param` = [getPtr mirror]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMirroring*(self: ParallaxLayer): Vector2 =
  expandMethodBind(className ParallaxLayer, "get_mirroring", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template motionScale*(self: ParallaxLayer): untyped = self.getMotionScale()
template `motionScale=`*(self: ParallaxLayer; value) = self.setMotionScale(value)

template motionOffset*(self: ParallaxLayer): untyped = self.getMotionOffset()
template `motionOffset=`*(self: ParallaxLayer; value) = self.setMotionOffset(value)

template motionMirroring*(self: ParallaxLayer): untyped = self.getMirroring()
template `motionMirroring=`*(self: ParallaxLayer; value) = self.setMirroring(value)

const ParallaxLayer_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ParallaxLayer]): Table[string, string] = ParallaxLayer_vmap