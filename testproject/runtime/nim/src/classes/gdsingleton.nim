import gdext

type Singleton* {.gdsync, singleton.} = ptr object of Object
  value1* {.gdexport.}: int
  value2: int

proc get_value2*(self: Singleton): int {.gdsync.} =
  self.value2
proc set_value2*(self: Singleton; val: int) {.gdsync.} =
  self.value2 = val

gdexport "value2",
  getter= get_value2,
  setter= set_value2