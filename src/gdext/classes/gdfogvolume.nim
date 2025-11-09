{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(FogVolume, VisualInstance3D)

proc setSize*(self: FogVolume; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogVolume, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: FogVolume): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogVolume, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setShape*(self: FogVolume; shape: RenderingServer_FogVolumeShape): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogVolume, "set_shape", 1416323362)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: FogVolume): RenderingServer_FogVolumeShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogVolume, "get_shape", 3920334604)
  methodbind.ptrcall(self, [], RenderingServer_FogVolumeShape)

proc setMaterial*(self: FogVolume; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogVolume, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: FogVolume): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FogVolume, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

template size*(self: FogVolume): untyped = self.getSize()
template `size=`*(self: FogVolume; value) = self.setSize(value)

template shape*(self: FogVolume): untyped = self.getShape()
template `shape=`*(self: FogVolume; value) = self.setShape(value)

template material*(self: FogVolume): untyped = self.getMaterial()
template `material=`*(self: FogVolume; value) = self.setMaterial(value)
