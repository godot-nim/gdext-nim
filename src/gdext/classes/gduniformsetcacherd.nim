{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getCache*(_: typedesc[UniformSetCacheRD]; shader: RID; set: uint32; uniforms: TypedArray[RDUniform]): RID =
  expandMethodBind(className UniformSetCacheRD, "get_cache", 658571723)
  var ret: encoded RID
  methodbind.ptrcall([getPtr shader, getPtr set, getPtr uniforms], addr ret)
  (addr ret).decode_result(RID)

const UniformSetCacheRD_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[UniformSetCacheRD]): Table[string, string] = UniformSetCacheRD_vmap