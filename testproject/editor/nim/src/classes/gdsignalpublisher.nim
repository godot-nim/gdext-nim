import gdext
import gdext/classes/gdNode
randomize()

type SignalPublisher* {.tool.} = ptr object of Node
  key: Int

proc send*(self: SignalPublisher; key: Int): Error {.signal, gdsync.}

method process(self: SignalPublisher; delta: float64) {.gdsync.} =
  if self.key == 0:
    self.key = randiRange(0, 255)
  assert self.send(self.key) == ok