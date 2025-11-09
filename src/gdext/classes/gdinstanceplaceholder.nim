{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(InstancePlaceholder, Node)

proc getStoredValues*(self: InstancePlaceholder; withOrder: bool = false): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InstancePlaceholder, "get_stored_values", 2230153369)
  methodbind.ptrcall(self, [getPtr withOrder], Dictionary)

proc createInstance*(self: InstancePlaceholder; replace: bool = false; customScene: gdref PackedScene = default gdref PackedScene): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InstancePlaceholder, "create_instance", 3794612210)
  methodbind.ptrcall(self, [getPtr replace, getPtr customScene], Node)

proc getInstancePath*(self: InstancePlaceholder): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InstancePlaceholder, "get_instance_path", 201670096)
  methodbind.ptrcall(self, [], String)
