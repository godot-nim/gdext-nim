{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

proc setMapWidth*(self: HeightMapShape3D; width: int32): void =
  expandMethodBind(className HeightMapShape3D, "set_map_width", 1286410249)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMapWidth*(self: HeightMapShape3D): int32 =
  expandMethodBind(className HeightMapShape3D, "get_map_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMapDepth*(self: HeightMapShape3D; height: int32): void =
  expandMethodBind(className HeightMapShape3D, "set_map_depth", 1286410249)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMapDepth*(self: HeightMapShape3D): int32 =
  expandMethodBind(className HeightMapShape3D, "get_map_depth", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMapData*(self: HeightMapShape3D; data: PackedFloat32Array): void =
  expandMethodBind(className HeightMapShape3D, "set_map_data", 2899603908)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMapData*(self: HeightMapShape3D): PackedFloat32Array =
  expandMethodBind(className HeightMapShape3D, "get_map_data", 675695659)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc getMinHeight*(self: HeightMapShape3D): Float =
  expandMethodBind(className HeightMapShape3D, "get_min_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getMaxHeight*(self: HeightMapShape3D): Float =
  expandMethodBind(className HeightMapShape3D, "get_max_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc updateMapDataFromImage*(self: HeightMapShape3D; image: gdref Image; heightMin: Float; heightMax: Float): void =
  expandMethodBind(className HeightMapShape3D, "update_map_data_from_image", 2636652979)
  var `?param` = [getPtr image, getPtr heightMin, getPtr heightMax]
  methodbind.ptrcall(self, addr `?param`[0])

template mapWidth*(self: HeightMapShape3D): untyped = self.getMapWidth()
template `mapWidth=`*(self: HeightMapShape3D; value) = self.setMapWidth(value)

template mapDepth*(self: HeightMapShape3D): untyped = self.getMapDepth()
template `mapDepth=`*(self: HeightMapShape3D; value) = self.setMapDepth(value)

template mapData*(self: HeightMapShape3D): untyped = self.getMapData()
template `mapData=`*(self: HeightMapShape3D; value) = self.setMapData(value)

const HeightMapShape3D_vmap =
  Shape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HeightMapShape3D]): Table[string, string] = HeightMapShape3D_vmap