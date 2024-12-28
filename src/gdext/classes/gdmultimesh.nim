{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setMesh*(self: MultiMesh; mesh: gdref Mesh): void =
  expandMethodBind(className MultiMesh, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh])

proc getMesh*(self: MultiMesh): gdref Mesh =
  expandMethodBind(className MultiMesh, "get_mesh", 1808005922)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc setUseColors*(self: MultiMesh; enable: bool): void =
  expandMethodBind(className MultiMesh, "set_use_colors", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isUsingColors*(self: MultiMesh): bool =
  expandMethodBind(className MultiMesh, "is_using_colors", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUseCustomData*(self: MultiMesh; enable: bool): void =
  expandMethodBind(className MultiMesh, "set_use_custom_data", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isUsingCustomData*(self: MultiMesh): bool =
  expandMethodBind(className MultiMesh, "is_using_custom_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTransformFormat*(self: MultiMesh; format: MultiMesh_TransformFormat): void =
  expandMethodBind(className MultiMesh, "set_transform_format", 2404750322)
  methodbind.ptrcall(self, [getPtr format])

proc getTransformFormat*(self: MultiMesh): MultiMesh_TransformFormat =
  expandMethodBind(className MultiMesh, "get_transform_format", 2444156481)
  var ret: encoded MultiMesh_TransformFormat
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(MultiMesh_TransformFormat)

proc setInstanceCount*(self: MultiMesh; count: int32): void =
  expandMethodBind(className MultiMesh, "set_instance_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getInstanceCount*(self: MultiMesh): int32 =
  expandMethodBind(className MultiMesh, "get_instance_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setVisibleInstanceCount*(self: MultiMesh; count: int32): void =
  expandMethodBind(className MultiMesh, "set_visible_instance_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getVisibleInstanceCount*(self: MultiMesh): int32 =
  expandMethodBind(className MultiMesh, "get_visible_instance_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setInstanceTransform*(self: MultiMesh; instance: int32; transform: Transform3D): void =
  expandMethodBind(className MultiMesh, "set_instance_transform", 3616898986)
  methodbind.ptrcall(self, [getPtr instance, getPtr transform])

proc setInstanceTransform2D*(self: MultiMesh; instance: int32; transform: Transform2D): void =
  expandMethodBind(className MultiMesh, "set_instance_transform_2d", 30160968)
  methodbind.ptrcall(self, [getPtr instance, getPtr transform])

proc getInstanceTransform*(self: MultiMesh; instance: int32): Transform3D =
  expandMethodBind(className MultiMesh, "get_instance_transform", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr instance], addr ret)
  (addr ret).decode_result(Transform3D)

proc getInstanceTransform2D*(self: MultiMesh; instance: int32): Transform2D =
  expandMethodBind(className MultiMesh, "get_instance_transform_2d", 3836996910)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [getPtr instance], addr ret)
  (addr ret).decode_result(Transform2D)

proc setInstanceColor*(self: MultiMesh; instance: int32; color: Color): void =
  expandMethodBind(className MultiMesh, "set_instance_color", 2878471219)
  methodbind.ptrcall(self, [getPtr instance, getPtr color])

proc getInstanceColor*(self: MultiMesh; instance: int32): Color =
  expandMethodBind(className MultiMesh, "get_instance_color", 3457211756)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr instance], addr ret)
  (addr ret).decode_result(Color)

proc setInstanceCustomData*(self: MultiMesh; instance: int32; customData: Color): void =
  expandMethodBind(className MultiMesh, "set_instance_custom_data", 2878471219)
  methodbind.ptrcall(self, [getPtr instance, getPtr customData])

proc getInstanceCustomData*(self: MultiMesh; instance: int32): Color =
  expandMethodBind(className MultiMesh, "get_instance_custom_data", 3457211756)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr instance], addr ret)
  (addr ret).decode_result(Color)

proc setCustomAabb*(self: MultiMesh; aabb: AABB): void =
  expandMethodBind(className MultiMesh, "set_custom_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb])

proc getCustomAabb*(self: MultiMesh): AABB =
  expandMethodBind(className MultiMesh, "get_custom_aabb", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AABB)

proc getAabb*(self: MultiMesh): AABB =
  expandMethodBind(className MultiMesh, "get_aabb", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AABB)

proc getBuffer*(self: MultiMesh): PackedFloat32Array =
  expandMethodBind(className MultiMesh, "get_buffer", 675695659)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc setBuffer*(self: MultiMesh; buffer: PackedFloat32Array): void =
  expandMethodBind(className MultiMesh, "set_buffer", 2899603908)
  methodbind.ptrcall(self, [getPtr buffer])

template transformFormat*(self: MultiMesh): untyped = self.getTransformFormat()
template `transformFormat=`*(self: MultiMesh; value) = self.setTransformFormat(value)

template useColors*(self: MultiMesh): untyped = self.isUsingColors()
template `useColors=`*(self: MultiMesh; value) = self.setUseColors(value)

template useCustomData*(self: MultiMesh): untyped = self.isUsingCustomData()
template `useCustomData=`*(self: MultiMesh; value) = self.setUseCustomData(value)

template customAabb*(self: MultiMesh): untyped = self.getCustomAabb()
template `customAabb=`*(self: MultiMesh; value) = self.setCustomAabb(value)

template instanceCount*(self: MultiMesh): untyped = self.getInstanceCount()
template `instanceCount=`*(self: MultiMesh; value) = self.setInstanceCount(value)

template visibleInstanceCount*(self: MultiMesh): untyped = self.getVisibleInstanceCount()
template `visibleInstanceCount=`*(self: MultiMesh; value) = self.setVisibleInstanceCount(value)

template mesh*(self: MultiMesh): untyped = self.getMesh()
template `mesh=`*(self: MultiMesh; value) = self.setMesh(value)

template buffer*(self: MultiMesh): untyped = self.getBuffer()
template `buffer=`*(self: MultiMesh; value) = self.setBuffer(value)

template transformArray*(self: MultiMesh): untyped = self.getTransformArray()
template `transformArray=`*(self: MultiMesh; value) = self.setTransformArray(value)

template transform2DArray*(self: MultiMesh): untyped = self.getTransform2DArray()
template `transform2DArray=`*(self: MultiMesh; value) = self.setTransform2DArray(value)

template colorArray*(self: MultiMesh): untyped = self.getColorArray()
template `colorArray=`*(self: MultiMesh; value) = self.setColorArray(value)

template customDataArray*(self: MultiMesh): untyped = self.getCustomDataArray()
template `customDataArray=`*(self: MultiMesh; value) = self.setCustomDataArray(value)

const MultiMesh_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MultiMesh]): Table[string, string] = MultiMesh_vmap