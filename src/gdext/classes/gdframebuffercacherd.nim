{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getCacheMultipass*(_: typedesc[FramebufferCacheRD]; textures: TypedArray[RID]; passes: TypedArray[gdref RDFramebufferPass]; views: uint32): RID =
  expandMethodBind(className FramebufferCacheRD, "get_cache_multipass", 3437881813)
  var ret: encoded RID
  methodbind.ptrcall([getPtr textures, getPtr passes, getPtr views], addr ret)
  (addr ret).decode_result(RID)
