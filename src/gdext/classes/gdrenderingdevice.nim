{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc textureCreate*(self: RenderingDevice; format: gdref RdTextureFormat; view: gdref RdTextureView; data: TypedArray[PackedByteArray] = TypedArray[PackedByteArray](gdarray())): Rid =
  expandMethodBind(className RenderingDevice, "texture_create", 3709173589)
  var `?param` = [getPtr format, getPtr view, getPtr data]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc textureCreateShared*(self: RenderingDevice; view: gdref RdTextureView; withTexture: Rid): Rid =
  expandMethodBind(className RenderingDevice, "texture_create_shared", 3178156134)
  var `?param` = [getPtr view, getPtr withTexture]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc textureCreateSharedFromSlice*(self: RenderingDevice; view: gdref RdTextureView; withTexture: Rid; layer: uint32; mipmap: uint32; mipmaps: uint32 = 1'u32; sliceType: RenderingDevice_TextureSliceType = textureSlice2D): Rid =
  expandMethodBind(className RenderingDevice, "texture_create_shared_from_slice", 1808971279)
  var `?param` = [getPtr view, getPtr withTexture, getPtr layer, getPtr mipmap, getPtr mipmaps, getPtr sliceType]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc textureCreateFromExtension*(self: RenderingDevice; `type`: RenderingDevice_TextureType; format: RenderingDevice_DataFormat; samples: RenderingDevice_TextureSamples; usageFlags: set[RenderingDevice_TextureUsageBits]; image: uint64; width: uint64; height: uint64; depth: uint64; layers: uint64): Rid =
  expandMethodBind(className RenderingDevice, "texture_create_from_extension", 1397171480)
  var `?param` = [getPtr `type`, getPtr format, getPtr samples, getPtr usageFlags, getPtr image, getPtr width, getPtr height, getPtr depth, getPtr layers]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc textureUpdate*(self: RenderingDevice; texture: Rid; layer: uint32; data: PackedByteArray): Error =
  expandMethodBind(className RenderingDevice, "texture_update", 1349464008)
  var `?param` = [getPtr texture, getPtr layer, getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc textureGetData*(self: RenderingDevice; texture: Rid; layer: uint32): PackedByteArray =
  expandMethodBind(className RenderingDevice, "texture_get_data", 1859412099)
  var `?param` = [getPtr texture, getPtr layer]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc textureIsFormatSupportedForUsage*(self: RenderingDevice; format: RenderingDevice_DataFormat; usageFlags: set[RenderingDevice_TextureUsageBits]): bool =
  expandMethodBind(className RenderingDevice, "texture_is_format_supported_for_usage", 2592520478)
  var `?param` = [getPtr format, getPtr usageFlags]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc textureIsShared*(self: RenderingDevice; texture: Rid): bool =
  expandMethodBind(className RenderingDevice, "texture_is_shared", 3521089500)
  var `?param` = [getPtr texture]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc textureIsValid*(self: RenderingDevice; texture: Rid): bool =
  expandMethodBind(className RenderingDevice, "texture_is_valid", 3521089500)
  var `?param` = [getPtr texture]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc textureCopy*(self: RenderingDevice; fromTexture: Rid; toTexture: Rid; fromPos: Vector3; toPos: Vector3; size: Vector3; srcMipmap: uint32; dstMipmap: uint32; srcLayer: uint32; dstLayer: uint32): Error =
  expandMethodBind(className RenderingDevice, "texture_copy", 2859522160)
  var `?param` = [getPtr fromTexture, getPtr toTexture, getPtr fromPos, getPtr toPos, getPtr size, getPtr srcMipmap, getPtr dstMipmap, getPtr srcLayer, getPtr dstLayer]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc textureClear*(self: RenderingDevice; texture: Rid; color: Color; baseMipmap: uint32; mipmapCount: uint32; baseLayer: uint32; layerCount: uint32): Error =
  expandMethodBind(className RenderingDevice, "texture_clear", 3477703247)
  var `?param` = [getPtr texture, getPtr color, getPtr baseMipmap, getPtr mipmapCount, getPtr baseLayer, getPtr layerCount]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc textureResolveMultisample*(self: RenderingDevice; fromTexture: Rid; toTexture: Rid): Error =
  expandMethodBind(className RenderingDevice, "texture_resolve_multisample", 3181288260)
  var `?param` = [getPtr fromTexture, getPtr toTexture]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc textureGetFormat*(self: RenderingDevice; texture: Rid): gdref RdTextureFormat =
  expandMethodBind(className RenderingDevice, "texture_get_format", 1374471690)
  var `?param` = [getPtr texture]
  var ret: encoded gdref RdTextureFormat
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref RdTextureFormat)

proc textureGetNativeHandle*(self: RenderingDevice; texture: Rid): uint64 =
  expandMethodBind(className RenderingDevice, "texture_get_native_handle", 3917799429)
  var `?param` = [getPtr texture]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc framebufferFormatCreate*(self: RenderingDevice; attachments: TypedArray[RdAttachmentFormat]; viewCount: uint32 = 1'u32): int64 =
  expandMethodBind(className RenderingDevice, "framebuffer_format_create", 697032759)
  var `?param` = [getPtr attachments, getPtr viewCount]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc framebufferFormatCreateMultipass*(self: RenderingDevice; attachments: TypedArray[RdAttachmentFormat]; passes: TypedArray[RdFramebufferPass]; viewCount: uint32 = 1'u32): int64 =
  expandMethodBind(className RenderingDevice, "framebuffer_format_create_multipass", 2647479094)
  var `?param` = [getPtr attachments, getPtr passes, getPtr viewCount]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc framebufferFormatCreateEmpty*(self: RenderingDevice; samples: RenderingDevice_TextureSamples = textureSamples1): int64 =
  expandMethodBind(className RenderingDevice, "framebuffer_format_create_empty", 555930169)
  var `?param` = [getPtr samples]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc framebufferFormatGetTextureSamples*(self: RenderingDevice; format: int64; renderPass: uint32 = 0'u32): RenderingDevice_TextureSamples =
  expandMethodBind(className RenderingDevice, "framebuffer_format_get_texture_samples", 4223391010)
  var `?param` = [getPtr format, getPtr renderPass]
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc framebufferCreate*(self: RenderingDevice; textures: TypedArray[Rid]; validateWithFormat: int64 = -1; viewCount: uint32 = 1'u32): Rid =
  expandMethodBind(className RenderingDevice, "framebuffer_create", 3284231055)
  var `?param` = [getPtr textures, getPtr validateWithFormat, getPtr viewCount]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc framebufferCreateMultipass*(self: RenderingDevice; textures: TypedArray[Rid]; passes: TypedArray[RdFramebufferPass]; validateWithFormat: int64 = -1; viewCount: uint32 = 1'u32): Rid =
  expandMethodBind(className RenderingDevice, "framebuffer_create_multipass", 1750306695)
  var `?param` = [getPtr textures, getPtr passes, getPtr validateWithFormat, getPtr viewCount]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc framebufferCreateEmpty*(self: RenderingDevice; size: Vector2i; samples: RenderingDevice_TextureSamples = textureSamples1; validateWithFormat: int64 = -1): Rid =
  expandMethodBind(className RenderingDevice, "framebuffer_create_empty", 3058360618)
  var `?param` = [getPtr size, getPtr samples, getPtr validateWithFormat]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc framebufferGetFormat*(self: RenderingDevice; framebuffer: Rid): int64 =
  expandMethodBind(className RenderingDevice, "framebuffer_get_format", 3917799429)
  var `?param` = [getPtr framebuffer]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc framebufferIsValid*(self: RenderingDevice; framebuffer: Rid): bool =
  expandMethodBind(className RenderingDevice, "framebuffer_is_valid", 4155700596)
  var `?param` = [getPtr framebuffer]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc samplerCreate*(self: RenderingDevice; state: gdref RdSamplerState): Rid =
  expandMethodBind(className RenderingDevice, "sampler_create", 2327892535)
  var `?param` = [getPtr state]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc samplerIsFormatSupportedForFilter*(self: RenderingDevice; format: RenderingDevice_DataFormat; samplerFilter: RenderingDevice_SamplerFilter): bool =
  expandMethodBind(className RenderingDevice, "sampler_is_format_supported_for_filter", 2247922238)
  var `?param` = [getPtr format, getPtr samplerFilter]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc vertexBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray(); useAsStorage: bool = false): Rid =
  expandMethodBind(className RenderingDevice, "vertex_buffer_create", 3410049843)
  var `?param` = [getPtr sizeBytes, getPtr data, getPtr useAsStorage]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc vertexFormatCreate*(self: RenderingDevice; vertexDescriptions: TypedArray[RdVertexAttribute]): int64 =
  expandMethodBind(className RenderingDevice, "vertex_format_create", 1242678479)
  var `?param` = [getPtr vertexDescriptions]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc vertexArrayCreate*(self: RenderingDevice; vertexCount: uint32; vertexFormat: int64; srcBuffers: TypedArray[Rid]; offsets: PackedInt64Array = PackedInt64Array()): Rid =
  expandMethodBind(className RenderingDevice, "vertex_array_create", 3799816279)
  var `?param` = [getPtr vertexCount, getPtr vertexFormat, getPtr srcBuffers, getPtr offsets]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc indexBufferCreate*(self: RenderingDevice; sizeIndices: uint32; format: RenderingDevice_IndexBufferFormat; data: PackedByteArray = PackedByteArray(); useRestartIndices: bool = false): Rid =
  expandMethodBind(className RenderingDevice, "index_buffer_create", 3935920523)
  var `?param` = [getPtr sizeIndices, getPtr format, getPtr data, getPtr useRestartIndices]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc indexArrayCreate*(self: RenderingDevice; indexBuffer: Rid; indexOffset: uint32; indexCount: uint32): Rid =
  expandMethodBind(className RenderingDevice, "index_array_create", 2256026069)
  var `?param` = [getPtr indexBuffer, getPtr indexOffset, getPtr indexCount]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc shaderCompileSpirvFromSource*(self: RenderingDevice; shaderSource: gdref RdShaderSource; allowCache: bool = true): gdref RdShaderSpirv =
  expandMethodBind(className RenderingDevice, "shader_compile_spirv_from_source", 1178973306)
  var `?param` = [getPtr shaderSource, getPtr allowCache]
  var ret: encoded gdref RdShaderSpirv
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref RdShaderSpirv)

proc shaderCompileBinaryFromSpirv*(self: RenderingDevice; spirvData: gdref RdShaderSpirv; name: String = gdstring""): PackedByteArray =
  expandMethodBind(className RenderingDevice, "shader_compile_binary_from_spirv", 134910450)
  var `?param` = [getPtr spirvData, getPtr name]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc shaderCreateFromSpirv*(self: RenderingDevice; spirvData: gdref RdShaderSpirv; name: String = gdstring""): Rid =
  expandMethodBind(className RenderingDevice, "shader_create_from_spirv", 342949005)
  var `?param` = [getPtr spirvData, getPtr name]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc shaderCreateFromBytecode*(self: RenderingDevice; binaryData: PackedByteArray; placeholderRid: Rid = RID()): Rid =
  expandMethodBind(className RenderingDevice, "shader_create_from_bytecode", 1687031350)
  var `?param` = [getPtr binaryData, getPtr placeholderRid]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc shaderCreatePlaceholder*(self: RenderingDevice): Rid =
  expandMethodBind(className RenderingDevice, "shader_create_placeholder", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc shaderGetVertexInputAttributeMask*(self: RenderingDevice; shader: Rid): uint64 =
  expandMethodBind(className RenderingDevice, "shader_get_vertex_input_attribute_mask", 3917799429)
  var `?param` = [getPtr shader]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc uniformBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray()): Rid =
  expandMethodBind(className RenderingDevice, "uniform_buffer_create", 34556762)
  var `?param` = [getPtr sizeBytes, getPtr data]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc storageBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray(); usage: set[RenderingDevice_StorageBufferUsage] = {}): Rid =
  expandMethodBind(className RenderingDevice, "storage_buffer_create", 2316365934)
  var `?param` = [getPtr sizeBytes, getPtr data, getPtr usage]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc textureBufferCreate*(self: RenderingDevice; sizeBytes: uint32; format: RenderingDevice_DataFormat; data: PackedByteArray = PackedByteArray()): Rid =
  expandMethodBind(className RenderingDevice, "texture_buffer_create", 1470338698)
  var `?param` = [getPtr sizeBytes, getPtr format, getPtr data]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc uniformSetCreate*(self: RenderingDevice; uniforms: TypedArray[RdUniform]; shader: Rid; shaderSet: uint32): Rid =
  expandMethodBind(className RenderingDevice, "uniform_set_create", 2280795797)
  var `?param` = [getPtr uniforms, getPtr shader, getPtr shaderSet]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc uniformSetIsValid*(self: RenderingDevice; uniformSet: Rid): bool =
  expandMethodBind(className RenderingDevice, "uniform_set_is_valid", 3521089500)
  var `?param` = [getPtr uniformSet]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bufferCopy*(self: RenderingDevice; srcBuffer: Rid; dstBuffer: Rid; srcOffset: uint32; dstOffset: uint32; size: uint32): Error =
  expandMethodBind(className RenderingDevice, "buffer_copy", 864257779)
  var `?param` = [getPtr srcBuffer, getPtr dstBuffer, getPtr srcOffset, getPtr dstOffset, getPtr size]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc bufferUpdate*(self: RenderingDevice; buffer: Rid; offset: uint32; sizeBytes: uint32; data: PackedByteArray): Error =
  expandMethodBind(className RenderingDevice, "buffer_update", 3454956949)
  var `?param` = [getPtr buffer, getPtr offset, getPtr sizeBytes, getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc bufferClear*(self: RenderingDevice; buffer: Rid; offset: uint32; sizeBytes: uint32): Error =
  expandMethodBind(className RenderingDevice, "buffer_clear", 2452320800)
  var `?param` = [getPtr buffer, getPtr offset, getPtr sizeBytes]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc bufferGetData*(self: RenderingDevice; buffer: Rid; offsetBytes: uint32 = 0'u32; sizeBytes: uint32 = 0'u32): PackedByteArray =
  expandMethodBind(className RenderingDevice, "buffer_get_data", 3101830688)
  var `?param` = [getPtr buffer, getPtr offsetBytes, getPtr sizeBytes]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc renderPipelineCreate*(self: RenderingDevice; shader: Rid; framebufferFormat: int64; vertexFormat: int64; primitive: RenderingDevice_RenderPrimitive; rasterizationState: gdref RdPipelineRasterizationState; multisampleState: gdref RdPipelineMultisampleState; stencilState: gdref RdPipelineDepthStencilState; colorBlendState: gdref RdPipelineColorBlendState; dynamicStateFlags: set[RenderingDevice_PipelineDynamicStateFlags] = {}; forRenderPass: uint32 = 0'u32; specializationConstants: TypedArray[RdPipelineSpecializationConstant] = TypedArray[RdPipelineSpecializationConstant](gdarray())): Rid =
  expandMethodBind(className RenderingDevice, "render_pipeline_create", 2385451958)
  var `?param` = [getPtr shader, getPtr framebufferFormat, getPtr vertexFormat, getPtr primitive, getPtr rasterizationState, getPtr multisampleState, getPtr stencilState, getPtr colorBlendState, getPtr dynamicStateFlags, getPtr forRenderPass, getPtr specializationConstants]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc renderPipelineIsValid*(self: RenderingDevice; renderPipeline: Rid): bool =
  expandMethodBind(className RenderingDevice, "render_pipeline_is_valid", 3521089500)
  var `?param` = [getPtr renderPipeline]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc computePipelineCreate*(self: RenderingDevice; shader: Rid; specializationConstants: TypedArray[RdPipelineSpecializationConstant] = TypedArray[RdPipelineSpecializationConstant](gdarray())): Rid =
  expandMethodBind(className RenderingDevice, "compute_pipeline_create", 1448838280)
  var `?param` = [getPtr shader, getPtr specializationConstants]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc computePipelineIsValid*(self: RenderingDevice; computePipeline: Rid): bool =
  expandMethodBind(className RenderingDevice, "compute_pipeline_is_valid", 3521089500)
  var `?param` = [getPtr computePipeline]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc screenGetWidth*(self: RenderingDevice; screen: int32 = 0): int32 =
  expandMethodBind(className RenderingDevice, "screen_get_width", 1591665591)
  var `?param` = [getPtr screen]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc screenGetHeight*(self: RenderingDevice; screen: int32 = 0): int32 =
  expandMethodBind(className RenderingDevice, "screen_get_height", 1591665591)
  var `?param` = [getPtr screen]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc screenGetFramebufferFormat*(self: RenderingDevice; screen: int32 = 0): int64 =
  expandMethodBind(className RenderingDevice, "screen_get_framebuffer_format", 1591665591)
  var `?param` = [getPtr screen]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc drawListBeginForScreen*(self: RenderingDevice; screen: int32 = 0; clearColor: Color = color(0, 0, 0, 1)): int64 =
  expandMethodBind(className RenderingDevice, "draw_list_begin_for_screen", 3988079995)
  var `?param` = [getPtr screen, getPtr clearColor]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc drawListBegin*(self: RenderingDevice; framebuffer: Rid; initialColorAction: RenderingDevice_InitialAction; finalColorAction: RenderingDevice_FinalAction; initialDepthAction: RenderingDevice_InitialAction; finalDepthAction: RenderingDevice_FinalAction; clearColorValues: PackedColorArray = PackedColorArray(); clearDepth: Float = 1.0; clearStencil: uint32 = 0'u32; region: Rect2 = rect2(0, 0, 0, 0)): int64 =
  expandMethodBind(className RenderingDevice, "draw_list_begin", 2686605154)
  var `?param` = [getPtr framebuffer, getPtr initialColorAction, getPtr finalColorAction, getPtr initialDepthAction, getPtr finalDepthAction, getPtr clearColorValues, getPtr clearDepth, getPtr clearStencil, getPtr region]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc drawListBeginSplit*(self: RenderingDevice; framebuffer: Rid; splits: uint32; initialColorAction: RenderingDevice_InitialAction; finalColorAction: RenderingDevice_FinalAction; initialDepthAction: RenderingDevice_InitialAction; finalDepthAction: RenderingDevice_FinalAction; clearColorValues: PackedColorArray = PackedColorArray(); clearDepth: Float = 1.0; clearStencil: uint32 = 0'u32; region: Rect2 = rect2(0, 0, 0, 0); storageTextures: TypedArray[Rid] = TypedArray[Rid](gdarray())): PackedInt64Array =
  expandMethodBind(className RenderingDevice, "draw_list_begin_split", 2406300660)
  var `?param` = [getPtr framebuffer, getPtr splits, getPtr initialColorAction, getPtr finalColorAction, getPtr initialDepthAction, getPtr finalDepthAction, getPtr clearColorValues, getPtr clearDepth, getPtr clearStencil, getPtr region, getPtr storageTextures]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc drawListSetBlendConstants*(self: RenderingDevice; drawList: int64; color: Color): void =
  expandMethodBind(className RenderingDevice, "draw_list_set_blend_constants", 2878471219)
  var `?param` = [getPtr drawList, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListBindRenderPipeline*(self: RenderingDevice; drawList: int64; renderPipeline: Rid): void =
  expandMethodBind(className RenderingDevice, "draw_list_bind_render_pipeline", 4040184819)
  var `?param` = [getPtr drawList, getPtr renderPipeline]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListBindUniformSet*(self: RenderingDevice; drawList: int64; uniformSet: Rid; setIndex: uint32): void =
  expandMethodBind(className RenderingDevice, "draw_list_bind_uniform_set", 749655778)
  var `?param` = [getPtr drawList, getPtr uniformSet, getPtr setIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListBindVertexArray*(self: RenderingDevice; drawList: int64; vertexArray: Rid): void =
  expandMethodBind(className RenderingDevice, "draw_list_bind_vertex_array", 4040184819)
  var `?param` = [getPtr drawList, getPtr vertexArray]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListBindIndexArray*(self: RenderingDevice; drawList: int64; indexArray: Rid): void =
  expandMethodBind(className RenderingDevice, "draw_list_bind_index_array", 4040184819)
  var `?param` = [getPtr drawList, getPtr indexArray]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListSetPushConstant*(self: RenderingDevice; drawList: int64; buffer: PackedByteArray; sizeBytes: uint32): void =
  expandMethodBind(className RenderingDevice, "draw_list_set_push_constant", 2772371345)
  var `?param` = [getPtr drawList, getPtr buffer, getPtr sizeBytes]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListDraw*(self: RenderingDevice; drawList: int64; useIndices: bool; instances: uint32; proceduralVertexCount: uint32 = 0'u32): void =
  expandMethodBind(className RenderingDevice, "draw_list_draw", 4230067973)
  var `?param` = [getPtr drawList, getPtr useIndices, getPtr instances, getPtr proceduralVertexCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListEnableScissor*(self: RenderingDevice; drawList: int64; rect: Rect2 = rect2(0, 0, 0, 0)): void =
  expandMethodBind(className RenderingDevice, "draw_list_enable_scissor", 244650101)
  var `?param` = [getPtr drawList, getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListDisableScissor*(self: RenderingDevice; drawList: int64): void =
  expandMethodBind(className RenderingDevice, "draw_list_disable_scissor", 1286410249)
  var `?param` = [getPtr drawList]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawListSwitchToNextPass*(self: RenderingDevice): int64 =
  expandMethodBind(className RenderingDevice, "draw_list_switch_to_next_pass", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc drawListSwitchToNextPassSplit*(self: RenderingDevice; splits: uint32): PackedInt64Array =
  expandMethodBind(className RenderingDevice, "draw_list_switch_to_next_pass_split", 2865087369)
  var `?param` = [getPtr splits]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc drawListEnd*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "draw_list_end", 3218959716)
  methodbind.ptrcall(self, nil)

proc computeListBegin*(self: RenderingDevice): int64 =
  expandMethodBind(className RenderingDevice, "compute_list_begin", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc computeListBindComputePipeline*(self: RenderingDevice; computeList: int64; computePipeline: Rid): void =
  expandMethodBind(className RenderingDevice, "compute_list_bind_compute_pipeline", 4040184819)
  var `?param` = [getPtr computeList, getPtr computePipeline]
  methodbind.ptrcall(self, addr `?param`[0])

proc computeListSetPushConstant*(self: RenderingDevice; computeList: int64; buffer: PackedByteArray; sizeBytes: uint32): void =
  expandMethodBind(className RenderingDevice, "compute_list_set_push_constant", 2772371345)
  var `?param` = [getPtr computeList, getPtr buffer, getPtr sizeBytes]
  methodbind.ptrcall(self, addr `?param`[0])

proc computeListBindUniformSet*(self: RenderingDevice; computeList: int64; uniformSet: Rid; setIndex: uint32): void =
  expandMethodBind(className RenderingDevice, "compute_list_bind_uniform_set", 749655778)
  var `?param` = [getPtr computeList, getPtr uniformSet, getPtr setIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc computeListDispatch*(self: RenderingDevice; computeList: int64; xGroups: uint32; yGroups: uint32; zGroups: uint32): void =
  expandMethodBind(className RenderingDevice, "compute_list_dispatch", 4275841770)
  var `?param` = [getPtr computeList, getPtr xGroups, getPtr yGroups, getPtr zGroups]
  methodbind.ptrcall(self, addr `?param`[0])

proc computeListDispatchIndirect*(self: RenderingDevice; computeList: int64; buffer: Rid; offset: uint32): void =
  expandMethodBind(className RenderingDevice, "compute_list_dispatch_indirect", 749655778)
  var `?param` = [getPtr computeList, getPtr buffer, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc computeListAddBarrier*(self: RenderingDevice; computeList: int64): void =
  expandMethodBind(className RenderingDevice, "compute_list_add_barrier", 1286410249)
  var `?param` = [getPtr computeList]
  methodbind.ptrcall(self, addr `?param`[0])

proc computeListEnd*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "compute_list_end", 3218959716)
  methodbind.ptrcall(self, nil)

proc freeRid*(self: RenderingDevice; rid: Rid): void =
  expandMethodBind(className RenderingDevice, "free_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc captureTimestamp*(self: RenderingDevice; name: String): void =
  expandMethodBind(className RenderingDevice, "capture_timestamp", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCapturedTimestampsCount*(self: RenderingDevice): uint32 =
  expandMethodBind(className RenderingDevice, "get_captured_timestamps_count", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc getCapturedTimestampsFrame*(self: RenderingDevice): uint64 =
  expandMethodBind(className RenderingDevice, "get_captured_timestamps_frame", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getCapturedTimestampGpuTime*(self: RenderingDevice; index: uint32): uint64 =
  expandMethodBind(className RenderingDevice, "get_captured_timestamp_gpu_time", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc getCapturedTimestampCpuTime*(self: RenderingDevice; index: uint32): uint64 =
  expandMethodBind(className RenderingDevice, "get_captured_timestamp_cpu_time", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc getCapturedTimestampName*(self: RenderingDevice; index: uint32): String =
  expandMethodBind(className RenderingDevice, "get_captured_timestamp_name", 844755477)
  var `?param` = [getPtr index]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc limitGet*(self: RenderingDevice; limit: RenderingDevice_Limit): uint64 =
  expandMethodBind(className RenderingDevice, "limit_get", 1559202131)
  var `?param` = [getPtr limit]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc getFrameDelay*(self: RenderingDevice): uint32 =
  expandMethodBind(className RenderingDevice, "get_frame_delay", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc submit*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "submit", 3218959716)
  methodbind.ptrcall(self, nil)

proc sync*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "sync", 3218959716)
  methodbind.ptrcall(self, nil)

proc barrier*(self: RenderingDevice; `from`: set[RenderingDevice_BarrierMask] = {barrierMaskVertex, barrierMaskCompute, barrierMaskTransfer, barrierMaskFragment}; to: set[RenderingDevice_BarrierMask] = {barrierMaskVertex, barrierMaskCompute, barrierMaskTransfer, barrierMaskFragment}): void =
  expandMethodBind(className RenderingDevice, "barrier", 3718155691)
  var `?param` = [getPtr `from`, getPtr to]
  methodbind.ptrcall(self, addr `?param`[0])

proc fullBarrier*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "full_barrier", 3218959716)
  methodbind.ptrcall(self, nil)

proc createLocalDevice*(self: RenderingDevice): RenderingDevice =
  expandMethodBind(className RenderingDevice, "create_local_device", 2846302423)
  var ret: encoded RenderingDevice
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice)

proc setResourceName*(self: RenderingDevice; id: Rid; name: String): void =
  expandMethodBind(className RenderingDevice, "set_resource_name", 2726140452)
  var `?param` = [getPtr id, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawCommandBeginLabel*(self: RenderingDevice; name: String; color: Color): void =
  expandMethodBind(className RenderingDevice, "draw_command_begin_label", 1636512886)
  var `?param` = [getPtr name, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawCommandInsertLabel*(self: RenderingDevice; name: String; color: Color): void =
  expandMethodBind(className RenderingDevice, "draw_command_insert_label", 1636512886)
  var `?param` = [getPtr name, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawCommandEndLabel*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "draw_command_end_label", 3218959716)
  methodbind.ptrcall(self, nil)

proc getDeviceVendorName*(self: RenderingDevice): String =
  expandMethodBind(className RenderingDevice, "get_device_vendor_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDeviceName*(self: RenderingDevice): String =
  expandMethodBind(className RenderingDevice, "get_device_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDevicePipelineCacheUuid*(self: RenderingDevice): String =
  expandMethodBind(className RenderingDevice, "get_device_pipeline_cache_uuid", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getMemoryUsage*(self: RenderingDevice; `type`: RenderingDevice_MemoryType): uint64 =
  expandMethodBind(className RenderingDevice, "get_memory_usage", 251690689)
  var `?param` = [getPtr `type`]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc getDriverResource*(self: RenderingDevice; resource: RenderingDevice_DriverResource; rid: Rid; index: uint64): uint64 =
  expandMethodBind(className RenderingDevice, "get_driver_resource", 501815484)
  var `?param` = [getPtr resource, getPtr rid, getPtr index]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

const RenderingDevice_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderingDevice]): Table[string, string] = RenderingDevice_vmap