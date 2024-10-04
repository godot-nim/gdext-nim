{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getOriginalName*(self: GltfNode): String =
  expandMethodBind(className GltfNode, "get_original_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOriginalName*(self: GltfNode; originalName: String): void =
  expandMethodBind(className GltfNode, "set_original_name", 83702148)
  var `?param` = [getPtr originalName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParent*(self: GltfNode): int32 =
  expandMethodBind(className GltfNode, "get_parent", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setParent*(self: GltfNode; parent: int32): void =
  expandMethodBind(className GltfNode, "set_parent", 1286410249)
  var `?param` = [getPtr parent]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: GltfNode): int32 =
  expandMethodBind(className GltfNode, "get_height", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setHeight*(self: GltfNode; height: int32): void =
  expandMethodBind(className GltfNode, "set_height", 1286410249)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getXform*(self: GltfNode): Transform3D =
  expandMethodBind(className GltfNode, "get_xform", 4183770049)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setXform*(self: GltfNode; xform: Transform3D): void =
  expandMethodBind(className GltfNode, "set_xform", 2952846383)
  var `?param` = [getPtr xform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: GltfNode): int32 =
  expandMethodBind(className GltfNode, "get_mesh", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMesh*(self: GltfNode; mesh: int32): void =
  expandMethodBind(className GltfNode, "set_mesh", 1286410249)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCamera*(self: GltfNode): int32 =
  expandMethodBind(className GltfNode, "get_camera", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCamera*(self: GltfNode; camera: int32): void =
  expandMethodBind(className GltfNode, "set_camera", 1286410249)
  var `?param` = [getPtr camera]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkin*(self: GltfNode): int32 =
  expandMethodBind(className GltfNode, "get_skin", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSkin*(self: GltfNode; skin: int32): void =
  expandMethodBind(className GltfNode, "set_skin", 1286410249)
  var `?param` = [getPtr skin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeleton*(self: GltfNode): int32 =
  expandMethodBind(className GltfNode, "get_skeleton", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSkeleton*(self: GltfNode; skeleton: int32): void =
  expandMethodBind(className GltfNode, "set_skeleton", 1286410249)
  var `?param` = [getPtr skeleton]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: GltfNode): Vector3 =
  expandMethodBind(className GltfNode, "get_position", 3783033775)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setPosition*(self: GltfNode; position: Vector3): void =
  expandMethodBind(className GltfNode, "set_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRotation*(self: GltfNode): Quaternion =
  expandMethodBind(className GltfNode, "get_rotation", 2916281908)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Quaternion)

proc setRotation*(self: GltfNode; rotation: Quaternion): void =
  expandMethodBind(className GltfNode, "set_rotation", 1727505552)
  var `?param` = [getPtr rotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScale*(self: GltfNode): Vector3 =
  expandMethodBind(className GltfNode, "get_scale", 3783033775)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setScale*(self: GltfNode; scale: Vector3): void =
  expandMethodBind(className GltfNode, "set_scale", 3460891852)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getChildren*(self: GltfNode): PackedInt32Array =
  expandMethodBind(className GltfNode, "get_children", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setChildren*(self: GltfNode; children: PackedInt32Array): void =
  expandMethodBind(className GltfNode, "set_children", 3614634198)
  var `?param` = [getPtr children]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLight*(self: GltfNode): int32 =
  expandMethodBind(className GltfNode, "get_light", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setLight*(self: GltfNode; light: int32): void =
  expandMethodBind(className GltfNode, "set_light", 1286410249)
  var `?param` = [getPtr light]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalData*(self: GltfNode; extensionName: StringName): Variant =
  expandMethodBind(className GltfNode, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GltfNode; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GltfNode, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

template originalName*(self: GltfNode): untyped = self.getOriginalName()
template `originalName=`*(self: GltfNode; value) = self.setOriginalName(value)

template parent*(self: GltfNode): untyped = self.getParent()
template `parent=`*(self: GltfNode; value) = self.setParent(value)

template height*(self: GltfNode): untyped = self.getHeight()
template `height=`*(self: GltfNode; value) = self.setHeight(value)

template xform*(self: GltfNode): untyped = self.getXform()
template `xform=`*(self: GltfNode; value) = self.setXform(value)

template mesh*(self: GltfNode): untyped = self.getMesh()
template `mesh=`*(self: GltfNode; value) = self.setMesh(value)

template camera*(self: GltfNode): untyped = self.getCamera()
template `camera=`*(self: GltfNode; value) = self.setCamera(value)

template skin*(self: GltfNode): untyped = self.getSkin()
template `skin=`*(self: GltfNode; value) = self.setSkin(value)

template skeleton*(self: GltfNode): untyped = self.getSkeleton()
template `skeleton=`*(self: GltfNode; value) = self.setSkeleton(value)

template position*(self: GltfNode): untyped = self.getPosition()
template `position=`*(self: GltfNode; value) = self.setPosition(value)

template rotation*(self: GltfNode): untyped = self.getRotation()
template `rotation=`*(self: GltfNode; value) = self.setRotation(value)

template scale*(self: GltfNode): untyped = self.getScale()
template `scale=`*(self: GltfNode; value) = self.setScale(value)

template children*(self: GltfNode): untyped = self.getChildren()
template `children=`*(self: GltfNode; value) = self.setChildren(value)

template light*(self: GltfNode): untyped = self.getLight()
template `light=`*(self: GltfNode; value) = self.setLight(value)

const GltfNode_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfNode]): Table[string, string] = GltfNode_vmap