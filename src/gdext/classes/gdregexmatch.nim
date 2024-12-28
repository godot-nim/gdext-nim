{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getSubject*(self: RegExMatch): String =
  expandMethodBind(className RegExMatch, "get_subject", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getGroupCount*(self: RegExMatch): int32 =
  expandMethodBind(className RegExMatch, "get_group_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getNames*(self: RegExMatch): Dictionary =
  expandMethodBind(className RegExMatch, "get_names", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getStrings*(self: RegExMatch): PackedStringArray =
  expandMethodBind(className RegExMatch, "get_strings", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getString*(self: RegExMatch; name: Variant = default(Variant)): String =
  expandMethodBind(className RegExMatch, "get_string", 687115856)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(String)

proc getStart*(self: RegExMatch; name: Variant = default(Variant)): int32 =
  expandMethodBind(className RegExMatch, "get_start", 490464691)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(int32)

proc getEnd*(self: RegExMatch; name: Variant = default(Variant)): int32 =
  expandMethodBind(className RegExMatch, "get_end", 490464691)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(int32)

template subject*(self: RegExMatch): untyped = self.getSubject()

template names*(self: RegExMatch): untyped = self.getNames()

template strings*(self: RegExMatch): untyped = self.getStrings()

const RegExMatch_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RegExMatch]): Table[string, string] = RegExMatch_vmap