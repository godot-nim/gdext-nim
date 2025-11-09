{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(RenderingDevice, Object)

const InvalidId* = -1
const InvalidFormatId* = -1

proc textureCreate*(self: RenderingDevice; format: gdref RDTextureFormat; view: gdref RDTextureView; data: TypedArray[PackedByteArray] = newTypedArray[PackedByteArray]()): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_create", 3709173589)
  methodbind.ptrcall(self, [getPtr format, getPtr view, getPtr data], RID)

proc textureCreateShared*(self: RenderingDevice; view: gdref RDTextureView; withTexture: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_create_shared", 3178156134)
  methodbind.ptrcall(self, [getPtr view, getPtr withTexture], RID)

proc textureCreateSharedFromSlice*(self: RenderingDevice; view: gdref RDTextureView; withTexture: RID; layer: uint32; mipmap: uint32; mipmaps: uint32 = 1'u32; sliceType: RenderingDevice_TextureSliceType = textureSlice2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_create_shared_from_slice", 1808971279)
  methodbind.ptrcall(self, [getPtr view, getPtr withTexture, getPtr layer, getPtr mipmap, getPtr mipmaps, getPtr sliceType], RID)

proc textureCreateFromExtension*(self: RenderingDevice; `type`: RenderingDevice_TextureType; format: RenderingDevice_DataFormat; samples: RenderingDevice_TextureSamples; usageFlags: set[RenderingDevice_TextureUsageBits]; image: uint64; width: uint64; height: uint64; depth: uint64; layers: uint64; mipmaps: uint64 = 1): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_create_from_extension", 3732868568)
  methodbind.ptrcall(self, [getPtr `type`, getPtr format, getPtr samples, getPtr usageFlags, getPtr image, getPtr width, getPtr height, getPtr depth, getPtr layers, getPtr mipmaps], RID)

proc textureUpdate*(self: RenderingDevice; texture: RID; layer: uint32; data: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_update", 1349464008)
  methodbind.ptrcall(self, [getPtr texture, getPtr layer, getPtr data], Error)

proc textureGetData*(self: RenderingDevice; texture: RID; layer: uint32): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_get_data", 1859412099)
  methodbind.ptrcall(self, [getPtr texture, getPtr layer], PackedByteArray)

proc textureGetDataAsync*(self: RenderingDevice; texture: RID; layer: uint32; callback: Callable): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_get_data_async", 498832090)
  methodbind.ptrcall(self, [getPtr texture, getPtr layer, getPtr callback], Error)

proc textureIsFormatSupportedForUsage*(self: RenderingDevice; format: RenderingDevice_DataFormat; usageFlags: set[RenderingDevice_TextureUsageBits]): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_is_format_supported_for_usage", 2592520478)
  methodbind.ptrcall(self, [getPtr format, getPtr usageFlags], bool)

proc textureIsShared*(self: RenderingDevice; texture: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_is_shared", 3521089500)
  methodbind.ptrcall(self, [getPtr texture], bool)

proc textureIsValid*(self: RenderingDevice; texture: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_is_valid", 3521089500)
  methodbind.ptrcall(self, [getPtr texture], bool)

proc textureSetDiscardable*(self: RenderingDevice; texture: RID; discardable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_set_discardable", 1265174801)
  methodbind.ptrcall(self, [getPtr texture, getPtr discardable], void)

proc textureIsDiscardable*(self: RenderingDevice; texture: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_is_discardable", 3521089500)
  methodbind.ptrcall(self, [getPtr texture], bool)

proc textureCopy*(self: RenderingDevice; fromTexture: RID; toTexture: RID; fromPos: Vector3; toPos: Vector3; size: Vector3; srcMipmap: uint32; dstMipmap: uint32; srcLayer: uint32; dstLayer: uint32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_copy", 2859522160)
  methodbind.ptrcall(self, [getPtr fromTexture, getPtr toTexture, getPtr fromPos, getPtr toPos, getPtr size, getPtr srcMipmap, getPtr dstMipmap, getPtr srcLayer, getPtr dstLayer], Error)

proc textureClear*(self: RenderingDevice; texture: RID; color: Color; baseMipmap: uint32; mipmapCount: uint32; baseLayer: uint32; layerCount: uint32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_clear", 3477703247)
  methodbind.ptrcall(self, [getPtr texture, getPtr color, getPtr baseMipmap, getPtr mipmapCount, getPtr baseLayer, getPtr layerCount], Error)

proc textureResolveMultisample*(self: RenderingDevice; fromTexture: RID; toTexture: RID): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_resolve_multisample", 3181288260)
  methodbind.ptrcall(self, [getPtr fromTexture, getPtr toTexture], Error)

proc textureGetFormat*(self: RenderingDevice; texture: RID): gdref RDTextureFormat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_get_format", 1374471690)
  methodbind.ptrcall(self, [getPtr texture], gdref RDTextureFormat)

proc textureGetNativeHandle*(self: RenderingDevice; texture: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_get_native_handle", 3917799429)
  methodbind.ptrcall(self, [getPtr texture], uint64)

proc framebufferFormatCreate*(self: RenderingDevice; attachments: TypedArray[gdref RDAttachmentFormat]; viewCount: uint32 = 1'u32): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_format_create", 697032759)
  methodbind.ptrcall(self, [getPtr attachments, getPtr viewCount], int64)

proc framebufferFormatCreateMultipass*(self: RenderingDevice; attachments: TypedArray[gdref RDAttachmentFormat]; passes: TypedArray[gdref RDFramebufferPass]; viewCount: uint32 = 1'u32): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_format_create_multipass", 2647479094)
  methodbind.ptrcall(self, [getPtr attachments, getPtr passes, getPtr viewCount], int64)

proc framebufferFormatCreateEmpty*(self: RenderingDevice; samples: RenderingDevice_TextureSamples = textureSamples1): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_format_create_empty", 555930169)
  methodbind.ptrcall(self, [getPtr samples], int64)

proc framebufferFormatGetTextureSamples*(self: RenderingDevice; format: int64; renderPass: uint32 = 0'u32): RenderingDevice_TextureSamples =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_format_get_texture_samples", 4223391010)
  methodbind.ptrcall(self, [getPtr format, getPtr renderPass], RenderingDevice_TextureSamples)

proc framebufferCreate*(self: RenderingDevice; textures: TypedArray[RID]; validateWithFormat: int64 = -1; viewCount: uint32 = 1'u32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_create", 3284231055)
  methodbind.ptrcall(self, [getPtr textures, getPtr validateWithFormat, getPtr viewCount], RID)

proc framebufferCreateMultipass*(self: RenderingDevice; textures: TypedArray[RID]; passes: TypedArray[gdref RDFramebufferPass]; validateWithFormat: int64 = -1; viewCount: uint32 = 1'u32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_create_multipass", 1750306695)
  methodbind.ptrcall(self, [getPtr textures, getPtr passes, getPtr validateWithFormat, getPtr viewCount], RID)

proc framebufferCreateEmpty*(self: RenderingDevice; size: Vector2i; samples: RenderingDevice_TextureSamples = textureSamples1; validateWithFormat: int64 = -1): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_create_empty", 3058360618)
  methodbind.ptrcall(self, [getPtr size, getPtr samples, getPtr validateWithFormat], RID)

proc framebufferGetFormat*(self: RenderingDevice; framebuffer: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_get_format", 3917799429)
  methodbind.ptrcall(self, [getPtr framebuffer], int64)

proc framebufferIsValid*(self: RenderingDevice; framebuffer: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "framebuffer_is_valid", 4155700596)
  methodbind.ptrcall(self, [getPtr framebuffer], bool)

proc samplerCreate*(self: RenderingDevice; state: gdref RDSamplerState): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "sampler_create", 2327892535)
  methodbind.ptrcall(self, [getPtr state], RID)

proc samplerIsFormatSupportedForFilter*(self: RenderingDevice; format: RenderingDevice_DataFormat; samplerFilter: RenderingDevice_SamplerFilter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "sampler_is_format_supported_for_filter", 2247922238)
  methodbind.ptrcall(self, [getPtr format, getPtr samplerFilter], bool)

proc vertexBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray(); creationBits: set[RenderingDevice_BufferCreationBits] = {}): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "vertex_buffer_create", 2089548973)
  methodbind.ptrcall(self, [getPtr sizeBytes, getPtr data, getPtr creationBits], RID)

proc vertexFormatCreate*(self: RenderingDevice; vertexDescriptions: TypedArray[gdref RDVertexAttribute]): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "vertex_format_create", 1242678479)
  methodbind.ptrcall(self, [getPtr vertexDescriptions], int64)

proc vertexArrayCreate*(self: RenderingDevice; vertexCount: uint32; vertexFormat: int64; srcBuffers: TypedArray[RID]; offsets: PackedInt64Array = PackedInt64Array()): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "vertex_array_create", 3799816279)
  methodbind.ptrcall(self, [getPtr vertexCount, getPtr vertexFormat, getPtr srcBuffers, getPtr offsets], RID)

proc indexBufferCreate*(self: RenderingDevice; sizeIndices: uint32; format: RenderingDevice_IndexBufferFormat; data: PackedByteArray = PackedByteArray(); useRestartIndices: bool = false; creationBits: set[RenderingDevice_BufferCreationBits] = {}): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "index_buffer_create", 2368684885)
  methodbind.ptrcall(self, [getPtr sizeIndices, getPtr format, getPtr data, getPtr useRestartIndices, getPtr creationBits], RID)

proc indexArrayCreate*(self: RenderingDevice; indexBuffer: RID; indexOffset: uint32; indexCount: uint32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "index_array_create", 2256026069)
  methodbind.ptrcall(self, [getPtr indexBuffer, getPtr indexOffset, getPtr indexCount], RID)

proc shaderCompileSpirvFromSource*(self: RenderingDevice; shaderSource: gdref RDShaderSource; allowCache: bool = true): gdref RDShaderSPIRV =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "shader_compile_spirv_from_source", 1178973306)
  methodbind.ptrcall(self, [getPtr shaderSource, getPtr allowCache], gdref RDShaderSPIRV)

proc shaderCompileBinaryFromSpirv*(self: RenderingDevice; spirvData: gdref RDShaderSPIRV; name: String = newGdString()): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "shader_compile_binary_from_spirv", 134910450)
  methodbind.ptrcall(self, [getPtr spirvData, getPtr name], PackedByteArray)

proc shaderCreateFromSpirv*(self: RenderingDevice; spirvData: gdref RDShaderSPIRV; name: String = newGdString()): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "shader_create_from_spirv", 342949005)
  methodbind.ptrcall(self, [getPtr spirvData, getPtr name], RID)

proc shaderCreateFromBytecode*(self: RenderingDevice; binaryData: PackedByteArray; placeholderRid: RID = RID()): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "shader_create_from_bytecode", 1687031350)
  methodbind.ptrcall(self, [getPtr binaryData, getPtr placeholderRid], RID)

proc shaderCreatePlaceholder*(self: RenderingDevice): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "shader_create_placeholder", 529393457)
  methodbind.ptrcall(self, [], RID)

proc shaderGetVertexInputAttributeMask*(self: RenderingDevice; shader: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "shader_get_vertex_input_attribute_mask", 3917799429)
  methodbind.ptrcall(self, [getPtr shader], uint64)

proc uniformBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray(); creationBits: set[RenderingDevice_BufferCreationBits] = {}): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "uniform_buffer_create", 2089548973)
  methodbind.ptrcall(self, [getPtr sizeBytes, getPtr data, getPtr creationBits], RID)

proc storageBufferCreate*(self: RenderingDevice; sizeBytes: uint32; data: PackedByteArray = PackedByteArray(); usage: set[RenderingDevice_StorageBufferUsage] = {}; creationBits: set[RenderingDevice_BufferCreationBits] = {}): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "storage_buffer_create", 1609052553)
  methodbind.ptrcall(self, [getPtr sizeBytes, getPtr data, getPtr usage, getPtr creationBits], RID)

proc textureBufferCreate*(self: RenderingDevice; sizeBytes: uint32; format: RenderingDevice_DataFormat; data: PackedByteArray = PackedByteArray()): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "texture_buffer_create", 1470338698)
  methodbind.ptrcall(self, [getPtr sizeBytes, getPtr format, getPtr data], RID)

proc uniformSetCreate*(self: RenderingDevice; uniforms: TypedArray[gdref RDUniform]; shader: RID; shaderSet: uint32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "uniform_set_create", 2280795797)
  methodbind.ptrcall(self, [getPtr uniforms, getPtr shader, getPtr shaderSet], RID)

proc uniformSetIsValid*(self: RenderingDevice; uniformSet: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "uniform_set_is_valid", 3521089500)
  methodbind.ptrcall(self, [getPtr uniformSet], bool)

proc bufferCopy*(self: RenderingDevice; srcBuffer: RID; dstBuffer: RID; srcOffset: uint32; dstOffset: uint32; size: uint32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "buffer_copy", 864257779)
  methodbind.ptrcall(self, [getPtr srcBuffer, getPtr dstBuffer, getPtr srcOffset, getPtr dstOffset, getPtr size], Error)

proc bufferUpdate*(self: RenderingDevice; buffer: RID; offset: uint32; sizeBytes: uint32; data: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "buffer_update", 3454956949)
  methodbind.ptrcall(self, [getPtr buffer, getPtr offset, getPtr sizeBytes, getPtr data], Error)

proc bufferClear*(self: RenderingDevice; buffer: RID; offset: uint32; sizeBytes: uint32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "buffer_clear", 2452320800)
  methodbind.ptrcall(self, [getPtr buffer, getPtr offset, getPtr sizeBytes], Error)

proc bufferGetData*(self: RenderingDevice; buffer: RID; offsetBytes: uint32 = 0'u32; sizeBytes: uint32 = 0'u32): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "buffer_get_data", 3101830688)
  methodbind.ptrcall(self, [getPtr buffer, getPtr offsetBytes, getPtr sizeBytes], PackedByteArray)

proc bufferGetDataAsync*(self: RenderingDevice; buffer: RID; callback: Callable; offsetBytes: uint32 = 0'u32; sizeBytes: uint32 = 0'u32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "buffer_get_data_async", 2370287848)
  methodbind.ptrcall(self, [getPtr buffer, getPtr callback, getPtr offsetBytes, getPtr sizeBytes], Error)

proc bufferGetDeviceAddress*(self: RenderingDevice; buffer: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "buffer_get_device_address", 3917799429)
  methodbind.ptrcall(self, [getPtr buffer], uint64)

proc renderPipelineCreate*(self: RenderingDevice; shader: RID; framebufferFormat: int64; vertexFormat: int64; primitive: RenderingDevice_RenderPrimitive; rasterizationState: gdref RDPipelineRasterizationState; multisampleState: gdref RDPipelineMultisampleState; stencilState: gdref RDPipelineDepthStencilState; colorBlendState: gdref RDPipelineColorBlendState; dynamicStateFlags: set[RenderingDevice_PipelineDynamicStateFlags] = {}; forRenderPass: uint32 = 0'u32; specializationConstants: TypedArray[gdref RDPipelineSpecializationConstant] = newTypedArray[gdref RDPipelineSpecializationConstant]()): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "render_pipeline_create", 2385451958)
  methodbind.ptrcall(self, [getPtr shader, getPtr framebufferFormat, getPtr vertexFormat, getPtr primitive, getPtr rasterizationState, getPtr multisampleState, getPtr stencilState, getPtr colorBlendState, getPtr dynamicStateFlags, getPtr forRenderPass, getPtr specializationConstants], RID)

proc renderPipelineIsValid*(self: RenderingDevice; renderPipeline: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "render_pipeline_is_valid", 3521089500)
  methodbind.ptrcall(self, [getPtr renderPipeline], bool)

proc computePipelineCreate*(self: RenderingDevice; shader: RID; specializationConstants: TypedArray[gdref RDPipelineSpecializationConstant] = newTypedArray[gdref RDPipelineSpecializationConstant]()): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_pipeline_create", 1448838280)
  methodbind.ptrcall(self, [getPtr shader, getPtr specializationConstants], RID)

proc computePipelineIsValid*(self: RenderingDevice; computePipeline: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_pipeline_is_valid", 3521089500)
  methodbind.ptrcall(self, [getPtr computePipeline], bool)

proc screenGetWidth*(self: RenderingDevice; screen: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "screen_get_width", 1591665591)
  methodbind.ptrcall(self, [getPtr screen], int32)

proc screenGetHeight*(self: RenderingDevice; screen: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "screen_get_height", 1591665591)
  methodbind.ptrcall(self, [getPtr screen], int32)

proc screenGetFramebufferFormat*(self: RenderingDevice; screen: int32 = 0): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "screen_get_framebuffer_format", 1591665591)
  methodbind.ptrcall(self, [getPtr screen], int64)

proc drawListBeginForScreen*(self: RenderingDevice; screen: int32 = 0; clearColor: Color = color(0, 0, 0, 1)): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_begin_for_screen", 3988079995)
  methodbind.ptrcall(self, [getPtr screen, getPtr clearColor], int64)

proc drawListBegin*(self: RenderingDevice; framebuffer: RID; drawFlags: set[RenderingDevice_DrawFlags] = {}; clearColorValues: PackedColorArray = PackedColorArray(); clearDepthValue: Float = 1.0; clearStencilValue: uint32 = 0'u32; region: Rect2 = rect2(0, 0, 0, 0); breadcrumb: uint32 = 0'u32): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_begin", 1317926357)
  methodbind.ptrcall(self, [getPtr framebuffer, getPtr drawFlags, getPtr clearColorValues, getPtr clearDepthValue, getPtr clearStencilValue, getPtr region, getPtr breadcrumb], int64)

proc drawListBeginSplit*(self: RenderingDevice; framebuffer: RID; splits: uint32; initialColorAction: RenderingDevice_InitialAction; finalColorAction: RenderingDevice_FinalAction; initialDepthAction: RenderingDevice_InitialAction; finalDepthAction: RenderingDevice_FinalAction; clearColorValues: PackedColorArray = PackedColorArray(); clearDepth: Float = 1.0; clearStencil: uint32 = 0'u32; region: Rect2 = rect2(0, 0, 0, 0); storageTextures: TypedArray[RID] = newTypedArray[RID]()): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_begin_split", 2406300660)
  methodbind.ptrcall(self, [getPtr framebuffer, getPtr splits, getPtr initialColorAction, getPtr finalColorAction, getPtr initialDepthAction, getPtr finalDepthAction, getPtr clearColorValues, getPtr clearDepth, getPtr clearStencil, getPtr region, getPtr storageTextures], PackedInt64Array)

proc drawListSetBlendConstants*(self: RenderingDevice; drawList: int64; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_set_blend_constants", 2878471219)
  methodbind.ptrcall(self, [getPtr drawList, getPtr color], void)

proc drawListBindRenderPipeline*(self: RenderingDevice; drawList: int64; renderPipeline: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_bind_render_pipeline", 4040184819)
  methodbind.ptrcall(self, [getPtr drawList, getPtr renderPipeline], void)

proc drawListBindUniformSet*(self: RenderingDevice; drawList: int64; uniformSet: RID; setIndex: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_bind_uniform_set", 749655778)
  methodbind.ptrcall(self, [getPtr drawList, getPtr uniformSet, getPtr setIndex], void)

proc drawListBindVertexArray*(self: RenderingDevice; drawList: int64; vertexArray: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_bind_vertex_array", 4040184819)
  methodbind.ptrcall(self, [getPtr drawList, getPtr vertexArray], void)

proc drawListBindIndexArray*(self: RenderingDevice; drawList: int64; indexArray: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_bind_index_array", 4040184819)
  methodbind.ptrcall(self, [getPtr drawList, getPtr indexArray], void)

proc drawListSetPushConstant*(self: RenderingDevice; drawList: int64; buffer: PackedByteArray; sizeBytes: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_set_push_constant", 2772371345)
  methodbind.ptrcall(self, [getPtr drawList, getPtr buffer, getPtr sizeBytes], void)

proc drawListDraw*(self: RenderingDevice; drawList: int64; useIndices: bool; instances: uint32; proceduralVertexCount: uint32 = 0'u32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_draw", 4230067973)
  methodbind.ptrcall(self, [getPtr drawList, getPtr useIndices, getPtr instances, getPtr proceduralVertexCount], void)

proc drawListDrawIndirect*(self: RenderingDevice; drawList: int64; useIndices: bool; buffer: RID; offset: uint32 = 0'u32; drawCount: uint32 = 1'u32; stride: uint32 = 0'u32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_draw_indirect", 1092133571)
  methodbind.ptrcall(self, [getPtr drawList, getPtr useIndices, getPtr buffer, getPtr offset, getPtr drawCount, getPtr stride], void)

proc drawListEnableScissor*(self: RenderingDevice; drawList: int64; rect: Rect2 = rect2(0, 0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_enable_scissor", 244650101)
  methodbind.ptrcall(self, [getPtr drawList, getPtr rect], void)

proc drawListDisableScissor*(self: RenderingDevice; drawList: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_disable_scissor", 1286410249)
  methodbind.ptrcall(self, [getPtr drawList], void)

proc drawListSwitchToNextPass*(self: RenderingDevice): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_switch_to_next_pass", 2455072627)
  methodbind.ptrcall(self, [], int64)

proc drawListSwitchToNextPassSplit*(self: RenderingDevice; splits: uint32): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_switch_to_next_pass_split", 2865087369)
  methodbind.ptrcall(self, [getPtr splits], PackedInt64Array)

proc drawListEnd*(self: RenderingDevice): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_list_end", 3218959716)
  methodbind.ptrcall(self, [], void)

proc computeListBegin*(self: RenderingDevice): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_list_begin", 2455072627)
  methodbind.ptrcall(self, [], int64)

proc computeListBindComputePipeline*(self: RenderingDevice; computeList: int64; computePipeline: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_list_bind_compute_pipeline", 4040184819)
  methodbind.ptrcall(self, [getPtr computeList, getPtr computePipeline], void)

proc computeListSetPushConstant*(self: RenderingDevice; computeList: int64; buffer: PackedByteArray; sizeBytes: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_list_set_push_constant", 2772371345)
  methodbind.ptrcall(self, [getPtr computeList, getPtr buffer, getPtr sizeBytes], void)

proc computeListBindUniformSet*(self: RenderingDevice; computeList: int64; uniformSet: RID; setIndex: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_list_bind_uniform_set", 749655778)
  methodbind.ptrcall(self, [getPtr computeList, getPtr uniformSet, getPtr setIndex], void)

proc computeListDispatch*(self: RenderingDevice; computeList: int64; xGroups: uint32; yGroups: uint32; zGroups: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_list_dispatch", 4275841770)
  methodbind.ptrcall(self, [getPtr computeList, getPtr xGroups, getPtr yGroups, getPtr zGroups], void)

proc computeListDispatchIndirect*(self: RenderingDevice; computeList: int64; buffer: RID; offset: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_list_dispatch_indirect", 749655778)
  methodbind.ptrcall(self, [getPtr computeList, getPtr buffer, getPtr offset], void)

proc computeListAddBarrier*(self: RenderingDevice; computeList: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_list_add_barrier", 1286410249)
  methodbind.ptrcall(self, [getPtr computeList], void)

proc computeListEnd*(self: RenderingDevice): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "compute_list_end", 3218959716)
  methodbind.ptrcall(self, [], void)

proc freeRid*(self: RenderingDevice; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc captureTimestamp*(self: RenderingDevice; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "capture_timestamp", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getCapturedTimestampsCount*(self: RenderingDevice): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_captured_timestamps_count", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc getCapturedTimestampsFrame*(self: RenderingDevice): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_captured_timestamps_frame", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getCapturedTimestampGpuTime*(self: RenderingDevice; index: uint32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_captured_timestamp_gpu_time", 923996154)
  methodbind.ptrcall(self, [getPtr index], uint64)

proc getCapturedTimestampCpuTime*(self: RenderingDevice; index: uint32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_captured_timestamp_cpu_time", 923996154)
  methodbind.ptrcall(self, [getPtr index], uint64)

proc getCapturedTimestampName*(self: RenderingDevice; index: uint32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_captured_timestamp_name", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc hasFeature*(self: RenderingDevice; feature: RenderingDevice_Features): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "has_feature", 1772728326)
  methodbind.ptrcall(self, [getPtr feature], bool)

proc limitGet*(self: RenderingDevice; limit: RenderingDevice_Limit): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "limit_get", 1559202131)
  methodbind.ptrcall(self, [getPtr limit], uint64)

proc getFrameDelay*(self: RenderingDevice): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_frame_delay", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc submit*(self: RenderingDevice): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "submit", 3218959716)
  methodbind.ptrcall(self, [], void)

proc sync*(self: RenderingDevice): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "sync", 3218959716)
  methodbind.ptrcall(self, [], void)

proc barrier*(self: RenderingDevice; `from`: set[RenderingDevice_BarrierMask] = {barrierMaskVertex, barrierMaskCompute, barrierMaskTransfer, barrierMaskFragment}; to: set[RenderingDevice_BarrierMask] = {barrierMaskVertex, barrierMaskCompute, barrierMaskTransfer, barrierMaskFragment}): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "barrier", 3718155691)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], void)

proc fullBarrier*(self: RenderingDevice): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "full_barrier", 3218959716)
  methodbind.ptrcall(self, [], void)

proc createLocalDevice*(self: RenderingDevice): RenderingDevice =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "create_local_device", 2846302423)
  methodbind.ptrcall(self, [], RenderingDevice)

proc setResourceName*(self: RenderingDevice; id: RID; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "set_resource_name", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr name], void)

proc drawCommandBeginLabel*(self: RenderingDevice; name: String; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_command_begin_label", 1636512886)
  methodbind.ptrcall(self, [getPtr name, getPtr color], void)

proc drawCommandInsertLabel*(self: RenderingDevice; name: String; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_command_insert_label", 1636512886)
  methodbind.ptrcall(self, [getPtr name, getPtr color], void)

proc drawCommandEndLabel*(self: RenderingDevice): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "draw_command_end_label", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getDeviceVendorName*(self: RenderingDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_device_vendor_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDeviceName*(self: RenderingDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_device_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDevicePipelineCacheUuid*(self: RenderingDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_device_pipeline_cache_uuid", 201670096)
  methodbind.ptrcall(self, [], String)

proc getMemoryUsage*(self: RenderingDevice; `type`: RenderingDevice_MemoryType): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_memory_usage", 251690689)
  methodbind.ptrcall(self, [getPtr `type`], uint64)

proc getDriverResource*(self: RenderingDevice; resource: RenderingDevice_DriverResource; rid: RID; index: uint64): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_driver_resource", 501815484)
  methodbind.ptrcall(self, [getPtr resource, getPtr rid, getPtr index], uint64)

proc getPerfReport*(self: RenderingDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_perf_report", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDriverAndDeviceMemoryReport*(self: RenderingDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_driver_and_device_memory_report", 201670096)
  methodbind.ptrcall(self, [], String)

proc getTrackedObjectName*(self: RenderingDevice; typeIndex: uint32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_tracked_object_name", 844755477)
  methodbind.ptrcall(self, [getPtr typeIndex], String)

proc getTrackedObjectTypeCount*(self: RenderingDevice): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_tracked_object_type_count", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getDriverTotalMemory*(self: RenderingDevice): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_driver_total_memory", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getDriverAllocationCount*(self: RenderingDevice): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_driver_allocation_count", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getDriverMemoryByObjectType*(self: RenderingDevice; `type`: uint32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_driver_memory_by_object_type", 923996154)
  methodbind.ptrcall(self, [getPtr `type`], uint64)

proc getDriverAllocsByObjectType*(self: RenderingDevice; `type`: uint32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_driver_allocs_by_object_type", 923996154)
  methodbind.ptrcall(self, [getPtr `type`], uint64)

proc getDeviceTotalMemory*(self: RenderingDevice): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_device_total_memory", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getDeviceAllocationCount*(self: RenderingDevice): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_device_allocation_count", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getDeviceMemoryByObjectType*(self: RenderingDevice; `type`: uint32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_device_memory_by_object_type", 923996154)
  methodbind.ptrcall(self, [getPtr `type`], uint64)

proc getDeviceAllocsByObjectType*(self: RenderingDevice; `type`: uint32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingDevice, "get_device_allocs_by_object_type", 923996154)
  methodbind.ptrcall(self, [getPtr `type`], uint64)
