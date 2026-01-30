{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRSpatialAnchorCapability, OpenXRExtensionWrapper)

proc isSpatialAnchorSupported*(self: OpenXRSpatialAnchorCapability): bool =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "is_spatial_anchor_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isSpatialPersistenceSupported*(self: OpenXRSpatialAnchorCapability): bool =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "is_spatial_persistence_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isPersistenceScopeSupported*(self: OpenXRSpatialAnchorCapability; scope: OpenXRSpatialAnchorCapability_PersistenceScope): bool =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "is_persistence_scope_supported", 3651771626)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr scope], addr ret)
  (addr ret).decode_result(bool)

proc createPersistenceContext*(self: OpenXRSpatialAnchorCapability; scope: OpenXRSpatialAnchorCapability_PersistenceScope; userCallback: Callable = callable()): gdref OpenXRFutureResult =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "create_persistence_context", 856276630)
  var ret: encoded gdref OpenXRFutureResult
  methodbind.ptrcall(self, [getPtr scope, getPtr userCallback], addr ret)
  (addr ret).decode_result(gdref OpenXRFutureResult)

proc getPersistenceContextHandle*(self: OpenXRSpatialAnchorCapability; persistenceContext: RID): uint64 =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "get_persistence_context_handle", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr persistenceContext], addr ret)
  (addr ret).decode_result(uint64)

proc freePersistenceContext*(self: OpenXRSpatialAnchorCapability; persistenceContext: RID): void =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "free_persistence_context", 2722037293)
  methodbind.ptrcall(self, [getPtr persistenceContext])

proc createNewAnchor*(self: OpenXRSpatialAnchorCapability; transform: Transform3D; spatialContext: RID = RID()): gdref OpenXRAnchorTracker =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "create_new_anchor", 607100373)
  var ret: encoded gdref OpenXRAnchorTracker
  methodbind.ptrcall(self, [getPtr transform, getPtr spatialContext], addr ret)
  (addr ret).decode_result(gdref OpenXRAnchorTracker)

proc removeAnchor*(self: OpenXRSpatialAnchorCapability; anchorTracker: gdref OpenXRAnchorTracker): void =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "remove_anchor", 3579451518)
  methodbind.ptrcall(self, [getPtr anchorTracker])

proc persistAnchor*(self: OpenXRSpatialAnchorCapability; anchorTracker: gdref OpenXRAnchorTracker; persistenceContext: RID = RID(); userCallback: Callable = callable()): gdref OpenXRFutureResult =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "persist_anchor", 4244202513)
  var ret: encoded gdref OpenXRFutureResult
  methodbind.ptrcall(self, [getPtr anchorTracker, getPtr persistenceContext, getPtr userCallback], addr ret)
  (addr ret).decode_result(gdref OpenXRFutureResult)

proc unpersistAnchor*(self: OpenXRSpatialAnchorCapability; anchorTracker: gdref OpenXRAnchorTracker; persistenceContext: RID = RID(); userCallback: Callable = callable()): gdref OpenXRFutureResult =
  expandMethodBind(className OpenXRSpatialAnchorCapability, "unpersist_anchor", 4244202513)
  var ret: encoded gdref OpenXRFutureResult
  methodbind.ptrcall(self, [getPtr anchorTracker, getPtr persistenceContext, getPtr userCallback], addr ret)
  (addr ret).decode_result(gdref OpenXRFutureResult)
