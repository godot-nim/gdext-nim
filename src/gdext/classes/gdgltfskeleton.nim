{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getJoints*(self: GltfSkeleton): PackedInt32Array =
  expandMethodBind(className GltfSkeleton, "get_joints", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setJoints*(self: GltfSkeleton; joints: PackedInt32Array): void =
  expandMethodBind(className GltfSkeleton, "set_joints", 3614634198)
  var `?param` = [getPtr joints]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRoots*(self: GltfSkeleton): PackedInt32Array =
  expandMethodBind(className GltfSkeleton, "get_roots", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setRoots*(self: GltfSkeleton; roots: PackedInt32Array): void =
  expandMethodBind(className GltfSkeleton, "set_roots", 3614634198)
  var `?param` = [getPtr roots]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGodotSkeleton*(self: GltfSkeleton): Skeleton3D =
  expandMethodBind(className GltfSkeleton, "get_godot_skeleton", 1814733083)
  var ret: encoded Skeleton3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Skeleton3D)

proc getUniqueNames*(self: GltfSkeleton): TypedArray[String] =
  expandMethodBind(className GltfSkeleton, "get_unique_names", 2915620761)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc setUniqueNames*(self: GltfSkeleton; uniqueNames: TypedArray[String]): void =
  expandMethodBind(className GltfSkeleton, "set_unique_names", 381264803)
  var `?param` = [getPtr uniqueNames]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGodotBoneNode*(self: GltfSkeleton): Dictionary =
  expandMethodBind(className GltfSkeleton, "get_godot_bone_node", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setGodotBoneNode*(self: GltfSkeleton; godotBoneNode: Dictionary): void =
  expandMethodBind(className GltfSkeleton, "set_godot_bone_node", 4155329257)
  var `?param` = [getPtr godotBoneNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneAttachmentCount*(self: GltfSkeleton): int32 =
  expandMethodBind(className GltfSkeleton, "get_bone_attachment_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getBoneAttachment*(self: GltfSkeleton; idx: int32): BoneAttachment3D =
  expandMethodBind(className GltfSkeleton, "get_bone_attachment", 945440495)
  var `?param` = [getPtr idx]
  var ret: encoded BoneAttachment3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(BoneAttachment3D)

template joints*(self: GltfSkeleton): untyped = self.getJoints()
template `joints=`*(self: GltfSkeleton; value) = self.setJoints(value)

template roots*(self: GltfSkeleton): untyped = self.getRoots()
template `roots=`*(self: GltfSkeleton; value) = self.setRoots(value)

template uniqueNames*(self: GltfSkeleton): untyped = self.getUniqueNames()
template `uniqueNames=`*(self: GltfSkeleton; value) = self.setUniqueNames(value)

template godotBoneNode*(self: GltfSkeleton): untyped = self.getGodotBoneNode()
template `godotBoneNode=`*(self: GltfSkeleton; value) = self.setGodotBoneNode(value)

const GltfSkeleton_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfSkeleton]): Table[string, string] = GltfSkeleton_vmap