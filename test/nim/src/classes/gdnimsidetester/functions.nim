import gdext
import typedef

var
  arg0_noret_result: string
  arg1_noret_result: string

proc arg0_noret(self: NimSideTester) {.gdsync.} =
  arg0_noret_result = "arg0_noret()"

proc arg0_ret(self: NimSideTester): string {.gdsync.} =
  "arg0_ret()"

proc arg1_noret(self: NimSideTester; str: string) {.gdsync.} =
  arg1_noret_result = "arg1_noret(" & str & ")"

proc arg1_ret(self: NimSideTester; str: string): string {.gdsync.} =
  "arg1_ret(" & str & ")"

`@export_storage`"arg0_noret_result",
  proc (self: NimSideTester): string = arg0_noret_result,
  proc (self: NimSideTester; value: string) = discard

`@export_storage`"arg1_noret_result",
  proc (self: NimSideTester): string = arg1_noret_result,
  proc (self: NimSideTester; value: string) = discard

proc default_value_simple(self: NimSideTester; str: string = "default"): string {.gdsync.} =
  "default_value_simple(" & str & ")"
proc default_value_complex(self: NimSideTester;
      str1, str2: string;
      str3: string = "default";
      str4 = "value";
    ): string {.gdsync.} =
  "default_value_complex(" & str1 & " " & str2 & " " & str3 & " " & str4 & ")"