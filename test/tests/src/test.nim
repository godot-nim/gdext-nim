import godot

import ./nimSideTester
import ./godotSideTester

import ./geometrics; export geometrics

# Executed when this library is loaded (the godot project is executed)
proc initialize(lvl: InitializationLevel): void =
  register_class NimSideTester
  register_class GodotSideTester

# Executed when this library is unloaded (the godot project is terminated)
proc terminate(lvl: InitializationLevel): void =
  discard

let cfg = GDExtensionConfig(
  initializer: initialize,
  terminator: terminate,
)

# Expand the entry point. Your project must have this section.
# Then put the name (in this case, `init_library`) to `entry_symbol` of *.gdextension.
GDExtension_EntryPoint name=init_library, config=cfg