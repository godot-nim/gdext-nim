{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFNode, Resource)

proc getOriginalName*(self: GLTFNode): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_original_name", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setOriginalName*(self: GLTFNode; originalName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_original_name", 83702148)
  methodbind.ptrcall(self, [getPtr originalName], void)

proc getParent*(self: GLTFNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_parent", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setParent*(self: GLTFNode; parent: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_parent", 1286410249)
  methodbind.ptrcall(self, [getPtr parent], void)

proc getHeight*(self: GLTFNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_height", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setHeight*(self: GLTFNode; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_height", 1286410249)
  methodbind.ptrcall(self, [getPtr height], void)

proc getXform*(self: GLTFNode): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_xform", 4183770049)
  methodbind.ptrcall(self, [], Transform3D)

proc setXform*(self: GLTFNode; xform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_xform", 2952846383)
  methodbind.ptrcall(self, [getPtr xform], void)

proc getMesh*(self: GLTFNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_mesh", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setMesh*(self: GLTFNode; mesh: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_mesh", 1286410249)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getCamera*(self: GLTFNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_camera", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setCamera*(self: GLTFNode; camera: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_camera", 1286410249)
  methodbind.ptrcall(self, [getPtr camera], void)

proc getSkin*(self: GLTFNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_skin", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setSkin*(self: GLTFNode; skin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_skin", 1286410249)
  methodbind.ptrcall(self, [getPtr skin], void)

proc getSkeleton*(self: GLTFNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_skeleton", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setSkeleton*(self: GLTFNode; skeleton: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_skeleton", 1286410249)
  methodbind.ptrcall(self, [getPtr skeleton], void)

proc getPosition*(self: GLTFNode): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_position", 3783033775)
  methodbind.ptrcall(self, [], Vector3)

proc setPosition*(self: GLTFNode; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_position", 3460891852)
  methodbind.ptrcall(self, [getPtr position], void)

proc getRotation*(self: GLTFNode): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_rotation", 2916281908)
  methodbind.ptrcall(self, [], Quaternion)

proc setRotation*(self: GLTFNode; rotation: Quaternion): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_rotation", 1727505552)
  methodbind.ptrcall(self, [getPtr rotation], void)

proc getScale*(self: GLTFNode): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_scale", 3783033775)
  methodbind.ptrcall(self, [], Vector3)

proc setScale*(self: GLTFNode; scale: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_scale", 3460891852)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getChildren*(self: GLTFNode): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_children", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setChildren*(self: GLTFNode; children: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_children", 3614634198)
  methodbind.ptrcall(self, [getPtr children], void)

proc appendChildIndex*(self: GLTFNode; childIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "append_child_index", 1286410249)
  methodbind.ptrcall(self, [getPtr childIndex], void)

proc getLight*(self: GLTFNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_light", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setLight*(self: GLTFNode; light: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_light", 1286410249)
  methodbind.ptrcall(self, [getPtr light], void)

proc getVisible*(self: GLTFNode): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_visible", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setVisible*(self: GLTFNode; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc getAdditionalData*(self: GLTFNode; extensionName: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_additional_data", 2138907829)
  methodbind.ptrcall(self, [getPtr extensionName], Variant)

proc setAdditionalData*(self: GLTFNode; extensionName: StringName; additionalData: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "set_additional_data", 3776071444)
  methodbind.ptrcall(self, [getPtr extensionName, getPtr additionalData], void)

proc getSceneNodePath*(self: GLTFNode; gltfState: gdref GLTFState; handleSkeletons: bool = true): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFNode, "get_scene_node_path", 573359477)
  methodbind.ptrcall(self, [getPtr gltfState, getPtr handleSkeletons], NodePath)

template originalName*(self: GLTFNode): untyped = self.getOriginalName()
template `originalName=`*(self: GLTFNode; value) = self.setOriginalName(value)

template parent*(self: GLTFNode): untyped = self.getParent()
template `parent=`*(self: GLTFNode; value) = self.setParent(value)

template height*(self: GLTFNode): untyped = self.getHeight()
template `height=`*(self: GLTFNode; value) = self.setHeight(value)

template xform*(self: GLTFNode): untyped = self.getXform()
template `xform=`*(self: GLTFNode; value) = self.setXform(value)

template mesh*(self: GLTFNode): untyped = self.getMesh()
template `mesh=`*(self: GLTFNode; value) = self.setMesh(value)

template camera*(self: GLTFNode): untyped = self.getCamera()
template `camera=`*(self: GLTFNode; value) = self.setCamera(value)

template skin*(self: GLTFNode): untyped = self.getSkin()
template `skin=`*(self: GLTFNode; value) = self.setSkin(value)

template skeleton*(self: GLTFNode): untyped = self.getSkeleton()
template `skeleton=`*(self: GLTFNode; value) = self.setSkeleton(value)

template position*(self: GLTFNode): untyped = self.getPosition()
template `position=`*(self: GLTFNode; value) = self.setPosition(value)

template rotation*(self: GLTFNode): untyped = self.getRotation()
template `rotation=`*(self: GLTFNode; value) = self.setRotation(value)

template scale*(self: GLTFNode): untyped = self.getScale()
template `scale=`*(self: GLTFNode; value) = self.setScale(value)

template children*(self: GLTFNode): untyped = self.getChildren()
template `children=`*(self: GLTFNode; value) = self.setChildren(value)

template light*(self: GLTFNode): untyped = self.getLight()
template `light=`*(self: GLTFNode; value) = self.setLight(value)

template visible*(self: GLTFNode): untyped = self.getVisible()
template `visible=`*(self: GLTFNode; value) = self.setVisible(value)
