{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc textureCreate*(self: RenderingDevice; format: gdref RDTextureFormat; view: gdref RDTextureView; data: TypedArray[PackedByteArray] = TypedArray[PackedByteArray](gdarray())): RID =
  expandMethodBind(className RenderingDevice, "texture_create", 3709173589)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr format, getPtr view, getPtr data], addr ret)
  (addr ret).decode_result(RID)

proc textureCreateShared*(self: RenderingDevice; view: gdref RDTextureView; withTexture: RID): RID =
  expandMethodBind(className RenderingDevice, "texture_create_shared", 3178156134)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr view, getPtr withTexture], addr ret)
  (addr ret).decode_result(RID)

proc textureCreateSharedFromSlice*(self: RenderingDevice; view: gdref RDTextureView; withTexture: RID; layer: uint32; mipmap: uint32; mipmaps: uint32 = 1'u32; sliceType: RenderingDevice_TextureSliceType = textureSlice2D): RID =
  expandMethodBind(className RenderingDevice, "texture_create_shared_from_slice", 1808971279)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr view, getPtr withTexture, getPtr layer, getPtr mipmap, getPtr mipmaps, getPtr sliceType], addr ret)
  (addr ret).decode_result(RID)

proc textureCreateFromExtension*(self: RenderingDevice; `type`: RenderingDevice_TextureType; format: RenderingDevice_DataFormat; samples: RenderingDevice_TextureSamples; usageFlags: set[RenderingDevice_TextureUsageBits]; image: uint64; width: uint64; height: uint64; depth: uint64; layers: uint64): RID =
  expandMethodBind(className RenderingDevice, "texture_create_from_extension", 1397171480)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr `type`, getPtr format, getPtr samples, getPtr usageFlags, getPtr image, getPtr width, getPtr height, getPtr depth, getPtr layers], addr ret)
  (addr ret).decode_result(RID)

proc textureUpdate*(self: RenderingDevice; texture: RID; layer: uint32; data: PackedByteArray): Error =
  expandMethodBind(className RenderingDevice, "texture_update", 1349464008)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr texture, getPtr layer, getPtr data], addr ret)
  (addr ret).decode_result(Error)

proc textureGetData*(self: RenderingDevice; texture: RID; layer: uint32): PackedByteArray =
  expandMethodBind(className RenderingDevice, "texture_get_data", 1859412099)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr texture, getPtr layer], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc textureIsFormatSupportedForUsage*(self: RenderingDevice; format: RenderingDevice_DataFormat; usageFlags: set[RenderingDevice_TextureUsageBits]): bool =
  expandMethodBind(className RenderingDevice, "texture_is_format_supported_for_usage", 2592520478)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr format, getPtr usageFlags], addr ret)
  (addr ret).decode_result(bool)

proc textureIsShared*(self: RenderingDevice; texture: RID): bool =
  expandMethodBind(className RenderingDevice, "texture_is_shared", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr texture], addr ret)
  (addr ret).decode_result(bool)

proc textureIsValid*(self: RenderingDevice; texture: RID): bool =
  expandMethodBind(className RenderingDevice, "texture_is_valid", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr texture], addr ret)
  (addr ret).decode_result(bool)

proc textureCopy*(self: RenderingDevice; fromTexture: RID; toTexture: RID; fromPos: Vector3; toPos: Vector3; size: Vector3; srcMipmap: uint32; dstMipmap: uint32; srcLayer: uint32; dstLayer: uint32): Error =
  expandMethodBind(className RenderingDevice, "texture_copy", 2859522160)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr fromTexture, getPtr toTexture, getPtr fromPos, getPtr toPos, getPtr size, getPtr srcMipmap, getPtr dstMipmap, getPtr srcLayer, getPtr dstLayer], addr ret)
  (addr ret).decode_result(Error)

proc textureClear*(self: RenderingDevice; texture: RID; color: Color; baseMipmap: uint32; mipmapCount: uint32; baseLayer: uint32; layerCount: uint32): Error =
  expandMethodBind(className RenderingDevice, "texture_clear", 3477703247)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr texture, getPtr color, getPtr baseMipmap, getPtr mipmapCount, getPtr baseLayer, getPtr layerCount], addr ret)
  (addr ret).decode_result(Error)

