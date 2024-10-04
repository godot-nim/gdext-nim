{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

method importPreflight*(self: GltfDocumentExtension; state: gdref GltfState; extensions: PackedStringArray): Error {.base.} = (discard)
proc importPreflight(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).importPreflight(p_args[0].decode(gdref GltfState), p_args[1].decode(PackedStringArray)).encode(r_ret)
template importPreflight_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = importPreflight

method getSupportedExtensions*(self: GltfDocumentExtension): PackedStringArray {.base.} = (discard)
proc getSupportedExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).getSupportedExtensions().encode(r_ret)
template getSupportedExtensions_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = getSupportedExtensions

method parseNodeExtensions*(self: GltfDocumentExtension; state: gdref GltfState; gltfNode: gdref GltfNode; extensions: Dictionary): Error {.base.} = (discard)
proc parseNodeExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).parseNodeExtensions(p_args[0].decode(gdref GltfState), p_args[1].decode(gdref GltfNode), p_args[2].decode(Dictionary)).encode(r_ret)
template parseNodeExtensions_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = parseNodeExtensions

method parseImageData*(self: GltfDocumentExtension; state: gdref GltfState; imageData: PackedByteArray; mimeType: String; retImage: gdref Image): Error {.base.} = (discard)
proc parseImageData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).parseImageData(p_args[0].decode(gdref GltfState), p_args[1].decode(PackedByteArray), p_args[2].decode(String), p_args[3].decode(gdref Image)).encode(r_ret)
template parseImageData_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = parseImageData

method getImageFileExtension*(self: GltfDocumentExtension): String {.base.} = (discard)
proc getImageFileExtension(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).getImageFileExtension().encode(r_ret)
template getImageFileExtension_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = getImageFileExtension

method parseTextureJson*(self: GltfDocumentExtension; state: gdref GltfState; textureJson: Dictionary; retGltfTexture: gdref GltfTexture): Error {.base.} = (discard)
proc parseTextureJson(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).parseTextureJson(p_args[0].decode(gdref GltfState), p_args[1].decode(Dictionary), p_args[2].decode(gdref GltfTexture)).encode(r_ret)
template parseTextureJson_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = parseTextureJson

method generateSceneNode*(self: GltfDocumentExtension; state: gdref GltfState; gltfNode: gdref GltfNode; sceneParent: Node): Node3D {.base.} = (discard)
proc generateSceneNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).generateSceneNode(p_args[0].decode(gdref GltfState), p_args[1].decode(gdref GltfNode), p_args[2].decode(Node)).encode(r_ret)
template generateSceneNode_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = generateSceneNode

method importPostParse*(self: GltfDocumentExtension; state: gdref GltfState): Error {.base.} = (discard)
proc importPostParse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).importPostParse(p_args[0].decode(gdref GltfState)).encode(r_ret)
template importPostParse_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = importPostParse

method importNode*(self: GltfDocumentExtension; state: gdref GltfState; gltfNode: gdref GltfNode; json: Dictionary; node: Node): Error {.base.} = (discard)
proc importNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).importNode(p_args[0].decode(gdref GltfState), p_args[1].decode(gdref GltfNode), p_args[2].decode(Dictionary), p_args[3].decode(Node)).encode(r_ret)
template importNode_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = importNode

method importPost*(self: GltfDocumentExtension; state: gdref GltfState; root: Node): Error {.base.} = (discard)
proc importPost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).importPost(p_args[0].decode(gdref GltfState), p_args[1].decode(Node)).encode(r_ret)
template importPost_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = importPost

method exportPreflight*(self: GltfDocumentExtension; state: gdref GltfState; root: Node): Error {.base.} = (discard)
proc exportPreflight(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).exportPreflight(p_args[0].decode(gdref GltfState), p_args[1].decode(Node)).encode(r_ret)
template exportPreflight_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = exportPreflight

method convertSceneNode*(self: GltfDocumentExtension; state: gdref GltfState; gltfNode: gdref GltfNode; sceneNode: Node): void {.base.} = (discard)
proc convertSceneNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).convertSceneNode(p_args[0].decode(gdref GltfState), p_args[1].decode(gdref GltfNode), p_args[2].decode(Node))
template convertSceneNode_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = convertSceneNode

method exportPreserialize*(self: GltfDocumentExtension; state: gdref GltfState): Error {.base.} = (discard)
proc exportPreserialize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).exportPreserialize(p_args[0].decode(gdref GltfState)).encode(r_ret)
template exportPreserialize_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = exportPreserialize

method getSaveableImageFormats*(self: GltfDocumentExtension): PackedStringArray {.base.} = (discard)
proc getSaveableImageFormats(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).getSaveableImageFormats().encode(r_ret)
template getSaveableImageFormats_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = getSaveableImageFormats

method serializeImageToBytes*(self: GltfDocumentExtension; state: gdref GltfState; image: gdref Image; imageDict: Dictionary; imageFormat: String; lossyQuality: Float): PackedByteArray {.base.} = (discard)
proc serializeImageToBytes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).serializeImageToBytes(p_args[0].decode(gdref GltfState), p_args[1].decode(gdref Image), p_args[2].decode(Dictionary), p_args[3].decode(String), p_args[4].decode(Float)).encode(r_ret)
template serializeImageToBytes_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = serializeImageToBytes

method saveImageAtPath*(self: GltfDocumentExtension; state: gdref GltfState; image: gdref Image; filePath: String; imageFormat: String; lossyQuality: Float): Error {.base.} = (discard)
proc saveImageAtPath(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).saveImageAtPath(p_args[0].decode(gdref GltfState), p_args[1].decode(gdref Image), p_args[2].decode(String), p_args[3].decode(String), p_args[4].decode(Float)).encode(r_ret)
template saveImageAtPath_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = saveImageAtPath

method serializeTextureJson*(self: GltfDocumentExtension; state: gdref GltfState; textureJson: Dictionary; gltfTexture: gdref GltfTexture; imageFormat: String): Error {.base.} = (discard)
proc serializeTextureJson(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).serializeTextureJson(p_args[0].decode(gdref GltfState), p_args[1].decode(Dictionary), p_args[2].decode(gdref GltfTexture), p_args[3].decode(String)).encode(r_ret)
template serializeTextureJson_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = serializeTextureJson

method exportNode*(self: GltfDocumentExtension; state: gdref GltfState; gltfNode: gdref GltfNode; json: Dictionary; node: Node): Error {.base.} = (discard)
proc exportNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).exportNode(p_args[0].decode(gdref GltfState), p_args[1].decode(gdref GltfNode), p_args[2].decode(Dictionary), p_args[3].decode(Node)).encode(r_ret)
template exportNode_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = exportNode

method exportPost*(self: GltfDocumentExtension; state: gdref GltfState): Error {.base.} = (discard)
proc exportPost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GltfDocumentExtension](p_instance).exportPost(p_args[0].decode(gdref GltfState)).encode(r_ret)
template exportPost_bind*(_: typedesc[GltfDocumentExtension]): ClassCallVirtual = exportPost

const GltfDocumentExtension_vmap =
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
template vmap*(_: typedesc[GltfDocumentExtension]): Table[string, string] = GltfDocumentExtension_vmap