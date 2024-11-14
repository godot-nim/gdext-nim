import gdext
import gdext/classes/gdNode
import std/random
random.randomize()

type SignalPublisher* = ptr object of Node
  key: int

proc send*(self: SignalPublisher; key: int): Error {.signal, gdsync.}

method process(self: SignalPublisher; delta: float64) {.gdsync.} =
  if self.key == 0:
    self.key = rand(0..255)
  assert self.send(self.key) == ok