proc textureResolveMultisample*(self: RenderingDevice; fromTexture: RID; toTexture: RID): Error =
  expandMethodBind(className RenderingDevice, "texture_resolve_multisample", 3181288260)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr fromTexture, getPtr toTexture], addr ret)
  (addr ret).decode_result(Error)

proc textureGetFormat*(self: RenderingDevice; texture: RID): gdref RDTextureFormat =
  expandMethodBind(className RenderingDevice, "texture_get_format", 1374471690)
  var ret: encoded gdref RDTextureFormat
  methodbind.ptrcall(self, [getPtr texture], addr ret)
  (addr ret).decode_result(gdref RDTextureFormat)

proc textureGetNativeHandle*(self: RenderingDevice; texture: RID): uint64 =
  expandMethodBind(className RenderingDevice, "texture_get_native_handle", 3917799429)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr texture], addr ret)
  (addr ret).decode_result(uint64)

proc framebufferFormatCreate*(self: RenderingDevice; attachments: TypedArray[RDAttachmentFormat]; viewCount: uint32 = 1'u32): int64 =
  expandMethodBind(className RenderingDevice, "framebuffer_format_create", 697032759)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr attachments, getPtr viewCount], addr ret)
  (addr ret).decode_result(int64)

proc framebufferFormatCreateMultipass*(self: RenderingDevice; attachments: TypedArray[RDAttachmentFormat]; passes: TypedArray[RDFramebufferPass]; viewCount: uint32 = 1'u32): int64 =
  expandMethodBind(className RenderingDevice, "framebuffer_format_create_multipass", 2647479094)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr attachments, getPtr passes, getPtr viewCount], addr ret)
  (addr ret).decode_result(int64)

proc framebufferFormatCreateEmpty*(self: RenderingDevice; samples: RenderingDevice_TextureSamples = textureSamples1): int64 =
  expandMethodBind(className RenderingDevice, "framebuffer_format_create_empty", 555930169)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr samples], addr ret)
  (addr ret).decode_result(int64)

proc framebufferFormatGetTextureSamples*(self: RenderingDevice; format: int64; renderPass: uint32 = 0'u32): RenderingDevice_TextureSamples =
  expandMethodBind(className RenderingDevice, "framebuffer_format_get_texture_samples", 4223391010)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, [getPtr format, getPtr renderPass], addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc framebufferCreate*(self: RenderingDevice; textures: TypedArray[RID]; validateWithFormat: int64 = -1; viewCount: uint32 = 1'u32): RID =
  expandMethodBind(className RenderingDevice, "framebuffer_create", 3284231055)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr textures, getPtr validateWithFormat, getPtr viewCount], addr ret)
  (addr ret).decode_result(RID)

proc framebufferCreateMultipass*(self: RenderingDevice; textures: TypedArray[RID]; passes: TypedArray[RDFramebufferPass]; validateWithFormat: int64 = -1; viewCount: uint32 = 1'u32): RID =
  expandMethodBind(className RenderingDevice, "framebuffer_create_multipass", 1750306695)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr textures, getPtr passes, getPtr validateWithFormat, getPtr viewCount], addr ret)
  (addr ret).decode_result(RID)

proc framebufferCreateEmpty*(self: RenderingDevice; size: Vector2i; samples: RenderingDevice_TextureSamples = textureSamples1; validateWithFormat: int64 = -1): RID =
  expandMethodBind(className RenderingDevice, "framebuffer_create_empty", 3058360618)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr size, getPtr samples, getPtr validateWithFormat], addr ret)
  (addr ret).decode_result(RID)

proc framebufferGetFormat*(self: RenderingDevice; framebuffer: RID): int64 =
  expandMethodBind(className RenderingDevice, "framebuffer_get_format", 3917799429)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr framebuffer], addr ret)
  (addr ret).decode_result(int64)

proc framebufferIsValid*(self: RenderingDevice; framebuffer: RID): bool =
  expandMethodBind(className RenderingDevice, "framebuffer_is_valid", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr framebuffer], addr ret)
  (addr ret).decode_result(bool)

proc samplerCreate*(self: RenderingDevice; state: gdref RDSamplerState): RID =
  expandMethodBind(className RenderingDevice, "sampler_create", 2327892535)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr state], addr ret)
  (addr ret).decode_result(RID)

