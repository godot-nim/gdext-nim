import gdext
import gdext/classes/gdNode
randomize()

type SignalPublisher* {.tool.} = ptr object of Node
  key: Int
  seconds: float = 1

proc send*(self: SignalPublisher; key: Int): Error {.signal, gdsync.}

method process(self: SignalPublisher; delta: float64) {.gdsync.} =
  if self.key == 0:
    self.key = randiRange(0, 255)
  self.seconds += delta
  if self.seconds >= 1.0:
    assert self.send(self.key) == ok
    self.seconds = 0