{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(SkinReference, RefCounted)

proc getSkeleton*(self: SkinReference): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkinReference, "get_skeleton", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getSkin*(self: SkinReference): gdref Skin =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkinReference, "get_skin", 2074563878)
  methodbind.ptrcall(self, [], gdref Skin)