proc samplerIsFormatSupportedForFilter*(self: RenderingDevice; format: RenderingDevice_DataFormat; samplerFilter: RenderingDevice_SamplerFilter): bool =
  expandMethodBind(className RenderingDevice, "sampler_is_format_supported_for_filter", 2247922238)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr format, getPtr samplerFilter], addr ret)
  (addr ret).decode_result(bool)

proc vertexBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray(); useAsStorage: bool = false): RID =
  expandMethodBind(className RenderingDevice, "vertex_buffer_create", 3410049843)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr sizeBytes, getPtr data, getPtr useAsStorage], addr ret)
  (addr ret).decode_result(RID)

proc vertexFormatCreate*(self: RenderingDevice; vertexDescriptions: TypedArray[RDVertexAttribute]): int64 =
  expandMethodBind(className RenderingDevice, "vertex_format_create", 1242678479)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr vertexDescriptions], addr ret)
  (addr ret).decode_result(int64)

proc vertexArrayCreate*(self: RenderingDevice; vertexCount: uint32; vertexFormat: int64; srcBuffers: TypedArray[RID]; offsets: PackedInt64Array = PackedInt64Array()): RID =
  expandMethodBind(className RenderingDevice, "vertex_array_create", 3799816279)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr vertexCount, getPtr vertexFormat, getPtr srcBuffers, getPtr offsets], addr ret)
  (addr ret).decode_result(RID)

proc indexBufferCreate*(self: RenderingDevice; sizeIndices: uint32; format: RenderingDevice_IndexBufferFormat; data: PackedByteArray = PackedByteArray(); useRestartIndices: bool = false): RID =
  expandMethodBind(className RenderingDevice, "index_buffer_create", 3935920523)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr sizeIndices, getPtr format, getPtr data, getPtr useRestartIndices], addr ret)
  (addr ret).decode_result(RID)

proc indexArrayCreate*(self: RenderingDevice; indexBuffer: RID; indexOffset: uint32; indexCount: uint32): RID =
  expandMethodBind(className RenderingDevice, "index_array_create", 2256026069)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr indexBuffer, getPtr indexOffset, getPtr indexCount], addr ret)
  (addr ret).decode_result(RID)

proc shaderCompileSpirvFromSource*(self: RenderingDevice; shaderSource: gdref RDShaderSource; allowCache: bool = true): gdref RDShaderSPIRV =
  expandMethodBind(className RenderingDevice, "shader_compile_spirv_from_source", 1178973306)
  var ret: encoded gdref RDShaderSPIRV
  methodbind.ptrcall(self, [getPtr shaderSource, getPtr allowCache], addr ret)
  (addr ret).decode_result(gdref RDShaderSPIRV)

proc shaderCompileBinaryFromSpirv*(self: RenderingDevice; spirvData: gdref RDShaderSPIRV; name: String = gdstring""): PackedByteArray =
  expandMethodBind(className RenderingDevice, "shader_compile_binary_from_spirv", 134910450)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr spirvData, getPtr name], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc shaderCreateFromSpirv*(self: RenderingDevice; spirvData: gdref RDShaderSPIRV; name: String = gdstring""): RID =
  expandMethodBind(className RenderingDevice, "shader_create_from_spirv", 342949005)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr spirvData, getPtr name], addr ret)
  (addr ret).decode_result(RID)

proc shaderCreateFromBytecode*(self: RenderingDevice; binaryData: PackedByteArray; placeholderRid: RID = RID()): RID =
  expandMethodBind(className RenderingDevice, "shader_create_from_bytecode", 1687031350)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr binaryData, getPtr placeholderRid], addr ret)
  (addr ret).decode_result(RID)

proc shaderCreatePlaceholder*(self: RenderingDevice): RID =
  expandMethodBind(className RenderingDevice, "shader_create_placeholder", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc shaderGetVertexInputAttributeMask*(self: RenderingDevice; shader: RID): uint64 =
  expandMethodBind(className RenderingDevice, "shader_get_vertex_input_attribute_mask", 3917799429)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr shader], addr ret)
  (addr ret).decode_result(uint64)

proc uniformBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray()): RID =
  expandMethodBind(className RenderingDevice, "uniform_buffer_create", 34556762)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr sizeBytes, getPtr data], addr ret)
  (addr ret).decode_result(RID)

