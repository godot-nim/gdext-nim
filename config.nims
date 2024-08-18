# begin Nimble config (version 2)
when withDir(thisDir(), system.fileExists("nimble.paths")):
  include "nimble.paths"
# end Nimble config

task test, "run tests":
  withDir("test"):
    exec """
choosenim 2.0.0
gdextwiz build 2> /dev/null
godot 2> test.log"""

    exec """
choosenim 2.0.8
gdextwiz build 2> /dev/null
godot 2>> test.log"""