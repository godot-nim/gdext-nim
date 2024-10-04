{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getSkeleton*(self: SkinReference): Rid =
  expandMethodBind(className SkinReference, "get_skeleton", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getSkin*(self: SkinReference): gdref Skin =
  expandMethodBind(className SkinReference, "get_skin", 2074563878)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Skin)

const SkinReference_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkinReference]): Table[string, string] = SkinReference_vmap