proc storageBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray(); usage: set[RenderingDevice_StorageBufferUsage] = {}): RID =
  expandMethodBind(className RenderingDevice, "storage_buffer_create", 2316365934)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr sizeBytes, getPtr data, getPtr usage], addr ret)
  (addr ret).decode_result(RID)

proc textureBufferCreate*(self: RenderingDevice; sizeBytes: uint32; format: RenderingDevice_DataFormat; data: PackedByteArray = PackedByteArray()): RID =
  expandMethodBind(className RenderingDevice, "texture_buffer_create", 1470338698)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr sizeBytes, getPtr format, getPtr data], addr ret)
  (addr ret).decode_result(RID)

proc uniformSetCreate*(self: RenderingDevice; uniforms: TypedArray[RDUniform]; shader: RID; shaderSet: uint32): RID =
  expandMethodBind(className RenderingDevice, "uniform_set_create", 2280795797)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr uniforms, getPtr shader, getPtr shaderSet], addr ret)
  (addr ret).decode_result(RID)

proc uniformSetIsValid*(self: RenderingDevice; uniformSet: RID): bool =
  expandMethodBind(className RenderingDevice, "uniform_set_is_valid", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr uniformSet], addr ret)
  (addr ret).decode_result(bool)

proc bufferCopy*(self: RenderingDevice; srcBuffer: RID; dstBuffer: RID; srcOffset: uint32; dstOffset: uint32; size: uint32): Error =
  expandMethodBind(className RenderingDevice, "buffer_copy", 864257779)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr srcBuffer, getPtr dstBuffer, getPtr srcOffset, getPtr dstOffset, getPtr size], addr ret)
  (addr ret).decode_result(Error)

proc bufferUpdate*(self: RenderingDevice; buffer: RID; offset: uint32; sizeBytes: uint32; data: PackedByteArray): Error =
  expandMethodBind(className RenderingDevice, "buffer_update", 3454956949)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer, getPtr offset, getPtr sizeBytes, getPtr data], addr ret)
  (addr ret).decode_result(Error)

proc bufferClear*(self: RenderingDevice; buffer: RID; offset: uint32; sizeBytes: uint32): Error =
  expandMethodBind(className RenderingDevice, "buffer_clear", 2452320800)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer, getPtr offset, getPtr sizeBytes], addr ret)
  (addr ret).decode_result(Error)

proc bufferGetData*(self: RenderingDevice; buffer: RID; offsetBytes: uint32 = 0'u32; sizeBytes: uint32 = 0'u32): PackedByteArray =
  expandMethodBind(className RenderingDevice, "buffer_get_data", 3101830688)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr buffer, getPtr offsetBytes, getPtr sizeBytes], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc renderPipelineCreate*(self: RenderingDevice; shader: RID; framebufferFormat: int64; vertexFormat: int64; primitive: RenderingDevice_RenderPrimitive; rasterizationState: gdref RDPipelineRasterizationState; multisampleState: gdref RDPipelineMultisampleState; stencilState: gdref RDPipelineDepthStencilState; colorBlendState: gdref RDPipelineColorBlendState; dynamicStateFlags: set[RenderingDevice_PipelineDynamicStateFlags] = {}; forRenderPass: uint32 = 0'u32; specializationConstants: TypedArray[RDPipelineSpecializationConstant] = TypedArray[RDPipelineSpecializationConstant](gdarray())): RID =
  expandMethodBind(className RenderingDevice, "render_pipeline_create", 2385451958)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr shader, getPtr framebufferFormat, getPtr vertexFormat, getPtr primitive, getPtr rasterizationState, getPtr multisampleState, getPtr stencilState, getPtr colorBlendState, getPtr dynamicStateFlags, getPtr forRenderPass, getPtr specializationConstants], addr ret)
  (addr ret).decode_result(RID)

proc renderPipelineIsValid*(self: RenderingDevice; renderPipeline: RID): bool =
  expandMethodBind(className RenderingDevice, "render_pipeline_is_valid", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr renderPipeline], addr ret)
  (addr ret).decode_result(bool)

proc computePipelineCreate*(self: RenderingDevice; shader: RID; specializationConstants: TypedArray[RDPipelineSpecializationConstant] = TypedArray[RDPipelineSpecializationConstant](gdarray())): RID =
  expandMethodBind(className RenderingDevice, "compute_pipeline_create", 1448838280)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr shader, getPtr specializationConstants], addr ret)
  (addr ret).decode_result(RID)

