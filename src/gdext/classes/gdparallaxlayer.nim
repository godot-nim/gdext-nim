{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(ParallaxLayer, Node2D)

proc setMotionScale*(self: ParallaxLayer; scale: Vector2): void =
  expandMethodBind(className ParallaxLayer, "set_motion_scale", 743155724)
  methodbind.ptrcall(self, [getPtr scale])

proc getMotionScale*(self: ParallaxLayer): Vector2 =
  expandMethodBind(className ParallaxLayer, "get_motion_scale", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setMotionOffset*(self: ParallaxLayer; offset: Vector2): void =
  expandMethodBind(className ParallaxLayer, "set_motion_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getMotionOffset*(self: ParallaxLayer): Vector2 =
  expandMethodBind(className ParallaxLayer, "get_motion_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setMirroring*(self: ParallaxLayer; mirror: Vector2): void =
  expandMethodBind(className ParallaxLayer, "set_mirroring", 743155724)
  methodbind.ptrcall(self, [getPtr mirror])

proc getMirroring*(self: ParallaxLayer): Vector2 =
  expandMethodBind(className ParallaxLayer, "get_mirroring", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template motionScale*(self: ParallaxLayer): untyped = self.getMotionScale()
template `motionScale=`*(self: ParallaxLayer; value) = self.setMotionScale(value)

template motionOffset*(self: ParallaxLayer): untyped = self.getMotionOffset()
template `motionOffset=`*(self: ParallaxLayer; value) = self.setMotionOffset(value)

template motionMirroring*(self: ParallaxLayer): untyped = self.getMirroring()
template `motionMirroring=`*(self: ParallaxLayer; value) = self.setMirroring(value)
