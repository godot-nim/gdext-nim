import testutils
import std/exitprocs

import gdext
import gdext/classes/[gdResource]

type GDExtResource* {.gdsync.} = ptr object of Resource

proc create*(_: typedesc[GDExtResource]): gdref GDExtResource {.gdsync.} =
  result = instantiate GDExtResource

proc nimtest*(_: typedesc[GDExtResource]): bool {.gdsync.} =
  suite "GDExtResource":
    test "reference counting":
      let resource1 = instantiate GDExtResource

      check resource1[].getReferenceCount == 1

      block:
        let resource2 = resource1

        check resource1[].getReferenceCount == 2
        check resource2[].getReferenceCount == 2

      check resource1[].getReferenceCount == 1

  exitprocs.getProgramResult() == 0
