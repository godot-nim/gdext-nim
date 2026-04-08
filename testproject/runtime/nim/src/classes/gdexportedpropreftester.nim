import gdext
import gdext/classes/[
  gdNode, gdTexture2D, gdResourceLoader
  ]

type ExportedPropRefTester* {.gdsync.} = ptr object of Node
  clsProp* {.gdexport.}: gdref Texture2D

method ready(self: ExportedPropRefTester) {.gdsync.} =
  var resource: gdref Resource = ResourceLoader.load("res://icon.svg")
  self.clsProp = resource as gdref Texture2D