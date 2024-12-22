import gdext
import std/unittest
unittest.disableParamFiltering()

suite "Community Reported":
  test "instantiate CSGSphere3D or CSGBox3D -> crash #132":
    let m : CSGSphere3D = instantiate CSGSphere3D
    check m != nil
    destroy m
