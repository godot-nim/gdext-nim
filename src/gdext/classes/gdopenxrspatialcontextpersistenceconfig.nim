{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrstructurebase; export gdopenxrstructurebase

expandOnClassImported(OpenXRSpatialContextPersistenceConfig, OpenXRStructureBase)

proc addPersistenceContext*(self: OpenXRSpatialContextPersistenceConfig; persistenceContext: RID): void =
  expandMethodBind(className OpenXRSpatialContextPersistenceConfig, "add_persistence_context", 2722037293)
  methodbind.ptrcall(self, [getPtr persistenceContext])

proc removePersistenceContext*(self: OpenXRSpatialContextPersistenceConfig; persistenceContext: RID): void =
  expandMethodBind(className OpenXRSpatialContextPersistenceConfig, "remove_persistence_context", 2722037293)
  methodbind.ptrcall(self, [getPtr persistenceContext])
