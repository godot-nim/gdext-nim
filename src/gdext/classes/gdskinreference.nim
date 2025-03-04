{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getSkeleton*(self: SkinReference): RID =
  expandMethodBind(className SkinReference, "get_skeleton", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getSkin*(self: SkinReference): gdref Skin =
  expandMethodBind(className SkinReference, "get_skin", 2074563878)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Skin)

const SkinReference_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkinReference]): Table[string, string] = SkinReference_vmap