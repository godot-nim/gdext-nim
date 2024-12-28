{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc configure*(self: RenderSceneBuffers; config: gdref RenderSceneBuffersConfiguration): void =
  expandMethodBind(className RenderSceneBuffers, "configure", 3072623270)
  methodbind.ptrcall(self, [getPtr config])

const RenderSceneBuffers_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderSceneBuffers]): Table[string, string] = RenderSceneBuffers_vmap