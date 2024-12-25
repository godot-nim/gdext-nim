import std/[os]

var status: int

status = execShellCmd"nim c testproject/runtime/nim/bootstrap"
if status != 0: quit status

if not dirExists("testproject/runtime/.godot"):
  status = execShellCmd"godot --headless --editor --path testproject/runtime"
  if status != 0: quit status

status = execShellCmd"godot --headless --path testproject/runtime"
if status != 0: quit status