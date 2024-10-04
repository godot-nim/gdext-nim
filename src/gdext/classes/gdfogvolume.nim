{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setSize*(self: FogVolume; size: Vector3): void =
  expandMethodBind(className FogVolume, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: FogVolume): Vector3 =
  expandMethodBind(className FogVolume, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setShape*(self: FogVolume; shape: RenderingServer_FogVolumeShape): void =
  expandMethodBind(className FogVolume, "set_shape", 1416323362)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShape*(self: FogVolume): RenderingServer_FogVolumeShape =
  expandMethodBind(className FogVolume, "get_shape", 3920334604)
  var ret: encoded RenderingServer_FogVolumeShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_FogVolumeShape)

proc setMaterial*(self: FogVolume; material: gdref Material): void =
  expandMethodBind(className FogVolume, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: FogVolume): gdref Material =
  expandMethodBind(className FogVolume, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
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