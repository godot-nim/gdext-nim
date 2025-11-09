{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(UniformSetCacheRD, Object)

proc getCache*(_: typedesc[UniformSetCacheRD]; shader: RID; set: uint32; uniforms: TypedArray[gdref RDUniform]): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UniformSetCacheRD, "get_cache", 658571723)
  methodbind.ptrcall([getPtr shader, getPtr set, getPtr uniforms], RID)
