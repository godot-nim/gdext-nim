{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getDatetimeDictFromUnixTime*(self: Time; unixTimeVal: int64): Dictionary =
  expandMethodBind(className Time, "get_datetime_dict_from_unix_time", 3485342025)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr unixTimeVal], addr ret)
  (addr ret).decode_result(Dictionary)

proc getDateDictFromUnixTime*(self: Time; unixTimeVal: int64): Dictionary =
  expandMethodBind(className Time, "get_date_dict_from_unix_time", 3485342025)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr unixTimeVal], addr ret)
  (addr ret).decode_result(Dictionary)

proc getTimeDictFromUnixTime*(self: Time; unixTimeVal: int64): Dictionary =
  expandMethodBind(className Time, "get_time_dict_from_unix_time", 3485342025)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr unixTimeVal], addr ret)
  (addr ret).decode_result(Dictionary)

proc getDatetimeStringFromUnixTime*(self: Time; unixTimeVal: int64; useSpace: bool = false): String =
  expandMethodBind(className Time, "get_datetime_string_from_unix_time", 2311239925)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr unixTimeVal, getPtr useSpace], addr ret)
  (addr ret).decode_result(String)

proc getDateStringFromUnixTime*(self: Time; unixTimeVal: int64): String =
  expandMethodBind(className Time, "get_date_string_from_unix_time", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr unixTimeVal], addr ret)
  (addr ret).decode_result(String)

proc getTimeStringFromUnixTime*(self: Time; unixTimeVal: int64): String =
  expandMethodBind(className Time, "get_time_string_from_unix_time", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr unixTimeVal], addr ret)
  (addr ret).decode_result(String)

proc getDatetimeDictFromDatetimeString*(self: Time; datetime: String; weekday: bool): Dictionary =
  expandMethodBind(className Time, "get_datetime_dict_from_datetime_string", 3253569256)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr datetime, getPtr weekday], addr ret)
  (addr ret).decode_result(Dictionary)

proc getDatetimeStringFromDatetimeDict*(self: Time; datetime: Dictionary; useSpace: bool): String =
  expandMethodBind(className Time, "get_datetime_string_from_datetime_dict", 1898123706)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr datetime, getPtr useSpace], addr ret)
  (addr ret).decode_result(String)

proc getUnixTimeFromDatetimeDict*(self: Time; datetime: Dictionary): int64 =
  expandMethodBind(className Time, "get_unix_time_from_datetime_dict", 3021115443)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr datetime], addr ret)
  (addr ret).decode_result(int64)

proc getUnixTimeFromDatetimeString*(self: Time; datetime: String): int64 =
  expandMethodBind(className Time, "get_unix_time_from_datetime_string", 1321353865)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr datetime], addr ret)
  (addr ret).decode_result(int64)

proc getOffsetStringFromOffsetMinutes*(self: Time; offsetMinutes: int64): String =
  expandMethodBind(className Time, "get_offset_string_from_offset_minutes", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr offsetMinutes], addr ret)
  (addr ret).decode_result(String)

proc getDatetimeDictFromSystem*(self: Time; utc: bool = false): Dictionary =
  expandMethodBind(className Time, "get_datetime_dict_from_system", 205769976)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr utc], addr ret)
  (addr ret).decode_result(Dictionary)

proc getDateDictFromSystem*(self: Time; utc: bool = false): Dictionary =
  expandMethodBind(className Time, "get_date_dict_from_system", 205769976)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr utc], addr ret)
  (addr ret).decode_result(Dictionary)

proc getTimeDictFromSystem*(self: Time; utc: bool = false): Dictionary =
  expandMethodBind(className Time, "get_time_dict_from_system", 205769976)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr utc], addr ret)
  (addr ret).decode_result(Dictionary)

proc getDatetimeStringFromSystem*(self: Time; utc: bool = false; useSpace: bool = false): String =
  expandMethodBind(className Time, "get_datetime_string_from_system", 1136425492)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr utc, getPtr useSpace], addr ret)
  (addr ret).decode_result(String)

proc getDateStringFromSystem*(self: Time; utc: bool = false): String =
  expandMethodBind(className Time, "get_date_string_from_system", 1162154673)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr utc], addr ret)
  (addr ret).decode_result(String)

proc getTimeStringFromSystem*(self: Time; utc: bool = false): String =
  expandMethodBind(className Time, "get_time_string_from_system", 1162154673)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr utc], addr ret)
  (addr ret).decode_result(String)

proc getTimeZoneFromSystem*(self: Time): Dictionary =
  expandMethodBind(className Time, "get_time_zone_from_system", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getUnixTimeFromSystem*(self: Time): float64 =
  expandMethodBind(className Time, "get_unix_time_from_system", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getTicksMsec*(self: Time): uint64 =
  expandMethodBind(className Time, "get_ticks_msec", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getTicksUsec*(self: Time): uint64 =
  expandMethodBind(className Time, "get_ticks_usec", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

const Time_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Time]): Table[string, string] = Time_vmap