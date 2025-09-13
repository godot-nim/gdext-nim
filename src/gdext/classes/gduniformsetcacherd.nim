{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(UniformSetCacheRD, Object)

proc getCache*(_: typedesc[UniformSetCacheRD]; shader: RID; set: uint32; uniforms: TypedArray[gdref RDUniform]): RID =
  expandMethodBind(className UniformSetCacheRD, "get_cache", 658571723)
  var ret: encoded RID
  methodbind.ptrcall([getPtr shader, getPtr set, getPtr uniforms], addr ret)
  (addr ret).decode_result(RID)
