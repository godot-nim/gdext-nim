{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFSkeleton, Resource)

proc getJoints*(self: GLTFSkeleton): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "get_joints", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setJoints*(self: GLTFSkeleton; joints: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "set_joints", 3614634198)
  methodbind.ptrcall(self, [getPtr joints], void)

proc getRoots*(self: GLTFSkeleton): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "get_roots", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setRoots*(self: GLTFSkeleton; roots: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "set_roots", 3614634198)
  methodbind.ptrcall(self, [getPtr roots], void)

proc getGodotSkeleton*(self: GLTFSkeleton): Skeleton3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "get_godot_skeleton", 1814733083)
  methodbind.ptrcall(self, [], Skeleton3D)

proc getUniqueNames*(self: GLTFSkeleton): TypedArray[String] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "get_unique_names", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[String])

proc setUniqueNames*(self: GLTFSkeleton; uniqueNames: TypedArray[String]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "set_unique_names", 381264803)
  methodbind.ptrcall(self, [getPtr uniqueNames], void)

proc getGodotBoneNode*(self: GLTFSkeleton): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "get_godot_bone_node", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)

proc setGodotBoneNode*(self: GLTFSkeleton; godotBoneNode: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "set_godot_bone_node", 4155329257)
  methodbind.ptrcall(self, [getPtr godotBoneNode], void)

proc getBoneAttachmentCount*(self: GLTFSkeleton): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "get_bone_attachment_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getBoneAttachment*(self: GLTFSkeleton; idx: int32): BoneAttachment3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkeleton, "get_bone_attachment", 945440495)
  methodbind.ptrcall(self, [getPtr idx], BoneAttachment3D)

template joints*(self: GLTFSkeleton): untyped = self.getJoints()
template `joints=`*(self: GLTFSkeleton; value) = self.setJoints(value)

template roots*(self: GLTFSkeleton): untyped = self.getRoots()
template `roots=`*(self: GLTFSkeleton; value) = self.setRoots(value)

template uniqueNames*(self: GLTFSkeleton): untyped = self.getUniqueNames()
template `uniqueNames=`*(self: GLTFSkeleton; value) = self.setUniqueNames(value)

template godotBoneNode*(self: GLTFSkeleton): untyped = self.getGodotBoneNode()
template `godotBoneNode=`*(self: GLTFSkeleton; value) = self.setGodotBoneNode(value)
