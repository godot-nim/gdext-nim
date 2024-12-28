{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getCacheMultipass*(_: typedesc[FramebufferCacheRD]; textures: TypedArray[RID]; passes: TypedArray[RDFramebufferPass]; views: uint32): RID =
  expandMethodBind(className FramebufferCacheRD, "get_cache_multipass", 3437881813)
  var ret: encoded RID
  methodbind.ptrcall([getPtr textures, getPtr passes, getPtr views], addr ret)
  (addr ret).decode_result(RID)

const FramebufferCacheRD_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FramebufferCacheRD]): Table[string, string] = FramebufferCacheRD_vmap