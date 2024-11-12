{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setImageFormat*(self: GltfDocument; imageFormat: String): void =
  expandMethodBind(className GltfDocument, "set_image_format", 83702148)
  var `?param` = [getPtr imageFormat]
  methodbind.ptrcall(self, addr `?param`[0])

proc getImageFormat*(self: GltfDocument): String =
  expandMethodBind(className GltfDocument, "get_image_format", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setLossyQuality*(self: GltfDocument; lossyQuality: Float): void =
  expandMethodBind(className GltfDocument, "set_lossy_quality", 373806689)
  var `?param` = [getPtr lossyQuality]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLossyQuality*(self: GltfDocument): Float =
  expandMethodBind(className GltfDocument, "get_lossy_quality", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRootNodeMode*(self: GltfDocument; rootNodeMode: GltfDocument_RootNodeMode): void =
  expandMethodBind(className GltfDocument, "set_root_node_mode", 463633402)
  var `?param` = [getPtr rootNodeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootNodeMode*(self: GltfDocument): GltfDocument_RootNodeMode =
  expandMethodBind(className GltfDocument, "get_root_node_mode", 948057992)
  var ret: encoded GltfDocument_RootNodeMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GltfDocument_RootNodeMode)

proc appendFromFile*(self: GltfDocument; path: String; state: gdref GltfState; flags: uint32 = 0'u32; basePath: String = gdstring""): Error =
  expandMethodBind(className GltfDocument, "append_from_file", 866380864)
  var `?param` = [getPtr path, getPtr state, getPtr flags, getPtr basePath]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc appendFromBuffer*(self: GltfDocument; bytes: PackedByteArray; basePath: String; state: gdref GltfState; flags: uint32 = 0'u32): Error =
  expandMethodBind(className GltfDocument, "append_from_buffer", 1616081266)
  var `?param` = [getPtr bytes, getPtr basePath, getPtr state, getPtr flags]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc appendFromScene*(self: GltfDocument; node: Node; state: gdref GltfState; flags: uint32 = 0'u32): Error =
  expandMethodBind(className GltfDocument, "append_from_scene", 1622574258)
  var `?param` = [getPtr node, getPtr state, getPtr flags]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc generateScene*(self: GltfDocument; state: gdref GltfState; bakeFps: Float = 30; trimming: bool = false; removeImmutableTracks: bool = true): Node =
  expandMethodBind(className GltfDocument, "generate_scene", 596118388)
  var `?param` = [getPtr state, getPtr bakeFps, getPtr trimming, getPtr removeImmutableTracks]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc generateBuffer*(self: GltfDocument; state: gdref GltfState): PackedByteArray =
  expandMethodBind(className GltfDocument, "generate_buffer", 741783455)
  var `?param` = [getPtr state]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc writeToFilesystem*(self: GltfDocument; state: gdref GltfState; path: String): Error =
  expandMethodBind(className GltfDocument, "write_to_filesystem", 1784551478)
  var `?param` = [getPtr state, getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc registerGltfDocumentExtension*(_: typedesc[GltfDocument]; extension: gdref GltfDocumentExtension; firstPriority: bool = false): void =
  expandMethodBind(className GltfDocument, "register_gltf_document_extension", 3752678331)
  var `?param` = [getPtr extension, getPtr firstPriority]
  methodbind.ptrcall(addr `?param`[0])

proc unregisterGltfDocumentExtension*(_: typedesc[GltfDocument]; extension: gdref GltfDocumentExtension): void =
  expandMethodBind(className GltfDocument, "unregister_gltf_document_extension", 2684415758)
  var `?param` = [getPtr extension]
  methodbind.ptrcall(addr `?param`[0])

template imageFormat*(self: GltfDocument): untyped = self.getImageFormat()
template `imageFormat=`*(self: GltfDocument; value) = self.setImageFormat(value)

template lossyQuality*(self: GltfDocument): untyped = self.getLossyQuality()
template `lossyQuality=`*(self: GltfDocument; value) = self.setLossyQuality(value)

template rootNodeMode*(self: GltfDocument): untyped = self.getRootNodeMode()
template `rootNodeMode=`*(self: GltfDocument; value) = self.setRootNodeMode(value)

const GltfDocument_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfDocument]): Table[string, string] = GltfDocument_vmap