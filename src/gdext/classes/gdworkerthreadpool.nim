{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc addTask*(self: WorkerThreadPool; action: Callable; highPriority: bool = false; description: String = gdstring""): int64 =
  expandMethodBind(className WorkerThreadPool, "add_task", 3745067146)
  var `?param` = [getPtr action, getPtr highPriority, getPtr description]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc isTaskCompleted*(self: WorkerThreadPool; taskId: int64): bool =
  expandMethodBind(className WorkerThreadPool, "is_task_completed", 1116898809)
  var `?param` = [getPtr taskId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc waitForTaskCompletion*(self: WorkerThreadPool; taskId: int64): Error =
  expandMethodBind(className WorkerThreadPool, "wait_for_task_completion", 844576869)
  var `?param` = [getPtr taskId]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc addGroupTask*(self: WorkerThreadPool; action: Callable; elements: int32; tasksNeeded: int32 = -1; highPriority: bool = false; description: String = gdstring""): int64 =
  expandMethodBind(className WorkerThreadPool, "add_group_task", 1801953219)
  var `?param` = [getPtr action, getPtr elements, getPtr tasksNeeded, getPtr highPriority, getPtr description]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc isGroupTaskCompleted*(self: WorkerThreadPool; groupId: int64): bool =
  expandMethodBind(className WorkerThreadPool, "is_group_task_completed", 1116898809)
  var `?param` = [getPtr groupId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getGroupProcessedElementCount*(self: WorkerThreadPool; groupId: int64): uint32 =
  expandMethodBind(className WorkerThreadPool, "get_group_processed_element_count", 923996154)
  var `?param` = [getPtr groupId]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc waitForGroupTaskCompletion*(self: WorkerThreadPool; groupId: int64): void =
  expandMethodBind(className WorkerThreadPool, "wait_for_group_task_completion", 1286410249)
  var `?param` = [getPtr groupId]
  methodbind.ptrcall(self, addr `?param`[0])

const WorkerThreadPool_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WorkerThreadPool]): Table[string, string] = WorkerThreadPool_vmap