proc computePipelineIsValid*(self: RenderingDevice; computePipeline: RID): bool =
  expandMethodBind(className RenderingDevice, "compute_pipeline_is_valid", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr computePipeline], addr ret)
  (addr ret).decode_result(bool)

proc screenGetWidth*(self: RenderingDevice; screen: int32 = 0): int32 =
  expandMethodBind(className RenderingDevice, "screen_get_width", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(int32)

proc screenGetHeight*(self: RenderingDevice; screen: int32 = 0): int32 =
  expandMethodBind(className RenderingDevice, "screen_get_height", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(int32)

proc screenGetFramebufferFormat*(self: RenderingDevice; screen: int32 = 0): int64 =
  expandMethodBind(className RenderingDevice, "screen_get_framebuffer_format", 1591665591)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(int64)

proc drawListBeginForScreen*(self: RenderingDevice; screen: int32 = 0; clearColor: Color = color(0, 0, 0, 1)): int64 =
  expandMethodBind(className RenderingDevice, "draw_list_begin_for_screen", 3988079995)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr screen, getPtr clearColor], addr ret)
  (addr ret).decode_result(int64)

proc drawListBegin*(self: RenderingDevice; framebuffer: RID; initialColorAction: RenderingDevice_InitialAction; finalColorAction: RenderingDevice_FinalAction; initialDepthAction: RenderingDevice_InitialAction; finalDepthAction: RenderingDevice_FinalAction; clearColorValues: PackedColorArray = PackedColorArray(); clearDepth: Float = 1.0; clearStencil: uint32 = 0'u32; region: Rect2 = rect2(0, 0, 0, 0)): int64 =
  expandMethodBind(className RenderingDevice, "draw_list_begin", 2686605154)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr framebuffer, getPtr initialColorAction, getPtr finalColorAction, getPtr initialDepthAction, getPtr finalDepthAction, getPtr clearColorValues, getPtr clearDepth, getPtr clearStencil, getPtr region], addr ret)
  (addr ret).decode_result(int64)

