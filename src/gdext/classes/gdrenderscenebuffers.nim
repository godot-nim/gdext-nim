{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RenderSceneBuffers, RefCounted)

proc configure*(self: RenderSceneBuffers; config: gdref RenderSceneBuffersConfiguration): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffers, "configure", 3072623270)
  methodbind.ptrcall(self, [getPtr config], void)
