{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFDocumentExtension, Resource)

method importPreflight*(self: GLTFDocumentExtension; state: gdref GLTFState; extensions: PackedStringArray): Error {.base.} = (discard)
proc registerVirtual_importPreflight*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_import_preflight"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).importPreflight(p_args[0].decode(gdref GLTFState), p_args[1].decode(PackedStringArray)).encode(r_ret)

method getSupportedExtensions*(self: GLTFDocumentExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getSupportedExtensions*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_supported_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).getSupportedExtensions().encode(r_ret)

method parseNodeExtensions*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; extensions: Dictionary): Error {.base.} = (discard)
proc registerVirtual_parseNodeExtensions*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_node_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).parseNodeExtensions(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Dictionary)).encode(r_ret)

method parseImageData*(self: GLTFDocumentExtension; state: gdref GLTFState; imageData: PackedByteArray; mimeType: String; retImage: gdref Image): Error {.base.} = (discard)
proc registerVirtual_parseImageData*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_image_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).parseImageData(p_args[0].decode(gdref GLTFState), p_args[1].decode(PackedByteArray), p_args[2].decode(String), p_args[3].decode(gdref Image)).encode(r_ret)

method getImageFileExtension*(self: GLTFDocumentExtension): String {.base.} = (discard)
proc registerVirtual_getImageFileExtension*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_image_file_extension"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).getImageFileExtension().encode(r_ret)

method parseTextureJson*(self: GLTFDocumentExtension; state: gdref GLTFState; textureJson: Dictionary; retGltfTexture: gdref GLTFTexture): Error {.base.} = (discard)
proc registerVirtual_parseTextureJson*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_texture_json"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).parseTextureJson(p_args[0].decode(gdref GLTFState), p_args[1].decode(Dictionary), p_args[2].decode(gdref GLTFTexture)).encode(r_ret)

method importObjectModelProperty*(self: GLTFDocumentExtension; state: gdref GLTFState; splitJsonPointer: PackedStringArray; partialPaths: Array[NodePath]): gdref GLTFObjectModelProperty {.base.} = (discard)
proc registerVirtual_importObjectModelProperty*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_import_object_model_property"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).importObjectModelProperty(p_args[0].decode(gdref GLTFState), p_args[1].decode(PackedStringArray), p_args[2].decode(Array[NodePath])).encode(r_ret)

method importPostParse*(self: GLTFDocumentExtension; state: gdref GLTFState): Error {.base.} = (discard)
proc registerVirtual_importPostParse*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_import_post_parse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).importPostParse(p_args[0].decode(gdref GLTFState)).encode(r_ret)

method importPreGenerate*(self: GLTFDocumentExtension; state: gdref GLTFState): Error {.base.} = (discard)
proc registerVirtual_importPreGenerate*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_import_pre_generate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).importPreGenerate(p_args[0].decode(gdref GLTFState)).encode(r_ret)

method generateSceneNode*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; sceneParent: Node): Node3D {.base.} = (discard)
proc registerVirtual_generateSceneNode*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_generate_scene_node"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).generateSceneNode(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Node)).encode(r_ret)

method importNode*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; json: Dictionary; node: Node): Error {.base.} = (discard)
proc registerVirtual_importNode*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_import_node"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).importNode(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Dictionary), p_args[3].decode(Node)).encode(r_ret)

method importPost*(self: GLTFDocumentExtension; state: gdref GLTFState; root: Node): Error {.base.} = (discard)
proc registerVirtual_importPost*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_import_post"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).importPost(p_args[0].decode(gdref GLTFState), p_args[1].decode(Node)).encode(r_ret)

method exportPreflight*(self: GLTFDocumentExtension; state: gdref GLTFState; root: Node): Error {.base.} = (discard)
proc registerVirtual_exportPreflight*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_preflight"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).exportPreflight(p_args[0].decode(gdref GLTFState), p_args[1].decode(Node)).encode(r_ret)

method convertSceneNode*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; sceneNode: Node): void {.base.} = (discard)
proc registerVirtual_convertSceneNode*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_convert_scene_node"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).convertSceneNode(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Node))

method exportPostConvert*(self: GLTFDocumentExtension; state: gdref GLTFState; root: Node): Error {.base.} = (discard)
proc registerVirtual_exportPostConvert*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_post_convert"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).exportPostConvert(p_args[0].decode(gdref GLTFState), p_args[1].decode(Node)).encode(r_ret)

method exportPreserialize*(self: GLTFDocumentExtension; state: gdref GLTFState): Error {.base.} = (discard)
proc registerVirtual_exportPreserialize*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_preserialize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).exportPreserialize(p_args[0].decode(gdref GLTFState)).encode(r_ret)

method exportObjectModelProperty*(self: GLTFDocumentExtension; state: gdref GLTFState; nodePath: NodePath; godotNode: Node; gltfNodeIndex: int32; targetObject: Object; targetDepth: int32): gdref GLTFObjectModelProperty {.base.} = (discard)
proc registerVirtual_exportObjectModelProperty*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_object_model_property"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).exportObjectModelProperty(p_args[0].decode(gdref GLTFState), p_args[1].decode(NodePath), p_args[2].decode(Node), p_args[3].decode(int32), p_args[4].decode(Object), p_args[5].decode(int32)).encode(r_ret)

method getSaveableImageFormats*(self: GLTFDocumentExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getSaveableImageFormats*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_saveable_image_formats"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).getSaveableImageFormats().encode(r_ret)

method serializeImageToBytes*(self: GLTFDocumentExtension; state: gdref GLTFState; image: gdref Image; imageDict: Dictionary; imageFormat: String; lossyQuality: Float): PackedByteArray {.base.} = (discard)
proc registerVirtual_serializeImageToBytes*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_serialize_image_to_bytes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).serializeImageToBytes(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref Image), p_args[2].decode(Dictionary), p_args[3].decode(String), p_args[4].decode(Float)).encode(r_ret)

method saveImageAtPath*(self: GLTFDocumentExtension; state: gdref GLTFState; image: gdref Image; filePath: String; imageFormat: String; lossyQuality: Float): Error {.base.} = (discard)
proc registerVirtual_saveImageAtPath*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_save_image_at_path"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).saveImageAtPath(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref Image), p_args[2].decode(String), p_args[3].decode(String), p_args[4].decode(Float)).encode(r_ret)

method serializeTextureJson*(self: GLTFDocumentExtension; state: gdref GLTFState; textureJson: Dictionary; gltfTexture: gdref GLTFTexture; imageFormat: String): Error {.base.} = (discard)
proc registerVirtual_serializeTextureJson*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_serialize_texture_json"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).serializeTextureJson(p_args[0].decode(gdref GLTFState), p_args[1].decode(Dictionary), p_args[2].decode(gdref GLTFTexture), p_args[3].decode(String)).encode(r_ret)

method exportNode*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; json: Dictionary; node: Node): Error {.base.} = (discard)
proc registerVirtual_exportNode*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_node"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).exportNode(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Dictionary), p_args[3].decode(Node)).encode(r_ret)

method exportPost*(self: GLTFDocumentExtension; state: gdref GLTFState): Error {.base.} = (discard)
proc registerVirtual_exportPost*[T: GLTFDocumentExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_export_post"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GLTFDocumentExtension](p_instance).exportPost(p_args[0].decode(gdref GLTFState)).encode(r_ret)