proc drawListBeginSplit*(self: RenderingDevice; framebuffer: RID; splits: uint32; initialColorAction: RenderingDevice_InitialAction; finalColorAction: RenderingDevice_FinalAction; initialDepthAction: RenderingDevice_InitialAction; finalDepthAction: RenderingDevice_FinalAction; clearColorValues: PackedColorArray = PackedColorArray(); clearDepth: Float = 1.0; clearStencil: uint32 = 0'u32; region: Rect2 = rect2(0, 0, 0, 0); storageTextures: TypedArray[RID] = TypedArray[RID](gdarray())): PackedInt64Array =
  expandMethodBind(className RenderingDevice, "draw_list_begin_split", 2406300660)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [getPtr framebuffer, getPtr splits, getPtr initialColorAction, getPtr finalColorAction, getPtr initialDepthAction, getPtr finalDepthAction, getPtr clearColorValues, getPtr clearDepth, getPtr clearStencil, getPtr region, getPtr storageTextures], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc drawListSetBlendConstants*(self: RenderingDevice; drawList: int64; color: Color): void =
  expandMethodBind(className RenderingDevice, "draw_list_set_blend_constants", 2878471219)
  methodbind.ptrcall(self, [getPtr drawList, getPtr color])

proc drawListBindRenderPipeline*(self: RenderingDevice; drawList: int64; renderPipeline: RID): void =
  expandMethodBind(className RenderingDevice, "draw_list_bind_render_pipeline", 4040184819)
  methodbind.ptrcall(self, [getPtr drawList, getPtr renderPipeline])

proc drawListBindUniformSet*(self: RenderingDevice; drawList: int64; uniformSet: RID; setIndex: uint32): void =
  expandMethodBind(className RenderingDevice, "draw_list_bind_uniform_set", 749655778)
  methodbind.ptrcall(self, [getPtr drawList, getPtr uniformSet, getPtr setIndex])

proc drawListBindVertexArray*(self: RenderingDevice; drawList: int64; vertexArray: RID): void =
  expandMethodBind(className RenderingDevice, "draw_list_bind_vertex_array", 4040184819)
  methodbind.ptrcall(self, [getPtr drawList, getPtr vertexArray])

proc drawListBindIndexArray*(self: RenderingDevice; drawList: int64; indexArray: RID): void =
  expandMethodBind(className RenderingDevice, "draw_list_bind_index_array", 4040184819)
  methodbind.ptrcall(self, [getPtr drawList, getPtr indexArray])

proc drawListSetPushConstant*(self: RenderingDevice; drawList: int64; buffer: PackedByteArray; sizeBytes: uint32): void =
  expandMethodBind(className RenderingDevice, "draw_list_set_push_constant", 2772371345)
  methodbind.ptrcall(self, [getPtr drawList, getPtr buffer, getPtr sizeBytes])

proc drawListDraw*(self: RenderingDevice; drawList: int64; useIndices: bool; instances: uint32; proceduralVertexCount: uint32 = 0'u32): void =
  expandMethodBind(className RenderingDevice, "draw_list_draw", 4230067973)
  methodbind.ptrcall(self, [getPtr drawList, getPtr useIndices, getPtr instances, getPtr proceduralVertexCount])

proc drawListEnableScissor*(self: RenderingDevice; drawList: int64; rect: Rect2 = rect2(0, 0, 0, 0)): void =
  expandMethodBind(className RenderingDevice, "draw_list_enable_scissor", 244650101)
  methodbind.ptrcall(self, [getPtr drawList, getPtr rect])

proc drawListDisableScissor*(self: RenderingDevice; drawList: int64): void =
  expandMethodBind(className RenderingDevice, "draw_list_disable_scissor", 1286410249)
  methodbind.ptrcall(self, [getPtr drawList])

proc drawListSwitchToNextPass*(self: RenderingDevice): int64 =
  expandMethodBind(className RenderingDevice, "draw_list_switch_to_next_pass", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc drawListSwitchToNextPassSplit*(self: RenderingDevice; splits: uint32): PackedInt64Array =
  expandMethodBind(className RenderingDevice, "draw_list_switch_to_next_pass_split", 2865087369)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [getPtr splits], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc drawListEnd*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "draw_list_end", 3218959716)
  methodbind.ptrcall(self, [])

proc computeListBegin*(self: RenderingDevice): int64 =
  expandMethodBind(className RenderingDevice, "compute_list_begin", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc computeListBindComputePipeline*(self: RenderingDevice; computeList: int64; computePipeline: RID): void =
  expandMethodBind(className RenderingDevice, "compute_list_bind_compute_pipeline", 4040184819)
  methodbind.ptrcall(self, [getPtr computeList, getPtr computePipeline])

proc computeListSetPushConstant*(self: RenderingDevice; computeList: int64; buffer: PackedByteArray; sizeBytes: uint32): void =
  expandMethodBind(className RenderingDevice, "compute_list_set_push_constant", 2772371345)
  methodbind.ptrcall(self, [getPtr computeList, getPtr buffer, getPtr sizeBytes])

proc computeListBindUniformSet*(self: RenderingDevice; computeList: int64; uniformSet: RID; setIndex: uint32): void =
  expandMethodBind(className RenderingDevice, "compute_list_bind_uniform_set", 749655778)
  methodbind.ptrcall(self, [getPtr computeList, getPtr uniformSet, getPtr setIndex])

proc computeListDispatch*(self: RenderingDevice; computeList: int64; xGroups: uint32; yGroups: uint32; zGroups: uint32): void =
  expandMethodBind(className RenderingDevice, "compute_list_dispatch", 4275841770)
  methodbind.ptrcall(self, [getPtr computeList, getPtr xGroups, getPtr yGroups, getPtr zGroups])

proc computeListDispatchIndirect*(self: RenderingDevice; computeList: int64; buffer: RID; offset: uint32): void =
  expandMethodBind(className RenderingDevice, "compute_list_dispatch_indirect", 749655778)
  methodbind.ptrcall(self, [getPtr computeList, getPtr buffer, getPtr offset])

proc computeListAddBarrier*(self: RenderingDevice; computeList: int64): void =
  expandMethodBind(className RenderingDevice, "compute_list_add_barrier", 1286410249)
  methodbind.ptrcall(self, [getPtr computeList])

proc computeListEnd*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "compute_list_end", 3218959716)
  methodbind.ptrcall(self, [])

proc freeRid*(self: RenderingDevice; rid: RID): void =
  expandMethodBind(className RenderingDevice, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc captureTimestamp*(self: RenderingDevice; name: String): void =
  expandMethodBind(className RenderingDevice, "capture_timestamp", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getCapturedTimestampsCount*(self: RenderingDevice): uint32 =
  expandMethodBind(className RenderingDevice, "get_captured_timestamps_count", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc getCapturedTimestampsFrame*(self: RenderingDevice): uint64 =
  expandMethodBind(className RenderingDevice, "get_captured_timestamps_frame", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getCapturedTimestampGpuTime*(self: RenderingDevice; index: uint32): uint64 =
  expandMethodBind(className RenderingDevice, "get_captured_timestamp_gpu_time", 923996154)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(uint64)

proc getCapturedTimestampCpuTime*(self: RenderingDevice; index: uint32): uint64 =
  expandMethodBind(className RenderingDevice, "get_captured_timestamp_cpu_time", 923996154)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(uint64)

proc getCapturedTimestampName*(self: RenderingDevice; index: uint32): String =
  expandMethodBind(className RenderingDevice, "get_captured_timestamp_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc limitGet*(self: RenderingDevice; limit: RenderingDevice_Limit): uint64 =
  expandMethodBind(className RenderingDevice, "limit_get", 1559202131)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr limit], addr ret)
  (addr ret).decode_result(uint64)

proc getFrameDelay*(self: RenderingDevice): uint32 =
  expandMethodBind(className RenderingDevice, "get_frame_delay", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc submit*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "submit", 3218959716)
  methodbind.ptrcall(self, [])

proc sync*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "sync", 3218959716)
  methodbind.ptrcall(self, [])

proc barrier*(self: RenderingDevice; `from`: set[RenderingDevice_BarrierMask] = {barrierMaskVertex, barrierMaskCompute, barrierMaskTransfer, barrierMaskFragment}; to: set[RenderingDevice_BarrierMask] = {barrierMaskVertex, barrierMaskCompute, barrierMaskTransfer, barrierMaskFragment}): void =
  expandMethodBind(className RenderingDevice, "barrier", 3718155691)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to])

proc fullBarrier*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "full_barrier", 3218959716)
  methodbind.ptrcall(self, [])

proc createLocalDevice*(self: RenderingDevice): RenderingDevice =
  expandMethodBind(className RenderingDevice, "create_local_device", 2846302423)
  var ret: encoded RenderingDevice
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice)

