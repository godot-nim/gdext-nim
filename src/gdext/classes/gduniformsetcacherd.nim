{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getCache*(_: UniformSetCacheRd; shader: Rid; set: uint32; uniforms: TypedArray[gdref RdUniform]): Rid =
  expandMethodBind(className UniformSetCacheRd, "get_cache", 658571723)
  var `?param` = [getPtr shader, getPtr set, getPtr uniforms]
  var ret: encoded Rid
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

const UniformSetCacheRd_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[UniformSetCacheRd]): Table[string, string] = UniformSetCacheRd_vmap