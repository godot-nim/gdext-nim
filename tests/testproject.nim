import std/[os]

proc pipe(result: 0..1) =
  if result == 1: quit 1

pipe execShellCmd"nim c testproject/runtime/nim/bootstrap"

if dirExists"testproject/runtime/.godot":
  pipe execShellCmd"godot --path testproject/runtime"
else:
  pipe execShellCmd"godot --path testproject/runtime --editor"