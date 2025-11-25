{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(FramebufferCacheRD, Object)

proc getCacheMultipass*(_: typedesc[FramebufferCacheRD]; textures: Array[RID]; passes: Array[gdref RDFramebufferPass]; views: uint32): RID =
  expandMethodBind(className FramebufferCacheRD, "get_cache_multipass", 3437881813)
  nilCheck textures
  nilCheck passes
  var ret: encoded RID
  methodbind.ptrcall([getPtr textures, getPtr passes, getPtr views], addr ret)
  (addr ret).decode_result(RID)
