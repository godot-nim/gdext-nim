{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFDocument, Resource)

proc setImageFormat*(self: GLTFDocument; imageFormat: String): void =
  expandMethodBind(className GLTFDocument, "set_image_format", 83702148)
  methodbind.ptrcall(self, [getPtr imageFormat])

proc getImageFormat*(self: GLTFDocument): String =
  expandMethodBind(className GLTFDocument, "get_image_format", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setLossyQuality*(self: GLTFDocument; lossyQuality: Float): void =
  expandMethodBind(className GLTFDocument, "set_lossy_quality", 373806689)
  methodbind.ptrcall(self, [getPtr lossyQuality])

proc getLossyQuality*(self: GLTFDocument): Float =
  expandMethodBind(className GLTFDocument, "get_lossy_quality", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFallbackImageFormat*(self: GLTFDocument; fallbackImageFormat: String): void =
  expandMethodBind(className GLTFDocument, "set_fallback_image_format", 83702148)
  methodbind.ptrcall(self, [getPtr fallbackImageFormat])

proc getFallbackImageFormat*(self: GLTFDocument): String =
  expandMethodBind(className GLTFDocument, "get_fallback_image_format", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setFallbackImageQuality*(self: GLTFDocument; fallbackImageQuality: Float): void =
  expandMethodBind(className GLTFDocument, "set_fallback_image_quality", 373806689)
  methodbind.ptrcall(self, [getPtr fallbackImageQuality])

proc getFallbackImageQuality*(self: GLTFDocument): Float =
  expandMethodBind(className GLTFDocument, "get_fallback_image_quality", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRootNodeMode*(self: GLTFDocument; rootNodeMode: GLTFDocument_RootNodeMode): void =
  expandMethodBind(className GLTFDocument, "set_root_node_mode", 463633402)
  methodbind.ptrcall(self, [getPtr rootNodeMode])

proc getRootNodeMode*(self: GLTFDocument): GLTFDocument_RootNodeMode =
  expandMethodBind(className GLTFDocument, "get_root_node_mode", 948057992)
  var ret: encoded GLTFDocument_RootNodeMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GLTFDocument_RootNodeMode)

proc setVisibilityMode*(self: GLTFDocument; visibilityMode: GLTFDocument_VisibilityMode): void =
  expandMethodBind(className GLTFDocument, "set_visibility_mode", 2803579218)
  methodbind.ptrcall(self, [getPtr visibilityMode])

proc getVisibilityMode*(self: GLTFDocument): GLTFDocument_VisibilityMode =
  expandMethodBind(className GLTFDocument, "get_visibility_mode", 3885445962)
  var ret: encoded GLTFDocument_VisibilityMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GLTFDocument_VisibilityMode)

proc appendFromFile*(self: GLTFDocument; path: String; state: gdref GLTFState; flags: uint32 = 0'u32; basePath: String = newGdString()): Error =
  expandMethodBind(className GLTFDocument, "append_from_file", 866380864)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr state, getPtr flags, getPtr basePath], addr ret)
  (addr ret).decode_result(Error)

proc appendFromBuffer*(self: GLTFDocument; bytes: PackedByteArray; basePath: String; state: gdref GLTFState; flags: uint32 = 0'u32): Error =
  expandMethodBind(className GLTFDocument, "append_from_buffer", 1616081266)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr bytes, getPtr basePath, getPtr state, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc appendFromScene*(self: GLTFDocument; node: Node; state: gdref GLTFState; flags: uint32 = 0'u32): Error =
  expandMethodBind(className GLTFDocument, "append_from_scene", 1622574258)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr node, getPtr state, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc generateScene*(self: GLTFDocument; state: gdref GLTFState; bakeFps: Float = 30; trimming: bool = false; removeImmutableTracks: bool = true): Node =
  expandMethodBind(className GLTFDocument, "generate_scene", 596118388)
  var ret: encoded Node
  methodbind.ptrcall(self, [getPtr state, getPtr bakeFps, getPtr trimming, getPtr removeImmutableTracks], addr ret)
  (addr ret).decode_result(Node)

proc generateBuffer*(self: GLTFDocument; state: gdref GLTFState): PackedByteArray =
  expandMethodBind(className GLTFDocument, "generate_buffer", 741783455)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr state], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc writeToFilesystem*(self: GLTFDocument; state: gdref GLTFState; path: String): Error =
  expandMethodBind(className GLTFDocument, "write_to_filesystem", 1784551478)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr state, getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc importObjectModelProperty*(_: typedesc[GLTFDocument]; state: gdref GLTFState; jsonPointer: String): gdref GLTFObjectModelProperty =
  expandMethodBind(className GLTFDocument, "import_object_model_property", 1206708632)
  var ret: encoded gdref GLTFObjectModelProperty
  methodbind.ptrcall([getPtr state, getPtr jsonPointer], addr ret)
  (addr ret).decode_result(gdref GLTFObjectModelProperty)

proc exportObjectModelProperty*(_: typedesc[GLTFDocument]; state: gdref GLTFState; nodePath: NodePath; godotNode: Node; gltfNodeIndex: int32): gdref GLTFObjectModelProperty =
  expandMethodBind(className GLTFDocument, "export_object_model_property", 314209806)
  var ret: encoded gdref GLTFObjectModelProperty
  methodbind.ptrcall([getPtr state, getPtr nodePath, getPtr godotNode, getPtr gltfNodeIndex], addr ret)
  (addr ret).decode_result(gdref GLTFObjectModelProperty)

proc registerGltfDocumentExtension*(_: typedesc[GLTFDocument]; extension: gdref GLTFDocumentExtension; firstPriority: bool = false): void =
  expandMethodBind(className GLTFDocument, "register_gltf_document_extension", 3752678331)
  methodbind.ptrcall([getPtr extension, getPtr firstPriority])

proc unregisterGltfDocumentExtension*(_: typedesc[GLTFDocument]; extension: gdref GLTFDocumentExtension): void =
  expandMethodBind(className GLTFDocument, "unregister_gltf_document_extension", 2684415758)
  methodbind.ptrcall([getPtr extension])

proc getSupportedGltfExtensions*(_: typedesc[GLTFDocument]): PackedStringArray =
  expandMethodBind(className GLTFDocument, "get_supported_gltf_extensions", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(PackedStringArray)

template imageFormat*(self: GLTFDocument): untyped = self.getImageFormat()
template `imageFormat=`*(self: GLTFDocument; value) = self.setImageFormat(value)

template lossyQuality*(self: GLTFDocument): untyped = self.getLossyQuality()
template `lossyQuality=`*(self: GLTFDocument; value) = self.setLossyQuality(value)

template fallbackImageFormat*(self: GLTFDocument): untyped = self.getFallbackImageFormat()
template `fallbackImageFormat=`*(self: GLTFDocument; value) = self.setFallbackImageFormat(value)

template fallbackImageQuality*(self: GLTFDocument): untyped = self.getFallbackImageQuality()
template `fallbackImageQuality=`*(self: GLTFDocument; value) = self.setFallbackImageQuality(value)

template rootNodeMode*(self: GLTFDocument): untyped = self.getRootNodeMode()
template `rootNodeMode=`*(self: GLTFDocument; value) = self.setRootNodeMode(value)

template visibilityMode*(self: GLTFDocument): untyped = self.getVisibilityMode()
template `visibilityMode=`*(self: GLTFDocument; value) = self.setVisibilityMode(value)
