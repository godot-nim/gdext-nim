{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getOriginalName*(self: GLTFMesh): String =
  expandMethodBind(className GLTFMesh, "get_original_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOriginalName*(self: GLTFMesh; originalName: String): void =
  expandMethodBind(className GLTFMesh, "set_original_name", 83702148)
  var `?param` = [getPtr originalName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: GLTFMesh): gdref ImporterMesh =
  expandMethodBind(className GLTFMesh, "get_mesh", 3754628756)
  var ret: encoded gdref ImporterMesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ImporterMesh)

proc setMesh*(self: GLTFMesh; mesh: gdref ImporterMesh): void =
  expandMethodBind(className GLTFMesh, "set_mesh", 2255166972)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendWeights*(self: GLTFMesh): PackedFloat32Array =
  expandMethodBind(className GLTFMesh, "get_blend_weights", 2445143706)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc setBlendWeights*(self: GLTFMesh; blendWeights: PackedFloat32Array): void =
  expandMethodBind(className GLTFMesh, "set_blend_weights", 2899603908)
  var `?param` = [getPtr blendWeights]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInstanceMaterials*(self: GLTFMesh): TypedArray[Material] =
  expandMethodBind(className GLTFMesh, "get_instance_materials", 2915620761)
  var ret: encoded TypedArray[Material]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Material])

proc setInstanceMaterials*(self: GLTFMesh; instanceMaterials: TypedArray[Material]): void =
  expandMethodBind(className GLTFMesh, "set_instance_materials", 381264803)
  var `?param` = [getPtr instanceMaterials]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalData*(self: GLTFMesh; extensionName: StringName): Variant =
  expandMethodBind(className GLTFMesh, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GLTFMesh; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GLTFMesh, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

template originalName*(self: GLTFMesh): untyped = self.getOriginalName()
template `originalName=`*(self: GLTFMesh; value) = self.setOriginalName(value)

template mesh*(self: GLTFMesh): untyped = self.getMesh()
template `mesh=`*(self: GLTFMesh; value) = self.setMesh(value)

template blendWeights*(self: GLTFMesh): untyped = self.getBlendWeights()
template `blendWeights=`*(self: GLTFMesh; value) = self.setBlendWeights(value)

template instanceMaterials*(self: GLTFMesh): untyped = self.getInstanceMaterials()
template `instanceMaterials=`*(self: GLTFMesh; value) = self.setInstanceMaterials(value)

const GLTFMesh_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFMesh]): Table[string, string] = GLTFMesh_vmap