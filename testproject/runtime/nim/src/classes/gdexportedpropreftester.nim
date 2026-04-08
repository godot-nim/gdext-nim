import gdext
import gdext/classes/[
  gdNode, gdTexture2D, gdResourceLoader
  ]

type ExportedPropRefTester* {.gdsync.} = ptr object of Node
  clsProp*: gdref Texture2D

gdexport ExportedPropRefTester.clsProp

method ready(self: ExportedPropRefTester) {.gdsync.} =
  var resource: gdref Resource = ResourceLoader.load("res://icon.png")
  self.clsProp = resource as gdref Texture2D