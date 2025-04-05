import std/os

var status: int

status = execShellCmd "nimble build"
if status != 0: quit status

