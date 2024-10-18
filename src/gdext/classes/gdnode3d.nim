{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc setTransform*(self: Node3D; local: Transform3D): void =
  expandMethodBind(className Node3D, "set_transform", 2952846383)
  var `?param` = [getPtr local]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransform*(self: Node3D): Transform3D =
  expandMethodBind(className Node3D, "get_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setPosition*(self: Node3D; position: Vector3): void =
  expandMethodBind(className Node3D, "set_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: Node3D): Vector3 =
  expandMethodBind(className Node3D, "get_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setRotation*(self: Node3D; eulerRadians: Vector3): void =
  expandMethodBind(className Node3D, "set_rotation", 3460891852)
  var `?param` = [getPtr eulerRadians]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRotation*(self: Node3D): Vector3 =
  expandMethodBind(className Node3D, "get_rotation", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setRotationDegrees*(self: Node3D; eulerDegrees: Vector3): void =
  expandMethodBind(className Node3D, "set_rotation_degrees", 3460891852)
  var `?param` = [getPtr eulerDegrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRotationDegrees*(self: Node3D): Vector3 =
  expandMethodBind(className Node3D, "get_rotation_degrees", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setRotationOrder*(self: Node3D; order: EulerOrder): void =
  expandMethodBind(className Node3D, "set_rotation_order", 1820889989)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRotationOrder*(self: Node3D): EulerOrder =
  expandMethodBind(className Node3D, "get_rotation_order", 916939469)
  var ret: encoded EulerOrder
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EulerOrder)

proc setRotationEditMode*(self: Node3D; editMode: Node3D_RotationEditMode): void =
  expandMethodBind(className Node3D, "set_rotation_edit_mode", 141483330)
  var `?param` = [getPtr editMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRotationEditMode*(self: Node3D): Node3D_RotationEditMode =
  expandMethodBind(className Node3D, "get_rotation_edit_mode", 1572188370)
  var ret: encoded Node3D_RotationEditMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node3D_RotationEditMode)

proc setScale*(self: Node3D; scale: Vector3): void =
  expandMethodBind(className Node3D, "set_scale", 3460891852)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScale*(self: Node3D): Vector3 =
  expandMethodBind(className Node3D, "get_scale", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setQuaternion*(self: Node3D; quaternion: Quaternion): void =
  expandMethodBind(className Node3D, "set_quaternion", 1727505552)
  var `?param` = [getPtr quaternion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getQuaternion*(self: Node3D): Quaternion =
  expandMethodBind(className Node3D, "get_quaternion", 1222331677)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Quaternion)

proc setBasis*(self: Node3D; basis: Basis): void =
  expandMethodBind(className Node3D, "set_basis", 1055510324)
  var `?param` = [getPtr basis]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBasis*(self: Node3D): Basis =
  expandMethodBind(className Node3D, "get_basis", 2716978435)
  var ret: encoded Basis
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Basis)

proc setGlobalTransform*(self: Node3D; global: Transform3D): void =
  expandMethodBind(className Node3D, "set_global_transform", 2952846383)
  var `?param` = [getPtr global]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalTransform*(self: Node3D): Transform3D =
  expandMethodBind(className Node3D, "get_global_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setGlobalPosition*(self: Node3D; position: Vector3): void =
  expandMethodBind(className Node3D, "set_global_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalPosition*(self: Node3D): Vector3 =
  expandMethodBind(className Node3D, "get_global_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setGlobalBasis*(self: Node3D; basis: Basis): void =
  expandMethodBind(className Node3D, "set_global_basis", 1055510324)
  var `?param` = [getPtr basis]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalBasis*(self: Node3D): Basis =
  expandMethodBind(className Node3D, "get_global_basis", 2716978435)
  var ret: encoded Basis
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Basis)

proc setGlobalRotation*(self: Node3D; eulerRadians: Vector3): void =
  expandMethodBind(className Node3D, "set_global_rotation", 3460891852)
  var `?param` = [getPtr eulerRadians]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalRotation*(self: Node3D): Vector3 =
  expandMethodBind(className Node3D, "get_global_rotation", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setGlobalRotationDegrees*(self: Node3D; eulerDegrees: Vector3): void =
  expandMethodBind(className Node3D, "set_global_rotation_degrees", 3460891852)
  var `?param` = [getPtr eulerDegrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalRotationDegrees*(self: Node3D): Vector3 =
  expandMethodBind(className Node3D, "get_global_rotation_degrees", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getParentNode3D*(self: Node3D): Node3D =
  expandMethodBind(className Node3D, "get_parent_node_3d", 151077316)
  var ret: encoded Node3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node3D)

proc setIgnoreTransformNotification*(self: Node3D; enabled: bool): void =
  expandMethodBind(className Node3D, "set_ignore_transform_notification", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAsTopLevel*(self: Node3D; enable: bool): void =
  expandMethodBind(className Node3D, "set_as_top_level", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSetAsTopLevel*(self: Node3D): bool =
  expandMethodBind(className Node3D, "is_set_as_top_level", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDisableScale*(self: Node3D; disable: bool): void =
  expandMethodBind(className Node3D, "set_disable_scale", 2586408642)
  var `?param` = [getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isScaleDisabled*(self: Node3D): bool =
  expandMethodBind(className Node3D, "is_scale_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getWorld3D*(self: Node3D): gdref World3D =
  expandMethodBind(className Node3D, "get_world_3d", 317588385)
  var ret: encoded gdref World3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref World3D)

proc forceUpdateTransform*(self: Node3D): void =
  expandMethodBind(className Node3D, "force_update_transform", 3218959716)
  methodbind.ptrcall(self, nil)

proc setVisibilityParent*(self: Node3D; path: NodePath): void =
  expandMethodBind(className Node3D, "set_visibility_parent", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityParent*(self: Node3D): NodePath =
  expandMethodBind(className Node3D, "get_visibility_parent", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc updateGizmos*(self: Node3D): void =
  expandMethodBind(className Node3D, "update_gizmos", 3218959716)
  methodbind.ptrcall(self, nil)

proc addGizmo*(self: Node3D; gizmo: gdref Node3DGizmo): void =
  expandMethodBind(className Node3D, "add_gizmo", 1544533845)
  var `?param` = [getPtr gizmo]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGizmos*(self: Node3D): TypedArray[Node3DGizmo] =
  expandMethodBind(className Node3D, "get_gizmos", 3995934104)
  var ret: encoded TypedArray[Node3DGizmo]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Node3DGizmo])

proc clearGizmos*(self: Node3D): void =
  expandMethodBind(className Node3D, "clear_gizmos", 3218959716)
  methodbind.ptrcall(self, nil)

proc setSubgizmoSelection*(self: Node3D; gizmo: gdref Node3DGizmo; id: int32; transform: Transform3D): void =
  expandMethodBind(className Node3D, "set_subgizmo_selection", 3317607635)
  var `?param` = [getPtr gizmo, getPtr id, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearSubgizmoSelection*(self: Node3D): void =
  expandMethodBind(className Node3D, "clear_subgizmo_selection", 3218959716)
  methodbind.ptrcall(self, nil)

proc setVisible*(self: Node3D; visible: bool): void =
  expandMethodBind(className Node3D, "set_visible", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVisible*(self: Node3D): bool =
  expandMethodBind(className Node3D, "is_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isVisibleInTree*(self: Node3D): bool =
  expandMethodBind(className Node3D, "is_visible_in_tree", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc show*(self: Node3D): void =
  expandMethodBind(className Node3D, "show", 3218959716)
  methodbind.ptrcall(self, nil)

proc hide*(self: Node3D): void =
  expandMethodBind(className Node3D, "hide", 3218959716)
  methodbind.ptrcall(self, nil)

proc setNotifyLocalTransform*(self: Node3D; enable: bool): void =
  expandMethodBind(className Node3D, "set_notify_local_transform", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLocalTransformNotificationEnabled*(self: Node3D): bool =
  expandMethodBind(className Node3D, "is_local_transform_notification_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNotifyTransform*(self: Node3D; enable: bool): void =
  expandMethodBind(className Node3D, "set_notify_transform", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTransformNotificationEnabled*(self: Node3D): bool =
  expandMethodBind(className Node3D, "is_transform_notification_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc rotate*(self: Node3D; axis: Vector3; angle: Float): void =
  expandMethodBind(className Node3D, "rotate", 3436291937)
  var `?param` = [getPtr axis, getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalRotate*(self: Node3D; axis: Vector3; angle: Float): void =
  expandMethodBind(className Node3D, "global_rotate", 3436291937)
  var `?param` = [getPtr axis, getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalScale*(self: Node3D; scale: Vector3): void =
  expandMethodBind(className Node3D, "global_scale", 3460891852)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalTranslate*(self: Node3D; offset: Vector3): void =
  expandMethodBind(className Node3D, "global_translate", 3460891852)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc rotateObjectLocal*(self: Node3D; axis: Vector3; angle: Float): void =
  expandMethodBind(className Node3D, "rotate_object_local", 3436291937)
  var `?param` = [getPtr axis, getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc scaleObjectLocal*(self: Node3D; scale: Vector3): void =
  expandMethodBind(className Node3D, "scale_object_local", 3460891852)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc translateObjectLocal*(self: Node3D; offset: Vector3): void =
  expandMethodBind(className Node3D, "translate_object_local", 3460891852)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc rotateX*(self: Node3D; angle: Float): void =
  expandMethodBind(className Node3D, "rotate_x", 373806689)
  var `?param` = [getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc rotateY*(self: Node3D; angle: Float): void =
  expandMethodBind(className Node3D, "rotate_y", 373806689)
  var `?param` = [getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc rotateZ*(self: Node3D; angle: Float): void =
  expandMethodBind(className Node3D, "rotate_z", 373806689)
  var `?param` = [getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc translate*(self: Node3D; offset: Vector3): void =
  expandMethodBind(className Node3D, "translate", 3460891852)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc orthonormalize*(self: Node3D): void =
  expandMethodBind(className Node3D, "orthonormalize", 3218959716)
  methodbind.ptrcall(self, nil)

proc setIdentity*(self: Node3D): void =
  expandMethodBind(className Node3D, "set_identity", 3218959716)
  methodbind.ptrcall(self, nil)

proc lookAt*(self: Node3D; target: Vector3; up: Vector3 = vector3(0, 1, 0); useModelFront: bool = false): void =
  expandMethodBind(className Node3D, "look_at", 2882425029)
  var `?param` = [getPtr target, getPtr up, getPtr useModelFront]
  methodbind.ptrcall(self, addr `?param`[0])

proc lookAtFromPosition*(self: Node3D; position: Vector3; target: Vector3; up: Vector3 = vector3(0, 1, 0); useModelFront: bool = false): void =
  expandMethodBind(className Node3D, "look_at_from_position", 2086826090)
  var `?param` = [getPtr position, getPtr target, getPtr up, getPtr useModelFront]
  methodbind.ptrcall(self, addr `?param`[0])

proc toLocal*(self: Node3D; globalPoint: Vector3): Vector3 =
  expandMethodBind(className Node3D, "to_local", 192990374)
  var `?param` = [getPtr globalPoint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc toGlobal*(self: Node3D; localPoint: Vector3): Vector3 =
  expandMethodBind(className Node3D, "to_global", 192990374)
  var `?param` = [getPtr localPoint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

template transform*(self: Node3D): untyped = self.getTransform()
template `transform=`*(self: Node3D; value) = self.setTransform(value)

template globalTransform*(self: Node3D): untyped = self.getGlobalTransform()
template `globalTransform=`*(self: Node3D; value) = self.setGlobalTransform(value)

template position*(self: Node3D): untyped = self.getPosition()
template `position=`*(self: Node3D; value) = self.setPosition(value)

template rotation*(self: Node3D): untyped = self.getRotation()
template `rotation=`*(self: Node3D; value) = self.setRotation(value)

template rotationDegrees*(self: Node3D): untyped = self.getRotationDegrees()
template `rotationDegrees=`*(self: Node3D; value) = self.setRotationDegrees(value)

template quaternion*(self: Node3D): untyped = self.getQuaternion()
template `quaternion=`*(self: Node3D; value) = self.setQuaternion(value)

template basis*(self: Node3D): untyped = self.getBasis()
template `basis=`*(self: Node3D; value) = self.setBasis(value)

template scale*(self: Node3D): untyped = self.getScale()
template `scale=`*(self: Node3D; value) = self.setScale(value)

template rotationEditMode*(self: Node3D): untyped = self.getRotationEditMode()
template `rotationEditMode=`*(self: Node3D; value) = self.setRotationEditMode(value)

template rotationOrder*(self: Node3D): untyped = self.getRotationOrder()
template `rotationOrder=`*(self: Node3D; value) = self.setRotationOrder(value)

template topLevel*(self: Node3D): untyped = self.isSetAsTopLevel()
template `topLevel=`*(self: Node3D; value) = self.setAsTopLevel(value)

template globalPosition*(self: Node3D): untyped = self.getGlobalPosition()
template `globalPosition=`*(self: Node3D; value) = self.setGlobalPosition(value)

template globalBasis*(self: Node3D): untyped = self.getGlobalBasis()
template `globalBasis=`*(self: Node3D; value) = self.setGlobalBasis(value)

template globalRotation*(self: Node3D): untyped = self.getGlobalRotation()
template `globalRotation=`*(self: Node3D; value) = self.setGlobalRotation(value)

template globalRotationDegrees*(self: Node3D): untyped = self.getGlobalRotationDegrees()
template `globalRotationDegrees=`*(self: Node3D; value) = self.setGlobalRotationDegrees(value)

template visible*(self: Node3D): untyped = self.isVisible()
template `visible=`*(self: Node3D; value) = self.setVisible(value)

template visibilityParent*(self: Node3D): untyped = self.getVisibilityParent()
template `visibilityParent=`*(self: Node3D; value) = self.setVisibilityParent(value)

const Node3D_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Node3D]): Table[string, string] = Node3D_vmap

proc visibilityChanged*(self: Node3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("visibility_changed")
  self.emitSignal(signalname)