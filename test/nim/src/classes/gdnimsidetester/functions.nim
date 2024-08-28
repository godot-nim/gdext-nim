import gdext
import typedef

proc arg0_noreturn(self: NimSideTester) {.gdsync.} =
  discard

proc arg0_return(self: NimSideTester): string {.gdsync.} =
  "arg0_return()"

proc arg1_return(self: NimSideTester; str: string): string {.gdsync.} =
  "arg1_return(" & str & ")"

proc default_value(self: NimSideTester; str: string = "default"): string {.gdsync.} =
  "default_value(" & str & ")"