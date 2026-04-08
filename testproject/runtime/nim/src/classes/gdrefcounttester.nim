import gdext
import gdext/classes/[
  gdNode, gdTexture2D, gdResourceLoader
  ]

type MyBuggedNodeBad* {.gdsync.} = ptr object of Node
  clsProp* {.gdexport.}: gdref Texture2D

method ready(self: MyBuggedNodeBad) {.gdsync.} =
  var resource: gdref Resource = ResourceLoader.load("res://icon.svg")
  self.clsProp = resource as gdref Texture2D