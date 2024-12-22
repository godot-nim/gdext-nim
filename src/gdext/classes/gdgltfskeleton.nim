{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getJoints*(self: GLTFSkeleton): PackedInt32Array =
  expandMethodBind(className GLTFSkeleton, "get_joints", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setJoints*(self: GLTFSkeleton; joints: PackedInt32Array): void =
  expandMethodBind(className GLTFSkeleton, "set_joints", 3614634198)
  var `?param` = [getPtr joints]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRoots*(self: GLTFSkeleton): PackedInt32Array =
  expandMethodBind(className GLTFSkeleton, "get_roots", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setRoots*(self: GLTFSkeleton; roots: PackedInt32Array): void =
  expandMethodBind(className GLTFSkeleton, "set_roots", 3614634198)
  var `?param` = [getPtr roots]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGodotSkeleton*(self: GLTFSkeleton): Skeleton3D =
  expandMethodBind(className GLTFSkeleton, "get_godot_skeleton", 1814733083)
  var ret: encoded Skeleton3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Skeleton3D)

proc getUniqueNames*(self: GLTFSkeleton): TypedArray[String] =
  expandMethodBind(className GLTFSkeleton, "get_unique_names", 2915620761)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc setUniqueNames*(self: GLTFSkeleton; uniqueNames: TypedArray[String]): void =
  expandMethodBind(className GLTFSkeleton, "set_unique_names", 381264803)
  var `?param` = [getPtr uniqueNames]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGodotBoneNode*(self: GLTFSkeleton): Dictionary =
  expandMethodBind(className GLTFSkeleton, "get_godot_bone_node", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setGodotBoneNode*(self: GLTFSkeleton; godotBoneNode: Dictionary): void =
  expandMethodBind(className GLTFSkeleton, "set_godot_bone_node", 4155329257)
  var `?param` = [getPtr godotBoneNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneAttachmentCount*(self: GLTFSkeleton): int32 =
  expandMethodBind(className GLTFSkeleton, "get_bone_attachment_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getBoneAttachment*(self: GLTFSkeleton; idx: int32): BoneAttachment3D =
  expandMethodBind(className GLTFSkeleton, "get_bone_attachment", 945440495)
  var `?param` = [getPtr idx]
  var ret: encoded BoneAttachment3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(BoneAttachment3D)

template joints*(self: GLTFSkeleton): untyped = self.getJoints()
template `joints=`*(self: GLTFSkeleton; value) = self.setJoints(value)

template roots*(self: GLTFSkeleton): untyped = self.getRoots()
template `roots=`*(self: GLTFSkeleton; value) = self.setRoots(value)

template uniqueNames*(self: GLTFSkeleton): untyped = self.getUniqueNames()
template `uniqueNames=`*(self: GLTFSkeleton; value) = self.setUniqueNames(value)

template godotBoneNode*(self: GLTFSkeleton): untyped = self.getGodotBoneNode()
template `godotBoneNode=`*(self: GLTFSkeleton; value) = self.setGodotBoneNode(value)

const GLTFSkeleton_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFSkeleton]): Table[string, string] = GLTFSkeleton_vmap