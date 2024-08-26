import gdext

type GodotSideTester* = ref object of Node
  int_value: int
  float_value: float
  icon: gdref Texture2D

# To register as static method, you must place typedesc[UserClass] at first argument
# and put `{.gdsync.}`.
proc helloworld*(_: typedesc[GodotSideTester]): string {.gdsync.} =
  "Hello, World!"

# To register as normal method, you must place UserClass at first argument
# and put `{.gdsync.}`.
# You can give an alias to publish to godot by put `{.gdsync, name: "alias".}`.
# In this case you can call this method with `set_int_value(value)` from GDScript.
proc `int_value=`*(self: GodotSideTester; value: int) {.gdsync, name: "set_int_value".} =
  self.int_value = value

# If specify the symbol `Auto` on the name of `gdsync`, it uses Nim's one instead.
# In this case, the name will be "set_float_value" automatically.
proc set_float_value*(self: GodotSideTester; value: float) {.gdsync.} =
  self.float_value = value

proc int_value*(self: GodotSideTester): int {.gdsync, name: "get_int_value".} =
  self.int_value
proc get_float_value*(self: GodotSideTester): float {.gdsync.} =
  self.float_value

proc `icon=`*(self: GodotSideTester; value: gdref Texture2D) {.gdsync, name: "set_icon".} =
  self.icon = value
proc icon*(self: GodotSideTester): gdref Texture2D {.gdsync, name: "get_icon".} =
  self.icon

`@export` "int_value", int_value, `int_value=`
`@export` "float_value", get_float_value, set_float_value
`@export` "icon", icon, `icon=`
