{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(MultiMesh, Resource)

proc setMesh*(self: MultiMesh; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getMesh*(self: MultiMesh): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_mesh", 1808005922)
  methodbind.ptrcall(self, [], gdref Mesh)

proc setUseColors*(self: MultiMesh; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_use_colors", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingColors*(self: MultiMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "is_using_colors", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseCustomData*(self: MultiMesh; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_use_custom_data", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingCustomData*(self: MultiMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "is_using_custom_data", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTransformFormat*(self: MultiMesh; format: MultiMesh_TransformFormat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_transform_format", 2404750322)
  methodbind.ptrcall(self, [getPtr format], void)

proc getTransformFormat*(self: MultiMesh): MultiMesh_TransformFormat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_transform_format", 2444156481)
  methodbind.ptrcall(self, [], MultiMesh_TransformFormat)

proc setInstanceCount*(self: MultiMesh; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_instance_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getInstanceCount*(self: MultiMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_instance_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVisibleInstanceCount*(self: MultiMesh; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_visible_instance_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getVisibleInstanceCount*(self: MultiMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_visible_instance_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPhysicsInterpolationQuality*(self: MultiMesh; quality: MultiMesh_PhysicsInterpolationQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_physics_interpolation_quality", 1819488408)
  methodbind.ptrcall(self, [getPtr quality], void)

proc getPhysicsInterpolationQuality*(self: MultiMesh): MultiMesh_PhysicsInterpolationQuality =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_physics_interpolation_quality", 1465701882)
  methodbind.ptrcall(self, [], MultiMesh_PhysicsInterpolationQuality)

proc setInstanceTransform*(self: MultiMesh; instance: int32; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_instance_transform", 3616898986)
  methodbind.ptrcall(self, [getPtr instance, getPtr transform], void)

proc setInstanceTransform2D*(self: MultiMesh; instance: int32; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_instance_transform_2d", 30160968)
  methodbind.ptrcall(self, [getPtr instance, getPtr transform], void)

proc getInstanceTransform*(self: MultiMesh; instance: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_instance_transform", 1965739696)
  methodbind.ptrcall(self, [getPtr instance], Transform3D)

proc getInstanceTransform2D*(self: MultiMesh; instance: int32): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_instance_transform_2d", 3836996910)
  methodbind.ptrcall(self, [getPtr instance], Transform2D)

proc setInstanceColor*(self: MultiMesh; instance: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_instance_color", 2878471219)
  methodbind.ptrcall(self, [getPtr instance, getPtr color], void)

proc getInstanceColor*(self: MultiMesh; instance: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_instance_color", 3457211756)
  methodbind.ptrcall(self, [getPtr instance], Color)

proc setInstanceCustomData*(self: MultiMesh; instance: int32; customData: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_instance_custom_data", 2878471219)
  methodbind.ptrcall(self, [getPtr instance, getPtr customData], void)

proc getInstanceCustomData*(self: MultiMesh; instance: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_instance_custom_data", 3457211756)
  methodbind.ptrcall(self, [getPtr instance], Color)

proc resetInstancePhysicsInterpolation*(self: MultiMesh; instance: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "reset_instance_physics_interpolation", 1286410249)
  methodbind.ptrcall(self, [getPtr instance], void)

proc setCustomAabb*(self: MultiMesh; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_custom_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb], void)

proc getCustomAabb*(self: MultiMesh): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_custom_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc getAabb*(self: MultiMesh): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc getBuffer*(self: MultiMesh): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "get_buffer", 675695659)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc setBuffer*(self: MultiMesh; buffer: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_buffer", 2899603908)
  methodbind.ptrcall(self, [getPtr buffer], void)

proc setBufferInterpolated*(self: MultiMesh; bufferCurr: PackedFloat32Array; bufferPrev: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMesh, "set_buffer_interpolated", 3514430332)
  methodbind.ptrcall(self, [getPtr bufferCurr, getPtr bufferPrev], void)

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

template physicsInterpolationQuality*(self: MultiMesh): untyped = self.getPhysicsInterpolationQuality()
template `physicsInterpolationQuality=`*(self: MultiMesh; value) = self.setPhysicsInterpolationQuality(value)
