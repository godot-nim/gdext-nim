{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc configure*(self: RenderSceneBuffers; config: gdref RenderSceneBuffersConfiguration): void =
  expandMethodBind(className RenderSceneBuffers, "configure", 3072623270)
  var `?param` = [getPtr config]
  methodbind.ptrcall(self, addr `?param`[0])

const RenderSceneBuffers_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderSceneBuffers]): Table[string, string] = RenderSceneBuffers_vmap