{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method importPreflight*(self: GLTFDocumentExtension; state: gdref GLTFState; extensions: PackedStringArray): Error {.base.} = (discard)
proc importPreflight(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).importPreflight(p_args[0].decode(gdref GLTFState), p_args[1].decode(PackedStringArray)).encode(r_ret)
template importPreflight_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = importPreflight

method getSupportedExtensions*(self: GLTFDocumentExtension): PackedStringArray {.base.} = (discard)
proc getSupportedExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).getSupportedExtensions().encode(r_ret)
template getSupportedExtensions_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = getSupportedExtensions

method parseNodeExtensions*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; extensions: Dictionary): Error {.base.} = (discard)
proc parseNodeExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).parseNodeExtensions(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Dictionary)).encode(r_ret)
template parseNodeExtensions_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = parseNodeExtensions

method parseImageData*(self: GLTFDocumentExtension; state: gdref GLTFState; imageData: PackedByteArray; mimeType: String; retImage: gdref Image): Error {.base.} = (discard)
proc parseImageData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).parseImageData(p_args[0].decode(gdref GLTFState), p_args[1].decode(PackedByteArray), p_args[2].decode(String), p_args[3].decode(gdref Image)).encode(r_ret)
template parseImageData_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = parseImageData

method getImageFileExtension*(self: GLTFDocumentExtension): String {.base.} = (discard)
proc getImageFileExtension(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).getImageFileExtension().encode(r_ret)
template getImageFileExtension_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = getImageFileExtension

method parseTextureJson*(self: GLTFDocumentExtension; state: gdref GLTFState; textureJson: Dictionary; retGltfTexture: gdref GLTFTexture): Error {.base.} = (discard)
proc parseTextureJson(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).parseTextureJson(p_args[0].decode(gdref GLTFState), p_args[1].decode(Dictionary), p_args[2].decode(gdref GLTFTexture)).encode(r_ret)
template parseTextureJson_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = parseTextureJson

method generateSceneNode*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; sceneParent: Node): Node3D {.base.} = (discard)
proc generateSceneNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).generateSceneNode(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Node)).encode(r_ret)
template generateSceneNode_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = generateSceneNode

method importPostParse*(self: GLTFDocumentExtension; state: gdref GLTFState): Error {.base.} = (discard)
proc importPostParse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).importPostParse(p_args[0].decode(gdref GLTFState)).encode(r_ret)
template importPostParse_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = importPostParse

method importNode*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; json: Dictionary; node: Node): Error {.base.} = (discard)
proc importNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).importNode(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Dictionary), p_args[3].decode(Node)).encode(r_ret)
template importNode_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = importNode

method importPost*(self: GLTFDocumentExtension; state: gdref GLTFState; root: Node): Error {.base.} = (discard)
proc importPost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).importPost(p_args[0].decode(gdref GLTFState), p_args[1].decode(Node)).encode(r_ret)
template importPost_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = importPost

method exportPreflight*(self: GLTFDocumentExtension; state: gdref GLTFState; root: Node): Error {.base.} = (discard)
proc exportPreflight(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).exportPreflight(p_args[0].decode(gdref GLTFState), p_args[1].decode(Node)).encode(r_ret)
template exportPreflight_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = exportPreflight

method convertSceneNode*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; sceneNode: Node): void {.base.} = (discard)
proc convertSceneNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).convertSceneNode(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Node))
template convertSceneNode_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = convertSceneNode

method exportPreserialize*(self: GLTFDocumentExtension; state: gdref GLTFState): Error {.base.} = (discard)
proc exportPreserialize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).exportPreserialize(p_args[0].decode(gdref GLTFState)).encode(r_ret)
template exportPreserialize_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = exportPreserialize

method getSaveableImageFormats*(self: GLTFDocumentExtension): PackedStringArray {.base.} = (discard)
proc getSaveableImageFormats(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).getSaveableImageFormats().encode(r_ret)
template getSaveableImageFormats_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = getSaveableImageFormats

method serializeImageToBytes*(self: GLTFDocumentExtension; state: gdref GLTFState; image: gdref Image; imageDict: Dictionary; imageFormat: String; lossyQuality: Float): PackedByteArray {.base.} = (discard)
proc serializeImageToBytes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).serializeImageToBytes(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref Image), p_args[2].decode(Dictionary), p_args[3].decode(String), p_args[4].decode(Float)).encode(r_ret)
template serializeImageToBytes_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = serializeImageToBytes

method saveImageAtPath*(self: GLTFDocumentExtension; state: gdref GLTFState; image: gdref Image; filePath: String; imageFormat: String; lossyQuality: Float): Error {.base.} = (discard)
proc saveImageAtPath(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).saveImageAtPath(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref Image), p_args[2].decode(String), p_args[3].decode(String), p_args[4].decode(Float)).encode(r_ret)
template saveImageAtPath_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = saveImageAtPath

method serializeTextureJson*(self: GLTFDocumentExtension; state: gdref GLTFState; textureJson: Dictionary; gltfTexture: gdref GLTFTexture; imageFormat: String): Error {.base.} = (discard)
proc serializeTextureJson(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).serializeTextureJson(p_args[0].decode(gdref GLTFState), p_args[1].decode(Dictionary), p_args[2].decode(gdref GLTFTexture), p_args[3].decode(String)).encode(r_ret)
template serializeTextureJson_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = serializeTextureJson

method exportNode*(self: GLTFDocumentExtension; state: gdref GLTFState; gltfNode: gdref GLTFNode; json: Dictionary; node: Node): Error {.base.} = (discard)
proc exportNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).exportNode(p_args[0].decode(gdref GLTFState), p_args[1].decode(gdref GLTFNode), p_args[2].decode(Dictionary), p_args[3].decode(Node)).encode(r_ret)
template exportNode_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = exportNode

method exportPost*(self: GLTFDocumentExtension; state: gdref GLTFState): Error {.base.} = (discard)
proc exportPost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GLTFDocumentExtension](p_instance).exportPost(p_args[0].decode(gdref GLTFState)).encode(r_ret)
template exportPost_bind*(_: typedesc[GLTFDocumentExtension]): ClassCallVirtual = exportPost

const GLTFDocumentExtension_vmap =
  Resource.vmap.concat toTable {
    "importpreflight" : "_import_preflight",
    "getsupportedextensions" : "_get_supported_extensions",
    "parsenodeextensions" : "_parse_node_extensions",
    "parseimagedata" : "_parse_image_data",
    "getimagefileextension" : "_get_image_file_extension",
    "parsetexturejson" : "_parse_texture_json",
    "generatescenenode" : "_generate_scene_node",
    "importpostparse" : "_import_post_parse",
    "importnode" : "_import_node",
    "importpost" : "_import_post",
    "exportpreflight" : "_export_preflight",
    "convertscenenode" : "_convert_scene_node",
    "exportpreserialize" : "_export_preserialize",
    "getsaveableimageformats" : "_get_saveable_image_formats",
    "serializeimagetobytes" : "_serialize_image_to_bytes",
    "saveimageatpath" : "_save_image_at_path",
    "serializetexturejson" : "_serialize_texture_json",
    "exportnode" : "_export_node",
    "exportpost" : "_export_post",
    }
template vmap*(_: typedesc[GLTFDocumentExtension]): Table[string, string] = GLTFDocumentExtension_vmap