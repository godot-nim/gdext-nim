{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(FramebufferCacheRD, Object)

proc getCacheMultipass*(_: typedesc[FramebufferCacheRD]; textures: TypedArray[RID]; passes: TypedArray[gdref RDFramebufferPass]; views: uint32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FramebufferCacheRD, "get_cache_multipass", 3437881813)
  methodbind.ptrcall([getPtr textures, getPtr passes, getPtr views], RID)
