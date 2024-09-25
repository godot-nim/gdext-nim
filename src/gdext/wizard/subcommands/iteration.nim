import std/[os, parseopt, strutils]

import gdext/wizard/sdk/cli
import gdext/wizard/sdk/opttools

proc nim_c(args: seq[string]; path: string): 0..1 =
  execShellCmd("nim c " & args.join(" ") & " " & path)

template interrupt(code: 0..1) =
  if code == QuitFailure:
    return QuitFailure

proc build_recursive(cli: var CliContext; nimargs: seq[string], current: string; limit: int): 0..1 =
  if limit < 0: return
  for kind, path in current.walkDir:
    case kind
    of pcFile, pcLinkToFile:
      if path.extractFileName == "bootstrap.nim":
        cli.info "build " & path
        interrupt nim_c(nimargs, path)

    of pcDir, pcLinkToDir:
      interrupt cli.build_recursive(nimargs, path, limit.pred)

proc getParent*(cli: var CliContext; search_from: string; files: varargs[string]): tuple[dir, file: string] =
  var current = expandFilename search_from
  while true:
    for file in files:
      if fileExists current/file:
        return (current, file)
    if current == "/":
      cli.failure files.join(", ") & " not found."
      quit 1
    current = expandFilename current/".."

proc getProjectRoot*(cli: var CliContext; search_from: string): string =
  cli.getParent(search_from, "project.godot").dir

proc launchEditor*(cli: var CliContext; path: string; args: varargs[string]): 0..1 =
  let exe = findExe("godot")
  if exe.len == 0:
    cli.failure "failed to run. godot executable not found."
    quit 1
  cli.info "godot executable found. launching..."
  execShellCmd(exe & " --path " & path & " " & args.join(" "))

proc build_all*(nimargs: seq[string]; search_path: string; depth: int): 0..1 =
  var cli = CliContext(wizard: "wizard build-all*")
  var projectRoot = cli.getProjectRoot(search_path)

  cli.info "using " & projectRoot/"project.godot"
  interrupt cli.build_recursive(nimargs, projectRoot, depth)

proc build*(nimargs: seq[string]; search_path: string; depth: int): 0..1 =
  var cli = CliContext(wizard: "wizard build*")
  let (dir, file) = cli.getParent(search_path, "project.godot", "bootstrap.nim")

  case file
  of "project.godot":
    interrupt build_all(nimargs, dir, depth)
  of "bootstrap.nim":
    cli.info "using " & dir/file
    interrupt nim_c(nimargs, dir/file)

proc run*(nimargs: seq[string]; search_path: string; depth: int): 0..1 =
  var cli = CliContext(wizard: "wizard run*")
  let projectRoot = cli.getProjectRoot(search_path)
  interrupt build(nimargs, search_path, depth)
  cli.launchEditor(projectRoot)

proc editor*(search_path: string): 0..1 =
  var cli = CliContext(wizard: "wizard editor*")
  let projectRoot = cli.getProjectRoot(search_path)
  cli.launchEditor(projectRoot, "--editor")

proc run_editor*(nimargs: seq[string]; search_path: string; depth: int): 0..1 =
  interrupt build(nimargs, search_path, depth)
  editor(search_path)

type Command = proc (nimargs: seq[string]; search_path: string; depth: int): 0..1
proc dispatch_iteration(opt: var OptParser; command: Command) =
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
      quit command(nimargs, search_path, depth)
    of cmdEnd:
      quit command(nimargs, search_path, depth)
    next opt

proc dispatch_build*(opt: var OptParser) =
  dispatch_iteration(opt, build)

proc dispatch_build_all*(opt: var OptParser) =
  dispatch_iteration(opt, build_all)

proc dispatch_run*(opt: var OptParser) =
  dispatch_iteration(opt, run)

proc dispatch_editor*(opt: var OptParser) =
  next opt
  var search_path = "."

  while true:
    case opt.kind
    of cmdShortOption, cmdLongOption:
      discard
    of cmdArgument:
      search_path = opt.key
      quit editor(search_path)
    of cmdEnd:
      quit editor(search_path)
    next opt

proc dispatch_run_editor*(opt: var OptParser) =
  dispatch_iteration(opt, run_editor)