{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getCacheMultipass*(_: FramebufferCacheRd; textures: TypedArray[Rid]; passes: TypedArray[RdFramebufferPass]; views: uint32): Rid =
  expandMethodBind(className FramebufferCacheRd, "get_cache_multipass", 3437881813)
  var `?param` = [getPtr textures, getPtr passes, getPtr views]
  var ret: encoded Rid
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

const FramebufferCacheRd_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FramebufferCacheRd]): Table[string, string] = FramebufferCacheRd_vmap