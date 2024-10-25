import std/[os]

quit execShellCmd """
nim c testproject/nim/bootstrap 2> /dev/null
godot --path testproject"""