import std/os
import std/strformat
import std/strutils
import std/parseopt

const path = (
  gdext: "https://github.com/godot-nim/gdext-nim",
)

proc install*(): 0..1 =
  execShellCmd &"nimble install {path.gdext}"

proc uninstall*(): 0..1 =

  let pkglist = @[
    "gdext",
    "gdextgen",
    "gdextcore",
    "gdextwiz",
    ]
  let pkg = pkglist.join(" ")

  execShellCmd(&"nimble uninstall -i {pkg}")

proc upgrade*(): 0..1 =
  uninstall() and install()

proc dispatch_install*(opt: var OptParser) =
  quit install()
proc dispatch_uninstall*(opt: var OptParser) =
  quit uninstall()
proc dispatch_upgrade*(opt: var OptParser) =
  quit upgrade()