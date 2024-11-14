import gdext
import gdext/core/gdclass
import gdext/classes/gdNode

import ./gdsignalpublisher

type SignalSubscriber* = ptr object of Node
  publisher*: SignalPublisher

gdexport_custom "publisher",
  getter = proc(self: SignalSubscriber): SignalPublisher =
    self.publisher,
  setter = proc(self: SignalSubscriber; value: SignalPublisher) =
    self.publisher = value,
  hint = propertyHintNodeType,
  hint_string = gdstring className Node

proc recv*(self: SignalSubscriber; key: int) {.gdsync.} =
  echo "receive: ", key

method ready(self: SignalSubscriber) {.gdsync.} =
  if self.publisher != nil:
    print "connect: ", self.publisher.connect("send", self.callable "recv")
  else:
    print "Failed to connect; self.publisher is nil."