import std/[os, parseopt, strutils]

import gdext/wizard/sdk/cli
import gdext/wizard/sdk/opttools

proc nim_c(args: seq[string]; path: string): 0..1 =
  execShellCmd("nim c " & args.join(" ") & " " & path)

proc build_recursive(cli: var CliContext; nimargs: seq[string], current: string; limit: int) =
  if limit < 0: return
  for kind, path in current.walkDir:
    case kind
    of pcFile, pcLinkToFile:
      if path.extractFileName == "bootstrap.nim":
        cli.info "build " & path
        discard nim_c(nimargs, path)

    of pcDir, pcLinkToDir:
      cli.build_recursive(nimargs, path, limit.pred)

proc build_all*(nimargs: seq[string]; search_path: string; depth: int): 0..1 =
  var cli = CliContext(wizard: "wizard build-all*")
  var current = expandFilename search_path
  while not fileExists(current/"project.godot"):
    if current == "/":
      cli.failure "project.godot not found."
      quit 1
    current = expandFilename current/".."

  cli.info "using " & current/"project.godot"
  cli.build_recursive(nimargs, current, depth)

proc build*(nimargs: seq[string]; search_path: string; depth: int): 0..1 =
  var cli = CliContext(wizard: "wizard build*")
  var current = search_path

  while not fileExists(current/"bootstrap.nim"):
    if current == "/":
      cli.failure "bootstrap.nim not found."
      quit 1
    elif fileExists(current/"project.godot"):
      quit build_all(nimargs, current, depth)
    current = expandFilename current/".."

  cli.info "using " & current/"bootstrap.nim"
  nim_c nimargs, current/"bootstrap.nim"

proc dispatch_build*(opt: var OptParser) =
  next opt
  var nimargs: seq[string]
  var search_path = "."
  var depth = int.high

  while true:
    case opt.kind
    of cmdShortOption, cmdLongOption:
      nimargs.add opt.reverseOpt
    of cmdArgument:
      search_path = opt.key
      quit build(nimargs, search_path, depth)
    of cmdEnd:
      quit build(nimargs, search_path, depth)
    next opt

proc dispatch_build_all*(opt: var OptParser) =
  next opt
  var nimargs: seq[string]
  var search_path = "."
  var depth = int.high

  while true:
    case opt.kind
    of cmdShortOption, cmdLongOption:
      nimargs.add opt.reverseOpt
    of cmdArgument:
      search_path = opt.key
      quit build_all(nimargs, search_path, depth)
    of cmdEnd:
      quit build_all(nimargs, search_path, depth)
    next opt
