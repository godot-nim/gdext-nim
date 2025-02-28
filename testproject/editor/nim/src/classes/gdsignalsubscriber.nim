import gdext
import gdext/core/gdclass
import gdext/classes/gdNode

import ./gdsignalpublisher

type SignalSubscriber* = ptr object of Node
  publisher*: SignalPublisher

gdexport "publisher",
  getter = proc(self: SignalSubscriber): SignalPublisher =
    self.publisher,
  setter = proc(self: SignalSubscriber; value: SignalPublisher) =
    self.publisher = value,
  Appearance.custom(
  hint = propertyHintNodeType,
  hint_string = gdstring className Node)

proc recv*(self: SignalSubscriber; key: int) {.gdsync.} =
  ## Take a argument and echo it.
  echo "receive: ", key

method ready(self: SignalSubscriber) {.gdsync.} =
  if self.publisher != nil:
    print "connect: ", self.publisher.connect("send", self.callable "recv")
  else:
    print "Failed to connect; self.publisher is nil."