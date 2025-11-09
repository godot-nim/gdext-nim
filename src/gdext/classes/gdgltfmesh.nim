{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFMesh, Resource)

proc getOriginalName*(self: GLTFMesh): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "get_original_name", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setOriginalName*(self: GLTFMesh; originalName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "set_original_name", 83702148)
  methodbind.ptrcall(self, [getPtr originalName], void)

proc getMesh*(self: GLTFMesh): gdref ImporterMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "get_mesh", 3754628756)
  methodbind.ptrcall(self, [], gdref ImporterMesh)

proc setMesh*(self: GLTFMesh; mesh: gdref ImporterMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "set_mesh", 2255166972)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getBlendWeights*(self: GLTFMesh): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "get_blend_weights", 2445143706)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc setBlendWeights*(self: GLTFMesh; blendWeights: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "set_blend_weights", 2899603908)
  methodbind.ptrcall(self, [getPtr blendWeights], void)

proc getInstanceMaterials*(self: GLTFMesh): TypedArray[gdref Material] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "get_instance_materials", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref Material])

proc setInstanceMaterials*(self: GLTFMesh; instanceMaterials: TypedArray[gdref Material]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "set_instance_materials", 381264803)
  methodbind.ptrcall(self, [getPtr instanceMaterials], void)

proc getAdditionalData*(self: GLTFMesh; extensionName: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "get_additional_data", 2138907829)
  methodbind.ptrcall(self, [getPtr extensionName], Variant)

proc setAdditionalData*(self: GLTFMesh; extensionName: StringName; additionalData: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFMesh, "set_additional_data", 3776071444)
  methodbind.ptrcall(self, [getPtr extensionName, getPtr additionalData], void)

template originalName*(self: GLTFMesh): untyped = self.getOriginalName()
template `originalName=`*(self: GLTFMesh; value) = self.setOriginalName(value)

template mesh*(self: GLTFMesh): untyped = self.getMesh()
template `mesh=`*(self: GLTFMesh; value) = self.setMesh(value)

template blendWeights*(self: GLTFMesh): untyped = self.getBlendWeights()
template `blendWeights=`*(self: GLTFMesh; value) = self.setBlendWeights(value)

template instanceMaterials*(self: GLTFMesh): untyped = self.getInstanceMaterials()
template `instanceMaterials=`*(self: GLTFMesh; value) = self.setInstanceMaterials(value)
