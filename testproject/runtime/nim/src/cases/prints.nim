import gdext
import testutils

suite "print":
  test "print":
    print("print: ", "1 = ", 1, ", instantiate RefCounted = ", instantiate RefCounted)
    printRich("printRich: ", "[b]1[/b] = ", 1, ", [b]instantiate RefCounted[/b] = ", instantiate RefCounted)
    printerr("printerr: ", "1 = ", 1, ", instantiate RefCounted = ", instantiate RefCounted)