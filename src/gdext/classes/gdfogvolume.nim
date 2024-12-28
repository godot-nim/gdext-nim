{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setSize*(self: FogVolume; size: Vector3): void =
  expandMethodBind(className FogVolume, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: FogVolume): Vector3 =
  expandMethodBind(className FogVolume, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setShape*(self: FogVolume; shape: RenderingServer_FogVolumeShape): void =
  expandMethodBind(className FogVolume, "set_shape", 1416323362)
  methodbind.ptrcall(self, [getPtr shape])

proc getShape*(self: FogVolume): RenderingServer_FogVolumeShape =
  expandMethodBind(className FogVolume, "get_shape", 3920334604)
  var ret: encoded RenderingServer_FogVolumeShape
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingServer_FogVolumeShape)

proc setMaterial*(self: FogVolume; material: gdref Material): void =
  expandMethodBind(className FogVolume, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material])

proc getMaterial*(self: FogVolume): gdref Material =
  expandMethodBind(className FogVolume, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Material)

template size*(self: FogVolume): untyped = self.getSize()
template `size=`*(self: FogVolume; value) = self.setSize(value)

template shape*(self: FogVolume): untyped = self.getShape()
template `shape=`*(self: FogVolume; value) = self.setShape(value)

template material*(self: FogVolume): untyped = self.getMaterial()
template `material=`*(self: FogVolume; value) = self.setMaterial(value)

const FogVolume_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FogVolume]): Table[string, string] = FogVolume_vmap