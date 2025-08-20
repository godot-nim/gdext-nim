import std/[sequtils, strutils]
import gdext

type FunctionTester* {.gdsync.} = ptr object of Node
  arg0_noret_result: string
  arg1_noret_result: string

# {.gdsync.} for forward declaration should be ignored.
proc arg0_noret(self: FunctionTester) {.gdsync.}

proc arg0_noret(self: FunctionTester) {.gdsync.} =
  self.arg0_noret_result = "arg0_noret()"

proc arg0_ret(self: FunctionTester): string {.gdsync.} =
  "arg0_ret()"

proc arg1_noret(self: FunctionTester; str: string) {.gdsync.} =
  self.arg1_noret_result = "arg1_noret(" & str & ")"

proc arg1_ret(self: FunctionTester; str: string): string {.gdsync.} =
  "arg1_ret(" & str & ")"

gdexport "arg0_noret_result",
  proc (self: FunctionTester): string = self.arg0_noret_result,
  proc (self: FunctionTester; value: string) = discard,
  Appearance.custom(usage = {propertyUsageInternal})

gdexport "arg1_noret_result",
  proc (self: FunctionTester): string = self.arg1_noret_result,
  proc (self: FunctionTester; value: string) = discard,
  Appearance.custom(usage = {propertyUsageInternal})

proc default_value_simple(self: FunctionTester; str: string = "default"): string {.gdsync.} =
  "default_value_simple(" & str & ")"
proc default_value_complex(self: FunctionTester;
      str1, str2: string;
      str3: string = "default";
      str4 = "value";
    ): string {.gdsync.} =
  "default_value_complex(" & str1 & " " & str2 & " " & str3 & " " & str4 & ")"

proc varargs_simple(self: FunctionTester; args: varargs[Variant]): string {.gdsync.} =
  args.mapIt(it.get int).join(", ")
proc varargs_static(self: typedesc[FunctionTester]; args: varargs[Variant]): string {.gdsync.} =
  args.mapIt(it.get int).join(", ")

proc varargs_concrete(self: FunctionTester; args: varargs[int]): string {.gdsync.} =
  args.join(", ")

proc most_complex(self: FunctionTester;
      str1, str2: string;
      str3: string = "default";
      str4 = "value";
      args: varargs[string]
    ): string {.gdsync.} =
  @[str1, str2, str3, str4].concat(@args).join(" ")