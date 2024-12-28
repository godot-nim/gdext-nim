import gdext
import gdext/classes/gdNode

import classes/gdvirtualnode01

type VirtualNode02* = ptr object of VirtualNode01

method virtualMethod*(self: VirtualNode02; str: string): string {.gdsync.} =
  "virtualMethod of VirtualNode02 is called " & str
