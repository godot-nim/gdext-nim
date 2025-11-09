{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFDocument, Resource)

proc setImageFormat*(self: GLTFDocument; imageFormat: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "set_image_format", 83702148)
  methodbind.ptrcall(self, [getPtr imageFormat], void)

proc getImageFormat*(self: GLTFDocument): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "get_image_format", 201670096)
  methodbind.ptrcall(self, [], String)

proc setLossyQuality*(self: GLTFDocument; lossyQuality: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "set_lossy_quality", 373806689)
  methodbind.ptrcall(self, [getPtr lossyQuality], void)

proc getLossyQuality*(self: GLTFDocument): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "get_lossy_quality", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFallbackImageFormat*(self: GLTFDocument; fallbackImageFormat: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "set_fallback_image_format", 83702148)
  methodbind.ptrcall(self, [getPtr fallbackImageFormat], void)

proc getFallbackImageFormat*(self: GLTFDocument): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "get_fallback_image_format", 201670096)
  methodbind.ptrcall(self, [], String)

proc setFallbackImageQuality*(self: GLTFDocument; fallbackImageQuality: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "set_fallback_image_quality", 373806689)
  methodbind.ptrcall(self, [getPtr fallbackImageQuality], void)

proc getFallbackImageQuality*(self: GLTFDocument): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "get_fallback_image_quality", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRootNodeMode*(self: GLTFDocument; rootNodeMode: GLTFDocument_RootNodeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "set_root_node_mode", 463633402)
  methodbind.ptrcall(self, [getPtr rootNodeMode], void)

proc getRootNodeMode*(self: GLTFDocument): GLTFDocument_RootNodeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "get_root_node_mode", 948057992)
  methodbind.ptrcall(self, [], GLTFDocument_RootNodeMode)

proc setVisibilityMode*(self: GLTFDocument; visibilityMode: GLTFDocument_VisibilityMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "set_visibility_mode", 2803579218)
  methodbind.ptrcall(self, [getPtr visibilityMode], void)

proc getVisibilityMode*(self: GLTFDocument): GLTFDocument_VisibilityMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "get_visibility_mode", 3885445962)
  methodbind.ptrcall(self, [], GLTFDocument_VisibilityMode)

proc appendFromFile*(self: GLTFDocument; path: String; state: gdref GLTFState; flags: uint32 = 0'u32; basePath: String = newGdString()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "append_from_file", 866380864)
  methodbind.ptrcall(self, [getPtr path, getPtr state, getPtr flags, getPtr basePath], Error)

proc appendFromBuffer*(self: GLTFDocument; bytes: PackedByteArray; basePath: String; state: gdref GLTFState; flags: uint32 = 0'u32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "append_from_buffer", 1616081266)
  methodbind.ptrcall(self, [getPtr bytes, getPtr basePath, getPtr state, getPtr flags], Error)

proc appendFromScene*(self: GLTFDocument; node: Node; state: gdref GLTFState; flags: uint32 = 0'u32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "append_from_scene", 1622574258)
  methodbind.ptrcall(self, [getPtr node, getPtr state, getPtr flags], Error)

proc generateScene*(self: GLTFDocument; state: gdref GLTFState; bakeFps: Float = 30; trimming: bool = false; removeImmutableTracks: bool = true): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "generate_scene", 596118388)
  methodbind.ptrcall(self, [getPtr state, getPtr bakeFps, getPtr trimming, getPtr removeImmutableTracks], Node)

proc generateBuffer*(self: GLTFDocument; state: gdref GLTFState): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "generate_buffer", 741783455)
  methodbind.ptrcall(self, [getPtr state], PackedByteArray)

proc writeToFilesystem*(self: GLTFDocument; state: gdref GLTFState; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "write_to_filesystem", 1784551478)
  methodbind.ptrcall(self, [getPtr state, getPtr path], Error)

proc importObjectModelProperty*(_: typedesc[GLTFDocument]; state: gdref GLTFState; jsonPointer: String): gdref GLTFObjectModelProperty =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "import_object_model_property", 1206708632)
  methodbind.ptrcall([getPtr state, getPtr jsonPointer], gdref GLTFObjectModelProperty)

proc exportObjectModelProperty*(_: typedesc[GLTFDocument]; state: gdref GLTFState; nodePath: NodePath; godotNode: Node; gltfNodeIndex: int32): gdref GLTFObjectModelProperty =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "export_object_model_property", 314209806)
  methodbind.ptrcall([getPtr state, getPtr nodePath, getPtr godotNode, getPtr gltfNodeIndex], gdref GLTFObjectModelProperty)

proc registerGltfDocumentExtension*(_: typedesc[GLTFDocument]; extension: gdref GLTFDocumentExtension; firstPriority: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "register_gltf_document_extension", 3752678331)
  methodbind.ptrcall([getPtr extension, getPtr firstPriority], void)

proc unregisterGltfDocumentExtension*(_: typedesc[GLTFDocument]; extension: gdref GLTFDocumentExtension): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "unregister_gltf_document_extension", 2684415758)
  methodbind.ptrcall([getPtr extension], void)

proc getSupportedGltfExtensions*(_: typedesc[GLTFDocument]): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFDocument, "get_supported_gltf_extensions", 2981934095)
  methodbind.ptrcall([], PackedStringArray)

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
