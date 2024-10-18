{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

proc setUseSync*(self: AnimationNodeSync; enable: bool): void =
  expandMethodBind(className AnimationNodeSync, "set_use_sync", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingSync*(self: AnimationNodeSync): bool =
  expandMethodBind(className AnimationNodeSync, "is_using_sync", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template sync*(self: AnimationNodeSync): untyped = self.isUsingSync()
template `sync=`*(self: AnimationNodeSync; value) = self.setUseSync(value)

const AnimationNodeSync_vmap =
  AnimationNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeSync]): Table[string, string] = AnimationNodeSync_vmap