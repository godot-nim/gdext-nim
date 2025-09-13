{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(EditorNode3DGizmoPlugin, Resource)

method hasGizmo*(self: EditorNode3DGizmoPlugin; forNode3D: Node3D): bool {.base.} = (discard)
proc registerVirtual_hasGizmo*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_gizmo"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).hasGizmo(p_args[0].decode(Node3D)).encode(r_ret)

method createGizmo*(self: EditorNode3DGizmoPlugin; forNode3D: Node3D): gdref EditorNode3DGizmo {.base.} = (discard)
proc registerVirtual_createGizmo*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_gizmo"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).createGizmo(p_args[0].decode(Node3D)).encode(r_ret)

method getGizmoName*(self: EditorNode3DGizmoPlugin): String {.base.} = (discard)
proc registerVirtual_getGizmoName*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_gizmo_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).getGizmoName().encode(r_ret)

method getPriority*(self: EditorNode3DGizmoPlugin): int32 {.base.} = (discard)
proc registerVirtual_getPriority*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).getPriority().encode(r_ret)

method canBeHidden*(self: EditorNode3DGizmoPlugin): bool {.base.} = (discard)
proc registerVirtual_canBeHidden*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_be_hidden"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).canBeHidden().encode(r_ret)

method isSelectableWhenHidden*(self: EditorNode3DGizmoPlugin): bool {.base.} = (discard)
proc registerVirtual_isSelectableWhenHidden*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_selectable_when_hidden"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).isSelectableWhenHidden().encode(r_ret)

method redraw*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo): void {.base.} = (discard)
proc registerVirtual_redraw*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_redraw"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).redraw(p_args[0].decode(gdref EditorNode3DGizmo))

method getHandleName*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; handleId: int32; secondary: bool): String {.base.} = (discard)
proc registerVirtual_getHandleName*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_handle_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).getHandleName(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(int32), p_args[2].decode(bool)).encode(r_ret)

method isHandleHighlighted*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; handleId: int32; secondary: bool): bool {.base.} = (discard)
proc registerVirtual_isHandleHighlighted*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_handle_highlighted"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).isHandleHighlighted(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(int32), p_args[2].decode(bool)).encode(r_ret)

method getHandleValue*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; handleId: int32; secondary: bool): Variant {.base.} = (discard)
proc registerVirtual_getHandleValue*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_handle_value"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).getHandleValue(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(int32), p_args[2].decode(bool)).encode(r_ret)

method beginHandleAction*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; handleId: int32; secondary: bool): void {.base.} = (discard)
proc registerVirtual_beginHandleAction*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_begin_handle_action"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).beginHandleAction(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(int32), p_args[2].decode(bool))

method setHandle*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; handleId: int32; secondary: bool; camera: Camera3D; screenPos: Vector2): void {.base.} = (discard)
proc registerVirtual_setHandle*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_handle"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).setHandle(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(int32), p_args[2].decode(bool), p_args[3].decode(Camera3D), p_args[4].decode(Vector2))

method commitHandle*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; handleId: int32; secondary: bool; restore: Variant; cancel: bool): void {.base.} = (discard)
proc registerVirtual_commitHandle*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_commit_handle"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).commitHandle(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(int32), p_args[2].decode(bool), p_args[3].decode(Variant), p_args[4].decode(bool))

method subgizmosIntersectRay*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; camera: Camera3D; screenPos: Vector2): int32 {.base.} = (discard)
proc registerVirtual_subgizmosIntersectRay*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_subgizmos_intersect_ray"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).subgizmosIntersectRay(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(Camera3D), p_args[2].decode(Vector2)).encode(r_ret)

method subgizmosIntersectFrustum*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; camera: Camera3D; frustumPlanes: TypedArray[Plane]): PackedInt32Array {.base.} = (discard)
proc registerVirtual_subgizmosIntersectFrustum*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_subgizmos_intersect_frustum"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).subgizmosIntersectFrustum(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(Camera3D), p_args[2].decode(TypedArray[Plane])).encode(r_ret)

method getSubgizmoTransform*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; subgizmoId: int32): Transform3D {.base.} = (discard)
proc registerVirtual_getSubgizmoTransform*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_subgizmo_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).getSubgizmoTransform(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(int32)).encode(r_ret)

method setSubgizmoTransform*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; subgizmoId: int32; transform: Transform3D): void {.base.} = (discard)
proc registerVirtual_setSubgizmoTransform*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_subgizmo_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).setSubgizmoTransform(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(int32), p_args[2].decode(Transform3D))

method commitSubgizmos*(self: EditorNode3DGizmoPlugin; gizmo: gdref EditorNode3DGizmo; ids: PackedInt32Array; restores: TypedArray[Transform3D]; cancel: bool): void {.base.} = (discard)
proc registerVirtual_commitSubgizmos*[T: EditorNode3DGizmoPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_commit_subgizmos"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorNode3DGizmoPlugin](p_instance).commitSubgizmos(p_args[0].decode(gdref EditorNode3DGizmo), p_args[1].decode(PackedInt32Array), p_args[2].decode(TypedArray[Transform3D]), p_args[3].decode(bool))

proc createMaterial*(self: EditorNode3DGizmoPlugin; name: String; color: Color; billboard: bool = false; onTop: bool = false; useVertexColor: bool = false): void =
  expandMethodBind(className EditorNode3DGizmoPlugin, "create_material", 3486012546)
  methodbind.ptrcall(self, [getPtr name, getPtr color, getPtr billboard, getPtr onTop, getPtr useVertexColor])

proc createIconMaterial*(self: EditorNode3DGizmoPlugin; name: String; texture: gdref Texture2D; onTop: bool = false; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className EditorNode3DGizmoPlugin, "create_icon_material", 3804976916)
  methodbind.ptrcall(self, [getPtr name, getPtr texture, getPtr onTop, getPtr color])

proc createHandleMaterial*(self: EditorNode3DGizmoPlugin; name: String; billboard: bool = false; texture: gdref Texture2D = default gdref Texture2D): void =
  expandMethodBind(className EditorNode3DGizmoPlugin, "create_handle_material", 2486475223)
  methodbind.ptrcall(self, [getPtr name, getPtr billboard, getPtr texture])

proc addMaterial*(self: EditorNode3DGizmoPlugin; name: String; material: gdref StandardMaterial3D): void =
  expandMethodBind(className EditorNode3DGizmoPlugin, "add_material", 1374068695)
  methodbind.ptrcall(self, [getPtr name, getPtr material])

proc getMaterial*(self: EditorNode3DGizmoPlugin; name: String; gizmo: gdref EditorNode3DGizmo = default gdref EditorNode3DGizmo): gdref StandardMaterial3D =
  expandMethodBind(className EditorNode3DGizmoPlugin, "get_material", 974464017)
  var ret: encoded gdref StandardMaterial3D
  methodbind.ptrcall(self, [getPtr name, getPtr gizmo], addr ret)
  (addr ret).decode_result(gdref StandardMaterial3D)
