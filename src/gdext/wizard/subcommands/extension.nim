import ../sdk/cli
import ../sdk/clitools/filesystem

import std/[os, parseopt, strutils]

const
  templateroot = "extension/template"
  `.gitignore` = staticRead templateroot/".gitignore"
  `bootstrap.nim` = staticRead templateroot/"bootstrap.nim"
  `config.nims` = staticRead templateroot/"config.nims"

proc new_extension*(name = default Directory): 0..1 =
  var cli = CliContext(wizard: "wizard new-extension*")
  cli.info "new-extension is activated"

  if fileExists("project.godot"):
    cli.info "project.godot found"
  else:
    cli.failure "project.godot not found. Go project directory and retry."
    quit 1

  let extension = string argcomplete_dialog(name, "extension name")
  let extensionPath = "nim"/extension


  createDir extensionPath
  cli.success "create directory " & extensionPath

  let symbols = @[
    ("$name", extension.capitalizeAscii)
  ]

  writeFileWithDialog(extensionPath/".gitignore", `.gitignore`.multiReplace(symbols))
  writeFileWithDialog(extensionPath/"config.nims", `config.nims`.multiReplace(symbols))
  writeFileWithDialog(extensionPath/"bootstrap.nim", `bootstrap.nim`.multiReplace(symbols))

  createDir "nim/src"

proc dispatch_new_extension*(opt: var OptParser) =
  next opt
  while true:
    case opt.kind
    of cmdLongOption, cmdShortOption:
      discard
    of cmdArgument:
      quit new_extension(Directory opt.key)
    of cmdEnd:
      quit new_extension()
    next opt