proc setResourceName*(self: RenderingDevice; id: RID; name: String): void =
  expandMethodBind(className RenderingDevice, "set_resource_name", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr name])

proc drawCommandBeginLabel*(self: RenderingDevice; name: String; color: Color): void =
  expandMethodBind(className RenderingDevice, "draw_command_begin_label", 1636512886)
  methodbind.ptrcall(self, [getPtr name, getPtr color])

proc drawCommandInsertLabel*(self: RenderingDevice; name: String; color: Color): void =
  expandMethodBind(className RenderingDevice, "draw_command_insert_label", 1636512886)
  methodbind.ptrcall(self, [getPtr name, getPtr color])

proc drawCommandEndLabel*(self: RenderingDevice): void =
  expandMethodBind(className RenderingDevice, "draw_command_end_label", 3218959716)
  methodbind.ptrcall(self, [])

proc getDeviceVendorName*(self: RenderingDevice): String =
  expandMethodBind(className RenderingDevice, "get_device_vendor_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getDeviceName*(self: RenderingDevice): String =
  expandMethodBind(className RenderingDevice, "get_device_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getDevicePipelineCacheUuid*(self: RenderingDevice): String =
  expandMethodBind(className RenderingDevice, "get_device_pipeline_cache_uuid", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getMemoryUsage*(self: RenderingDevice; `type`: RenderingDevice_MemoryType): uint64 =
  expandMethodBind(className RenderingDevice, "get_memory_usage", 251690689)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr `type`], addr ret)
  (addr ret).decode_result(uint64)

proc getDriverResource*(self: RenderingDevice; resource: RenderingDevice_DriverResource; rid: RID; index: uint64): uint64 =
  expandMethodBind(className RenderingDevice, "get_driver_resource", 501815484)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr resource, getPtr rid, getPtr index], addr ret)
  (addr ret).decode_result(uint64)

const RenderingDevice_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderingDevice]): Table[string, string] = RenderingDevice_vmap