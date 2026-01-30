{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRSpatialEntityExtension, OpenXRExtensionWrapper)

proc supportsCapability*(self: OpenXRSpatialEntityExtension; capability: OpenXRSpatialEntityExtension_Capability): bool =
  expandMethodBind(className OpenXRSpatialEntityExtension, "supports_capability", 1940837202)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr capability], addr ret)
  (addr ret).decode_result(bool)

proc supportsComponentType*(self: OpenXRSpatialEntityExtension; capability: OpenXRSpatialEntityExtension_Capability; componentType: OpenXRSpatialEntityExtension_ComponentType): bool =
  expandMethodBind(className OpenXRSpatialEntityExtension, "supports_component_type", 26842779)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr capability, getPtr componentType], addr ret)
  (addr ret).decode_result(bool)

proc createSpatialContext*(self: OpenXRSpatialEntityExtension; capabilityConfigurations: Array[gdref OpenXRSpatialCapabilityConfigurationBaseHeader]; next: gdref OpenXRStructureBase = default gdref OpenXRStructureBase; userCallback: Callable = callable()): gdref OpenXRFutureResult =
  expandMethodBind(className OpenXRSpatialEntityExtension, "create_spatial_context", 1874506473)
  nilCheck capabilityConfigurations
  var ret: encoded gdref OpenXRFutureResult
  methodbind.ptrcall(self, [getPtr capabilityConfigurations, getPtr next, getPtr userCallback], addr ret)
  (addr ret).decode_result(gdref OpenXRFutureResult)

proc getSpatialContextReady*(self: OpenXRSpatialEntityExtension; spatialContext: RID): bool =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_spatial_context_ready", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr spatialContext], addr ret)
  (addr ret).decode_result(bool)

proc freeSpatialContext*(self: OpenXRSpatialEntityExtension; spatialContext: RID): void =
  expandMethodBind(className OpenXRSpatialEntityExtension, "free_spatial_context", 2722037293)
  methodbind.ptrcall(self, [getPtr spatialContext])

proc getSpatialContextHandle*(self: OpenXRSpatialEntityExtension; spatialContext: RID): uint64 =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_spatial_context_handle", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr spatialContext], addr ret)
  (addr ret).decode_result(uint64)

proc discoverSpatialEntities*(self: OpenXRSpatialEntityExtension; spatialContext: RID; componentTypes: PackedInt64Array; next: gdref OpenXRStructureBase = default gdref OpenXRStructureBase; userCallback: Callable = callable()): gdref OpenXRFutureResult =
  expandMethodBind(className OpenXRSpatialEntityExtension, "discover_spatial_entities", 2252833536)
  var ret: encoded gdref OpenXRFutureResult
  methodbind.ptrcall(self, [getPtr spatialContext, getPtr componentTypes, getPtr next, getPtr userCallback], addr ret)
  (addr ret).decode_result(gdref OpenXRFutureResult)

proc updateSpatialEntities*(self: OpenXRSpatialEntityExtension; spatialContext: RID; entities: Array[RID]; componentTypes: PackedInt64Array; next: gdref OpenXRStructureBase = default gdref OpenXRStructureBase): RID =
  expandMethodBind(className OpenXRSpatialEntityExtension, "update_spatial_entities", 3446086438)
  nilCheck entities
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr spatialContext, getPtr entities, getPtr componentTypes, getPtr next], addr ret)
  (addr ret).decode_result(RID)

proc freeSpatialSnapshot*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID): void =
  expandMethodBind(className OpenXRSpatialEntityExtension, "free_spatial_snapshot", 2722037293)
  methodbind.ptrcall(self, [getPtr spatialSnapshot])

proc getSpatialSnapshotHandle*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID): uint64 =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_spatial_snapshot_handle", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr spatialSnapshot], addr ret)
  (addr ret).decode_result(uint64)

proc getSpatialSnapshotContext*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID): RID =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_spatial_snapshot_context", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr spatialSnapshot], addr ret)
  (addr ret).decode_result(RID)

proc querySnapshot*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID; componentData: Array[gdref OpenXRSpatialComponentData]; next: gdref OpenXRStructureBase = default gdref OpenXRStructureBase): bool =
  expandMethodBind(className OpenXRSpatialEntityExtension, "query_snapshot", 641015484)
  nilCheck componentData
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr spatialSnapshot, getPtr componentData, getPtr next], addr ret)
  (addr ret).decode_result(bool)

proc getString*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID; bufferId: uint64): String =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_string", 1464764419)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr spatialSnapshot, getPtr bufferId], addr ret)
  (addr ret).decode_result(String)

proc getUint8Buffer*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID; bufferId: uint64): PackedByteArray =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_uint8_buffer", 3570600051)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr spatialSnapshot, getPtr bufferId], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getUint16Buffer*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID; bufferId: uint64): PackedInt32Array =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_uint16_buffer", 3393655756)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr spatialSnapshot, getPtr bufferId], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getUint32Buffer*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID; bufferId: uint64): PackedInt32Array =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_uint32_buffer", 3393655756)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr spatialSnapshot, getPtr bufferId], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getFloatBuffer*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID; bufferId: uint64): PackedFloat32Array =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_float_buffer", 2313216651)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, [getPtr spatialSnapshot, getPtr bufferId], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc getVector2Buffer*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID; bufferId: uint64): PackedVector2Array =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_vector2_buffer", 110850971)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr spatialSnapshot, getPtr bufferId], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getVector3Buffer*(self: OpenXRSpatialEntityExtension; spatialSnapshot: RID; bufferId: uint64): PackedVector3Array =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_vector3_buffer", 1166453791)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr spatialSnapshot, getPtr bufferId], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc findSpatialEntity*(self: OpenXRSpatialEntityExtension; entityId: uint64): RID =
  expandMethodBind(className OpenXRSpatialEntityExtension, "find_spatial_entity", 937000113)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr entityId], addr ret)
  (addr ret).decode_result(RID)

proc addSpatialEntity*(self: OpenXRSpatialEntityExtension; spatialContext: RID; entityId: uint64; entity: uint64): RID =
  expandMethodBind(className OpenXRSpatialEntityExtension, "add_spatial_entity", 2256026069)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr spatialContext, getPtr entityId, getPtr entity], addr ret)
  (addr ret).decode_result(RID)

proc makeSpatialEntity*(self: OpenXRSpatialEntityExtension; spatialContext: RID; entityId: uint64): RID =
  expandMethodBind(className OpenXRSpatialEntityExtension, "make_spatial_entity", 2233757277)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr spatialContext, getPtr entityId], addr ret)
  (addr ret).decode_result(RID)

proc getSpatialEntityId*(self: OpenXRSpatialEntityExtension; entity: RID): uint64 =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_spatial_entity_id", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr entity], addr ret)
  (addr ret).decode_result(uint64)

proc getSpatialEntityContext*(self: OpenXRSpatialEntityExtension; entity: RID): RID =
  expandMethodBind(className OpenXRSpatialEntityExtension, "get_spatial_entity_context", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr entity], addr ret)
  (addr ret).decode_result(RID)

proc freeSpatialEntity*(self: OpenXRSpatialEntityExtension; entity: RID): void =
  expandMethodBind(className OpenXRSpatialEntityExtension, "free_spatial_entity", 2722037293)
  methodbind.ptrcall(self, [getPtr entity])
