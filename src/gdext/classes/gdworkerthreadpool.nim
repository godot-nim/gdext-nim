{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(WorkerThreadPool, Object)

proc addTask*(self: WorkerThreadPool; action: Callable; highPriority: bool = false; description: String = newGdString()): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "add_task", 3745067146)
  methodbind.ptrcall(self, [getPtr action, getPtr highPriority, getPtr description], int64)

proc isTaskCompleted*(self: WorkerThreadPool; taskId: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "is_task_completed", 1116898809)
  methodbind.ptrcall(self, [getPtr taskId], bool)

proc waitForTaskCompletion*(self: WorkerThreadPool; taskId: int64): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "wait_for_task_completion", 844576869)
  methodbind.ptrcall(self, [getPtr taskId], Error)

proc getCallerTaskId*(self: WorkerThreadPool): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "get_caller_task_id", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc addGroupTask*(self: WorkerThreadPool; action: Callable; elements: int32; tasksNeeded: int32 = -1; highPriority: bool = false; description: String = newGdString()): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "add_group_task", 1801953219)
  methodbind.ptrcall(self, [getPtr action, getPtr elements, getPtr tasksNeeded, getPtr highPriority, getPtr description], int64)

proc isGroupTaskCompleted*(self: WorkerThreadPool; groupId: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "is_group_task_completed", 1116898809)
  methodbind.ptrcall(self, [getPtr groupId], bool)

proc getGroupProcessedElementCount*(self: WorkerThreadPool; groupId: int64): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "get_group_processed_element_count", 923996154)
  methodbind.ptrcall(self, [getPtr groupId], uint32)

proc waitForGroupTaskCompletion*(self: WorkerThreadPool; groupId: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "wait_for_group_task_completion", 1286410249)
  methodbind.ptrcall(self, [getPtr groupId], void)

proc getCallerGroupId*(self: WorkerThreadPool): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorkerThreadPool, "get_caller_group_id", 3905245786)
  methodbind.ptrcall(self, [], int64)
