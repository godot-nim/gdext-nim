{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getOriginalName*(self: GltfMesh): String =
  expandMethodBind(className GltfMesh, "get_original_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOriginalName*(self: GltfMesh; originalName: String): void =
  expandMethodBind(className GltfMesh, "set_original_name", 83702148)
  var `?param` = [getPtr originalName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: GltfMesh): gdref ImporterMesh =
  expandMethodBind(className GltfMesh, "get_mesh", 3754628756)
  var ret: encoded gdref ImporterMesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ImporterMesh)

proc setMesh*(self: GltfMesh; mesh: gdref ImporterMesh): void =
  expandMethodBind(className GltfMesh, "set_mesh", 2255166972)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendWeights*(self: GltfMesh): PackedFloat32Array =
  expandMethodBind(className GltfMesh, "get_blend_weights", 2445143706)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc setBlendWeights*(self: GltfMesh; blendWeights: PackedFloat32Array): void =
  expandMethodBind(className GltfMesh, "set_blend_weights", 2899603908)
  var `?param` = [getPtr blendWeights]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInstanceMaterials*(self: GltfMesh): gdref Material =
  expandMethodBind(className GltfMesh, "get_instance_materials", 2915620761)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc setInstanceMaterials*(self: GltfMesh; instanceMaterials: gdref Material): void =
  expandMethodBind(className GltfMesh, "set_instance_materials", 381264803)
  var `?param` = [getPtr instanceMaterials]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalData*(self: GltfMesh; extensionName: StringName): Variant =
  expandMethodBind(className GltfMesh, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GltfMesh; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GltfMesh, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

template originalName*(self: GltfMesh): untyped = self.getOriginalName()
template `originalName=`*(self: GltfMesh; value) = self.setOriginalName(value)

template mesh*(self: GltfMesh): untyped = self.getMesh()
template `mesh=`*(self: GltfMesh; value) = self.setMesh(value)

template blendWeights*(self: GltfMesh): untyped = self.getBlendWeights()
template `blendWeights=`*(self: GltfMesh; value) = self.setBlendWeights(value)

template instanceMaterials*(self: GltfMesh): untyped = self.getInstanceMaterials()
template `instanceMaterials=`*(self: GltfMesh; value) = self.setInstanceMaterials(value)

const GltfMesh_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfMesh]): Table[string, string] = GltfMesh_vmap