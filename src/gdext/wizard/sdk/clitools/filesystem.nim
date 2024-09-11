import ../cli

import std/[os, strutils, strformat, options]

type Directory* = distinct string

proc isSafeToEdit*(cli: var CliContext; dir: Directory; warnContents = false): bool =
  let dir = dir.string
  if fileExists(dir):
    cli.warning dir & " file is already exists."
    return false

  elif warnContents and dirExists(dir):
    for file in walkDir(dir):
      cli.warning dir & " is already exists and have some contents. These may be overwritten by processing."
      return cli.prompt("continue?", NoOrYes) == "yes"

  return true

proc argcomplete_dialog*(input: Directory; key: string): Directory =
  var cli = CliContext(wizard: "dialog missing-arg#")
  var res = input.string
  if res.isEmptyOrWhitespace:
    cli.warning &"{key} is not specified."
  elif cli.isSafeToEdit Directory res:
    return Directory res

  while true:
    while true:
      res = cli.prompt("what's name?", none string)
      if not res.isEmptyOrWhitespace:
        break
    if cli.isSafeToEdit(Directory res):
      return Directory res

proc overwrite_dialog*(path: string; content: string): bool =
  var cli = CliContext(wizard: "dialog overwrite-file#")
  if fileExists(path) and readFile(path) != content:
    cli.warning(path & " is already exists and modified.")
    while true:
      case cli.prompt("overwrite it?", ["no", "yes", "show diff"]):
      of "no":
        return false
      of "yes":
        return true
      of "show diff":
        discard execShellCmd(&"diff {path} <(echo '{content}')")
  true

proc writeFileWithDialog*(path: string; content: string) =
  if overwrite_dialog(path, content):
    writeFile(path, content)

proc writeFileIfNotExists*(path: string; content: string) =
  if not fileExists(path):
    writeFile(path, content)
