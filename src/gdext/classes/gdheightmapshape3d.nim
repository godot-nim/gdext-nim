{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(HeightMapShape3D, Shape3D)

proc setMapWidth*(self: HeightMapShape3D; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "set_map_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc getMapWidth*(self: HeightMapShape3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "get_map_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMapDepth*(self: HeightMapShape3D; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "set_map_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr height], void)

proc getMapDepth*(self: HeightMapShape3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "get_map_depth", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMapData*(self: HeightMapShape3D; data: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "set_map_data", 2899603908)
  methodbind.ptrcall(self, [getPtr data], void)

proc getMapData*(self: HeightMapShape3D): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "get_map_data", 675695659)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc getMinHeight*(self: HeightMapShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "get_min_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getMaxHeight*(self: HeightMapShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "get_max_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc updateMapDataFromImage*(self: HeightMapShape3D; image: gdref Image; heightMin: Float; heightMax: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HeightMapShape3D, "update_map_data_from_image", 2636652979)
  methodbind.ptrcall(self, [getPtr image, getPtr heightMin, getPtr heightMax], void)

template mapWidth*(self: HeightMapShape3D): untyped = self.getMapWidth()
template `mapWidth=`*(self: HeightMapShape3D; value) = self.setMapWidth(value)

template mapDepth*(self: HeightMapShape3D): untyped = self.getMapDepth()
template `mapDepth=`*(self: HeightMapShape3D; value) = self.setMapDepth(value)

template mapData*(self: HeightMapShape3D): untyped = self.getMapData()
template `mapData=`*(self: HeightMapShape3D; value) = self.setMapData(value)
