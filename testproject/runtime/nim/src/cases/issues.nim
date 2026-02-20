import gdext
import gdext/classes/[gdCSGSphere3D, gdStandardMaterial3D,gdNode,gdLabel3D]
import testutils
type
  TestNode* {.gdsync.} = ptr object of Node
    a* {.gdexport.}: int

runtime: suite "Community Reported":

  test "set a StandardMaterial3D crash? #134":
    let s : CSGSphere3D = instantiate CSGSphere3D
    check s != nil

    let mat: GdRef[StandardMaterial3D] = instantiate StandardMaterial3D
    mat[].albedoColor = color(0, 0, 1)
    s.material = cast[GdRef[Material]](mat)

    destroy s

  test "variant(Object).get(RefCounted) should be nil #286":
    var obj = instantiate Object
    var v = Variant obj
    check v.get(RefCounted) == nil
    destroy obj

  test "adding a string to PackedStringArray must compile":
    var myPackedString = newPackedStringArray()
    let myString : String = "test"
    myPackedString.add(myString)
    check myPackedString[0] == myString

  test "object set should compile and work":
    var myTestNode = TestNode.instantiate
    myTestNode.set("a",1)
    let a = myTestNode.get("a").as(int)
    check a == 1
    destroy myTestNode

  test "array add should compile and work":
    var arr = Array[Variant]()
    let myString = "not a variant"
    arr.add(myString)
    check arr[0].as(string) == myString
    arr.clear()
