{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(Node3D, Node)

const NotificationTransformChanged* = 2000
const NotificationEnterWorld* = 41
const NotificationExitWorld* = 42
const NotificationVisibilityChanged* = 43
const NotificationLocalTransformChanged* = 44

proc setTransform*(self: Node3D; local: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_transform", 2952846383)
  methodbind.ptrcall(self, [getPtr local], void)

proc getTransform*(self: Node3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc setPosition*(self: Node3D; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_position", 3460891852)
  methodbind.ptrcall(self, [getPtr position], void)

proc getPosition*(self: Node3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setRotation*(self: Node3D; eulerRadians: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_rotation", 3460891852)
  methodbind.ptrcall(self, [getPtr eulerRadians], void)

proc getRotation*(self: Node3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_rotation", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setRotationDegrees*(self: Node3D; eulerDegrees: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_rotation_degrees", 3460891852)
  methodbind.ptrcall(self, [getPtr eulerDegrees], void)

proc getRotationDegrees*(self: Node3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_rotation_degrees", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setRotationOrder*(self: Node3D; order: EulerOrder): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_rotation_order", 1820889989)
  methodbind.ptrcall(self, [getPtr order], void)

proc getRotationOrder*(self: Node3D): EulerOrder =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_rotation_order", 916939469)
  methodbind.ptrcall(self, [], EulerOrder)

proc setRotationEditMode*(self: Node3D; editMode: Node3D_RotationEditMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_rotation_edit_mode", 141483330)
  methodbind.ptrcall(self, [getPtr editMode], void)

proc getRotationEditMode*(self: Node3D): Node3D_RotationEditMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_rotation_edit_mode", 1572188370)
  methodbind.ptrcall(self, [], Node3D_RotationEditMode)

proc setScale*(self: Node3D; scale: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_scale", 3460891852)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getScale*(self: Node3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_scale", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setQuaternion*(self: Node3D; quaternion: Quaternion): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_quaternion", 1727505552)
  methodbind.ptrcall(self, [getPtr quaternion], void)

proc getQuaternion*(self: Node3D): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_quaternion", 1222331677)
  methodbind.ptrcall(self, [], Quaternion)

proc setBasis*(self: Node3D; basis: Basis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_basis", 1055510324)
  methodbind.ptrcall(self, [getPtr basis], void)

proc getBasis*(self: Node3D): Basis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_basis", 2716978435)
  methodbind.ptrcall(self, [], Basis)

proc setGlobalTransform*(self: Node3D; global: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_global_transform", 2952846383)
  methodbind.ptrcall(self, [getPtr global], void)

proc getGlobalTransform*(self: Node3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_global_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc getGlobalTransformInterpolated*(self: Node3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_global_transform_interpolated", 4183770049)
  methodbind.ptrcall(self, [], Transform3D)

proc setGlobalPosition*(self: Node3D; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_global_position", 3460891852)
  methodbind.ptrcall(self, [getPtr position], void)

proc getGlobalPosition*(self: Node3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_global_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setGlobalBasis*(self: Node3D; basis: Basis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_global_basis", 1055510324)
  methodbind.ptrcall(self, [getPtr basis], void)

proc getGlobalBasis*(self: Node3D): Basis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_global_basis", 2716978435)
  methodbind.ptrcall(self, [], Basis)

proc setGlobalRotation*(self: Node3D; eulerRadians: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_global_rotation", 3460891852)
  methodbind.ptrcall(self, [getPtr eulerRadians], void)

proc getGlobalRotation*(self: Node3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_global_rotation", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setGlobalRotationDegrees*(self: Node3D; eulerDegrees: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_global_rotation_degrees", 3460891852)
  methodbind.ptrcall(self, [getPtr eulerDegrees], void)

proc getGlobalRotationDegrees*(self: Node3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_global_rotation_degrees", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getParentNode3D*(self: Node3D): Node3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_parent_node_3d", 151077316)
  methodbind.ptrcall(self, [], Node3D)

proc setIgnoreTransformNotification*(self: Node3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_ignore_transform_notification", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc setAsTopLevel*(self: Node3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_as_top_level", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSetAsTopLevel*(self: Node3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "is_set_as_top_level", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDisableScale*(self: Node3D; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_disable_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr disable], void)

proc isScaleDisabled*(self: Node3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "is_scale_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getWorld3D*(self: Node3D): gdref World3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_world_3d", 317588385)
  methodbind.ptrcall(self, [], gdref World3D)

proc forceUpdateTransform*(self: Node3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "force_update_transform", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setVisibilityParent*(self: Node3D; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_visibility_parent", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getVisibilityParent*(self: Node3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_visibility_parent", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc updateGizmos*(self: Node3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "update_gizmos", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addGizmo*(self: Node3D; gizmo: gdref Node3DGizmo): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "add_gizmo", 1544533845)
  methodbind.ptrcall(self, [getPtr gizmo], void)

proc getGizmos*(self: Node3D): TypedArray[gdref Node3DGizmo] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "get_gizmos", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[gdref Node3DGizmo])

proc clearGizmos*(self: Node3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "clear_gizmos", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setSubgizmoSelection*(self: Node3D; gizmo: gdref Node3DGizmo; id: int32; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_subgizmo_selection", 3317607635)
  methodbind.ptrcall(self, [getPtr gizmo, getPtr id, getPtr transform], void)

proc clearSubgizmoSelection*(self: Node3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "clear_subgizmo_selection", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setVisible*(self: Node3D; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isVisible*(self: Node3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "is_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isVisibleInTree*(self: Node3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "is_visible_in_tree", 36873697)
  methodbind.ptrcall(self, [], bool)

proc show*(self: Node3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "show", 3218959716)
  methodbind.ptrcall(self, [], void)

proc hide*(self: Node3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "hide", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setNotifyLocalTransform*(self: Node3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_notify_local_transform", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isLocalTransformNotificationEnabled*(self: Node3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "is_local_transform_notification_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNotifyTransform*(self: Node3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_notify_transform", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isTransformNotificationEnabled*(self: Node3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "is_transform_notification_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc rotate*(self: Node3D; axis: Vector3; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "rotate", 3436291937)
  methodbind.ptrcall(self, [getPtr axis, getPtr angle], void)

proc globalRotate*(self: Node3D; axis: Vector3; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "global_rotate", 3436291937)
  methodbind.ptrcall(self, [getPtr axis, getPtr angle], void)

proc globalScale*(self: Node3D; scale: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "global_scale", 3460891852)
  methodbind.ptrcall(self, [getPtr scale], void)

proc globalTranslate*(self: Node3D; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "global_translate", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc rotateObjectLocal*(self: Node3D; axis: Vector3; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "rotate_object_local", 3436291937)
  methodbind.ptrcall(self, [getPtr axis, getPtr angle], void)

proc scaleObjectLocal*(self: Node3D; scale: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "scale_object_local", 3460891852)
  methodbind.ptrcall(self, [getPtr scale], void)

proc translateObjectLocal*(self: Node3D; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "translate_object_local", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc rotateX*(self: Node3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "rotate_x", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc rotateY*(self: Node3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "rotate_y", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc rotateZ*(self: Node3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "rotate_z", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc translate*(self: Node3D; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "translate", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc orthonormalize*(self: Node3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "orthonormalize", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setIdentity*(self: Node3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "set_identity", 3218959716)
  methodbind.ptrcall(self, [], void)

proc lookAt*(self: Node3D; target: Vector3; up: Vector3 = vector3(0, 1, 0); useModelFront: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "look_at", 2882425029)
  methodbind.ptrcall(self, [getPtr target, getPtr up, getPtr useModelFront], void)

proc lookAtFromPosition*(self: Node3D; position: Vector3; target: Vector3; up: Vector3 = vector3(0, 1, 0); useModelFront: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "look_at_from_position", 2086826090)
  methodbind.ptrcall(self, [getPtr position, getPtr target, getPtr up, getPtr useModelFront], void)

proc toLocal*(self: Node3D; globalPoint: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "to_local", 192990374)
  methodbind.ptrcall(self, [getPtr globalPoint], Vector3)

proc toGlobal*(self: Node3D; localPoint: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node3D, "to_global", 192990374)
  methodbind.ptrcall(self, [getPtr localPoint], Vector3)

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
