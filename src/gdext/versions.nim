import std/[strutils, sequtils]

proc strToTuple(str: string): tuple[Major, Minor, Patch: int] =
  let s = str.split(".").map(parseInt)
  (s[0], s[1], s[2])

const
  GdextVersionString* = "0.15.0"
  GdextVersion* = strToTuple(GdextVersionString)
  GdextVersionMajor* = GdextVersion.Major
  GdextVersionMinor* = GdextVersion.Minor
  GdextVersionPatch* = GdextVersion.Patch

  CurrentSupportedGodotVersionString* = "4.4.1"
  CurrentSupportedGodotVersion* = strToTuple(CurrentSupportedGodotVersionString)
  CurrentSupportedGodotVersionMajor* = CurrentSupportedGodotVersion.Major
  CurrentSupportedGodotVersionMinor* = CurrentSupportedGodotVersion.Minor
  CurrentSupportedGodotVersionPatch* = CurrentSupportedGodotVersion.Patch
