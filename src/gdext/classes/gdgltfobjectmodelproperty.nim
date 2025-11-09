{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(GLTFObjectModelProperty, RefCounted)

proc appendNodePath*(self: GLTFObjectModelProperty; nodePath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "append_node_path", 1348162250)
  methodbind.ptrcall(self, [getPtr nodePath], void)

proc appendPathToProperty*(self: GLTFObjectModelProperty; nodePath: NodePath; propName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "append_path_to_property", 1331931644)
  methodbind.ptrcall(self, [getPtr nodePath, getPtr propName], void)

proc getAccessorType*(self: GLTFObjectModelProperty): GLTFAccessor_GLTFAccessorType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "get_accessor_type", 1998183368)
  methodbind.ptrcall(self, [], GLTFAccessor_GLTFAccessorType)

proc getGltfToGodotExpression*(self: GLTFObjectModelProperty): gdref Expression =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "get_gltf_to_godot_expression", 2240072449)
  methodbind.ptrcall(self, [], gdref Expression)

proc setGltfToGodotExpression*(self: GLTFObjectModelProperty; gltfToGodotExpr: gdref Expression): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "set_gltf_to_godot_expression", 1815845073)
  methodbind.ptrcall(self, [getPtr gltfToGodotExpr], void)

proc getGodotToGltfExpression*(self: GLTFObjectModelProperty): gdref Expression =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "get_godot_to_gltf_expression", 2240072449)
  methodbind.ptrcall(self, [], gdref Expression)

proc setGodotToGltfExpression*(self: GLTFObjectModelProperty; godotToGltfExpr: gdref Expression): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "set_godot_to_gltf_expression", 1815845073)
  methodbind.ptrcall(self, [getPtr godotToGltfExpr], void)

proc getNodePaths*(self: GLTFObjectModelProperty): TypedArray[NodePath] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "get_node_paths", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[NodePath])

proc hasNodePaths*(self: GLTFObjectModelProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "has_node_paths", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNodePaths*(self: GLTFObjectModelProperty; nodePaths: TypedArray[NodePath]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "set_node_paths", 381264803)
  methodbind.ptrcall(self, [getPtr nodePaths], void)

proc getObjectModelType*(self: GLTFObjectModelProperty): GLTFObjectModelProperty_GLTFObjectModelType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "get_object_model_type", 1094778507)
  methodbind.ptrcall(self, [], GLTFObjectModelProperty_GLTFObjectModelType)

proc setObjectModelType*(self: GLTFObjectModelProperty; `type`: GLTFObjectModelProperty_GLTFObjectModelType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "set_object_model_type", 4108684086)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getJsonPointers*(self: GLTFObjectModelProperty): TypedArray[PackedStringArray] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "get_json_pointers", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[PackedStringArray])

proc hasJsonPointers*(self: GLTFObjectModelProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "has_json_pointers", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setJsonPointers*(self: GLTFObjectModelProperty; jsonPointers: TypedArray[PackedStringArray]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "set_json_pointers", 381264803)
  methodbind.ptrcall(self, [getPtr jsonPointers], void)

proc getVariantType*(self: GLTFObjectModelProperty): Variant_Type =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "get_variant_type", 3416842102)
  methodbind.ptrcall(self, [], Variant_Type)

proc setVariantType*(self: GLTFObjectModelProperty; variantType: Variant_Type): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "set_variant_type", 2887708385)
  methodbind.ptrcall(self, [getPtr variantType], void)

proc setTypes*(self: GLTFObjectModelProperty; variantType: Variant_Type; objModelType: GLTFObjectModelProperty_GLTFObjectModelType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFObjectModelProperty, "set_types", 4150728237)
  methodbind.ptrcall(self, [getPtr variantType, getPtr objModelType], void)

template gltfToGodotExpression*(self: GLTFObjectModelProperty): untyped = self.getGltfToGodotExpression()
template `gltfToGodotExpression=`*(self: GLTFObjectModelProperty; value) = self.setGltfToGodotExpression(value)

template godotToGltfExpression*(self: GLTFObjectModelProperty): untyped = self.getGodotToGltfExpression()
template `godotToGltfExpression=`*(self: GLTFObjectModelProperty; value) = self.setGodotToGltfExpression(value)

template nodePaths*(self: GLTFObjectModelProperty): untyped = self.getNodePaths()
template `nodePaths=`*(self: GLTFObjectModelProperty; value) = self.setNodePaths(value)

template objectModelType*(self: GLTFObjectModelProperty): untyped = self.getObjectModelType()
template `objectModelType=`*(self: GLTFObjectModelProperty; value) = self.setObjectModelType(value)

template jsonPointers*(self: GLTFObjectModelProperty): untyped = self.getJsonPointers()
template `jsonPointers=`*(self: GLTFObjectModelProperty; value) = self.setJsonPointers(value)

template variantType*(self: GLTFObjectModelProperty): untyped = self.getVariantType()
template `variantType=`*(self: GLTFObjectModelProperty; value) = self.setVariantType(value)
