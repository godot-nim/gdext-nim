import gdext
import gdext/classes/gdImage
import std/unittest
unittest.disableParamFiltering()

suite "Image":
  test "create":
    var image {.used.}: gdref Image = Image.create(1920, 1080, false, formatRgba8)