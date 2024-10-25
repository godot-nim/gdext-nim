import std/[sequtils, strutils]
import gdext
import typedef

var
  arg0_noret_result: string
  arg1_noret_result: string

proc arg0_noret(self: GDExtNode) {.gdsync.} =
  arg0_noret_result = "arg0_noret()"

proc arg0_ret(self: GDExtNode): string {.gdsync.} =
  "arg0_ret()"

proc arg1_noret(self: GDExtNode; str: string) {.gdsync.} =
  arg1_noret_result = "arg1_noret(" & str & ")"

proc arg1_ret(self: GDExtNode; str: string): string {.gdsync.} =
  "arg1_ret(" & str & ")"

gdexport_custom "arg0_noret_result",
  proc (self: GDExtNode): string = arg0_noret_result,
  proc (self: GDExtNode; value: string) = discard,
  usage = {propertyUsageInternal}

gdexport_custom "arg1_noret_result",
  proc (self: GDExtNode): string = arg1_noret_result,
  proc (self: GDExtNode; value: string) = discard,
  usage = {propertyUsageInternal}

proc default_value_simple(self: GDExtNode; str: string = "default"): string {.gdsync.} =
  "default_value_simple(" & str & ")"
proc default_value_complex(self: GDExtNode;
      str1, str2: string;
      str3: string = "default";
      str4 = "value";
    ): string {.gdsync.} =
  "default_value_complex(" & str1 & " " & str2 & " " & str3 & " " & str4 & ")"

proc varargs_simple(self: GDExtNode; args: varargs[ptr Variant]): string {.gdsync.} =
  args.mapIt(it[].get int).join(", ")
proc varargs_static(self: typedesc[GDExtNode]; args: varargs[ptr Variant]): string {.gdsync.} =
  args.mapIt(it[].get int).join(", ")

proc varargs_concrete(self: GDExtNode; args: varargs[int]): string {.gdsync.} =
  args.join(", ")

proc most_complex(self: GDExtNode;
      str1, str2: string;
      str3: string = "default";
      str4 = "value";
      args: varargs[string]
    ): string {.gdsync.} =
  @[str1, str2, str3, str4].concat(@args).join(" ")