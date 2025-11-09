{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(Time, Object)

proc getDatetimeDictFromUnixTime*(self: Time; unixTimeVal: int64): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_datetime_dict_from_unix_time", 3485342025)
  methodbind.ptrcall(self, [getPtr unixTimeVal], Dictionary)

proc getDateDictFromUnixTime*(self: Time; unixTimeVal: int64): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_date_dict_from_unix_time", 3485342025)
  methodbind.ptrcall(self, [getPtr unixTimeVal], Dictionary)

proc getTimeDictFromUnixTime*(self: Time; unixTimeVal: int64): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_time_dict_from_unix_time", 3485342025)
  methodbind.ptrcall(self, [getPtr unixTimeVal], Dictionary)

proc getDatetimeStringFromUnixTime*(self: Time; unixTimeVal: int64; useSpace: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_datetime_string_from_unix_time", 2311239925)
  methodbind.ptrcall(self, [getPtr unixTimeVal, getPtr useSpace], String)

proc getDateStringFromUnixTime*(self: Time; unixTimeVal: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_date_string_from_unix_time", 844755477)
  methodbind.ptrcall(self, [getPtr unixTimeVal], String)

proc getTimeStringFromUnixTime*(self: Time; unixTimeVal: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_time_string_from_unix_time", 844755477)
  methodbind.ptrcall(self, [getPtr unixTimeVal], String)

proc getDatetimeDictFromDatetimeString*(self: Time; datetime: String; weekday: bool): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_datetime_dict_from_datetime_string", 3253569256)
  methodbind.ptrcall(self, [getPtr datetime, getPtr weekday], Dictionary)

proc getDatetimeStringFromDatetimeDict*(self: Time; datetime: Dictionary; useSpace: bool): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_datetime_string_from_datetime_dict", 1898123706)
  methodbind.ptrcall(self, [getPtr datetime, getPtr useSpace], String)

proc getUnixTimeFromDatetimeDict*(self: Time; datetime: Dictionary): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_unix_time_from_datetime_dict", 3021115443)
  methodbind.ptrcall(self, [getPtr datetime], int64)

proc getUnixTimeFromDatetimeString*(self: Time; datetime: String): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_unix_time_from_datetime_string", 1321353865)
  methodbind.ptrcall(self, [getPtr datetime], int64)

proc getOffsetStringFromOffsetMinutes*(self: Time; offsetMinutes: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_offset_string_from_offset_minutes", 844755477)
  methodbind.ptrcall(self, [getPtr offsetMinutes], String)

proc getDatetimeDictFromSystem*(self: Time; utc: bool = false): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_datetime_dict_from_system", 205769976)
  methodbind.ptrcall(self, [getPtr utc], Dictionary)

proc getDateDictFromSystem*(self: Time; utc: bool = false): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_date_dict_from_system", 205769976)
  methodbind.ptrcall(self, [getPtr utc], Dictionary)

proc getTimeDictFromSystem*(self: Time; utc: bool = false): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_time_dict_from_system", 205769976)
  methodbind.ptrcall(self, [getPtr utc], Dictionary)

proc getDatetimeStringFromSystem*(self: Time; utc: bool = false; useSpace: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_datetime_string_from_system", 1136425492)
  methodbind.ptrcall(self, [getPtr utc, getPtr useSpace], String)

proc getDateStringFromSystem*(self: Time; utc: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_date_string_from_system", 1162154673)
  methodbind.ptrcall(self, [getPtr utc], String)

proc getTimeStringFromSystem*(self: Time; utc: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_time_string_from_system", 1162154673)
  methodbind.ptrcall(self, [getPtr utc], String)

proc getTimeZoneFromSystem*(self: Time): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_time_zone_from_system", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getUnixTimeFromSystem*(self: Time): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_unix_time_from_system", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getTicksMsec*(self: Time): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_ticks_msec", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getTicksUsec*(self: Time): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Time, "get_ticks_usec", 3905245786)
  methodbind.ptrcall(self, [], uint64)
