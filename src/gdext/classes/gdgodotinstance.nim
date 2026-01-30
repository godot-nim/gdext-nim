{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(GodotInstance, Object)

proc start*(self: GodotInstance): bool =
  expandMethodBind(className GodotInstance, "start", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isStarted*(self: GodotInstance): bool =
  expandMethodBind(className GodotInstance, "is_started", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc iteration*(self: GodotInstance): bool =
  expandMethodBind(className GodotInstance, "iteration", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc focusIn*(self: GodotInstance): void =
  expandMethodBind(className GodotInstance, "focus_in", 3218959716)
  methodbind.ptrcall(self, [])

proc focusOut*(self: GodotInstance): void =
  expandMethodBind(className GodotInstance, "focus_out", 3218959716)
  methodbind.ptrcall(self, [])

proc pause*(self: GodotInstance): void =
  expandMethodBind(className GodotInstance, "pause", 3218959716)
  methodbind.ptrcall(self, [])

proc resume*(self: GodotInstance): void =
  expandMethodBind(className GodotInstance, "resume", 3218959716)
  methodbind.ptrcall(self, [])
