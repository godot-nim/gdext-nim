# begin Nimble config (version 2)
when withDir(thisDir(), system.fileExists("nimble.paths")):
  include "nimble.paths"
# end Nimble config

task test, "run tests":
  withDir("test"):
    exec "choosenim 2.0.0"
    exec "gdextwiz build"
    exec "godot"

    exec "choosenim 2.0.8"
    exec "gdextwiz build"
    exec "godot"