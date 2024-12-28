import gdext

type VirtualNode01* = ptr object of Node


method virtualMethod*(self: VirtualNode01; str: string): string {.gdsync, base.} =
  "virtualMethod of VirtualNode01 is called " & str

method virtualMethod2*(self: VirtualNode01) {.gdsync, base.} =
  discard
method virtualMethod3*(self: VirtualNode01; value: int): int {.gdsync, base.} =
  result = value
method virtualMethod4*(self: VirtualNode01; value: int): int {.gdsync, base.} =
  return value
