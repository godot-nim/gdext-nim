{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setImageFormat*(self: GLTFDocument; imageFormat: String): void =
  expandMethodBind(className GLTFDocument, "set_image_format", 83702148)
  var `?param` = [getPtr imageFormat]
  methodbind.ptrcall(self, addr `?param`[0])

proc getImageFormat*(self: GLTFDocument): String =
  expandMethodBind(className GLTFDocument, "get_image_format", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setLossyQuality*(self: GLTFDocument; lossyQuality: Float): void =
  expandMethodBind(className GLTFDocument, "set_lossy_quality", 373806689)
  var `?param` = [getPtr lossyQuality]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLossyQuality*(self: GLTFDocument): Float =
  expandMethodBind(className GLTFDocument, "get_lossy_quality", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRootNodeMode*(self: GLTFDocument; rootNodeMode: GLTFDocument_RootNodeMode): void =
  expandMethodBind(className GLTFDocument, "set_root_node_mode", 463633402)
  var `?param` = [getPtr rootNodeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootNodeMode*(self: GLTFDocument): GLTFDocument_RootNodeMode =
  expandMethodBind(className GLTFDocument, "get_root_node_mode", 948057992)
  var ret: encoded GLTFDocument_RootNodeMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GLTFDocument_RootNodeMode)

proc appendFromFile*(self: GLTFDocument; path: String; state: gdref GLTFState; flags: uint32 = 0'u32; basePath: String = gdstring""): Error =
  expandMethodBind(className GLTFDocument, "append_from_file", 866380864)
  var `?param` = [getPtr path, getPtr state, getPtr flags, getPtr basePath]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc appendFromBuffer*(self: GLTFDocument; bytes: PackedByteArray; basePath: String; state: gdref GLTFState; flags: uint32 = 0'u32): Error =
  expandMethodBind(className GLTFDocument, "append_from_buffer", 1616081266)
  var `?param` = [getPtr bytes, getPtr basePath, getPtr state, getPtr flags]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc appendFromScene*(self: GLTFDocument; node: Node; state: gdref GLTFState; flags: uint32 = 0'u32): Error =
  expandMethodBind(className GLTFDocument, "append_from_scene", 1622574258)
  var `?param` = [getPtr node, getPtr state, getPtr flags]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc generateScene*(self: GLTFDocument; state: gdref GLTFState; bakeFps: Float = 30; trimming: bool = false; removeImmutableTracks: bool = true): Node =
  expandMethodBind(className GLTFDocument, "generate_scene", 596118388)
  var `?param` = [getPtr state, getPtr bakeFps, getPtr trimming, getPtr removeImmutableTracks]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc generateBuffer*(self: GLTFDocument; state: gdref GLTFState): PackedByteArray =
  expandMethodBind(className GLTFDocument, "generate_buffer", 741783455)
  var `?param` = [getPtr state]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc writeToFilesystem*(self: GLTFDocument; state: gdref GLTFState; path: String): Error =
  expandMethodBind(className GLTFDocument, "write_to_filesystem", 1784551478)
  var `?param` = [getPtr state, getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc registerGltfDocumentExtension*(_: typedesc[GLTFDocument]; extension: gdref GLTFDocumentExtension; firstPriority: bool = false): void =
  expandMethodBind(className GLTFDocument, "register_gltf_document_extension", 3752678331)
  var `?param` = [getPtr extension, getPtr firstPriority]
  methodbind.ptrcall(addr `?param`[0])

proc unregisterGltfDocumentExtension*(_: typedesc[GLTFDocument]; extension: gdref GLTFDocumentExtension): void =
  expandMethodBind(className GLTFDocument, "unregister_gltf_document_extension", 2684415758)
  var `?param` = [getPtr extension]
  methodbind.ptrcall(addr `?param`[0])

template imageFormat*(self: GLTFDocument): untyped = self.getImageFormat()
template `imageFormat=`*(self: GLTFDocument; value) = self.setImageFormat(value)

template lossyQuality*(self: GLTFDocument): untyped = self.getLossyQuality()
template `lossyQuality=`*(self: GLTFDocument; value) = self.setLossyQuality(value)

template rootNodeMode*(self: GLTFDocument): untyped = self.getRootNodeMode()
template `rootNodeMode=`*(self: GLTFDocument; value) = self.setRootNodeMode(value)

const GLTFDocument_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFDocument]): Table[string, string] = GLTFDocument_vmap