import gdext
import gdext/classes/[gdCSGSphere3D, gdStandardMaterial3D,gdNode,gdLabel3D]
import testutils
import gdext/implicitsugars
type
  TestNode* {.gdsync.} = ptr object of Node
    a* {.gdexport.}: int

runtime: suite "Community Reported":

  test "set a StandardMaterial3D crash? #134":
    let s : CSGSphere3D = instantiate CSGSphere3D
    check s != nil

    let mat: GdRef[StandardMaterial3D] = instantiate StandardMaterial3D
    mat[].albedoColor = color(0, 0, 1)
    s.material = mat as GdRef[Material]

    destroy s

  test "variant(Object).get(RefCounted) should be nil #286":
    var obj = instantiate Object
    var v = variant obj
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
    var arr = Array()
    let myString = "not a variant"
    arr.add(myString)
    check arr[0].as(string) == myString
    arr.clear()
    
  test "Check node for overloaded proc to ensure it has the proper functionality":
    var myTestNode = TestNode.instantiate
    let myLabel = Label3D.instantiate("myLabel3D")
    myTestNode.addChild(myLabel)
    check "myLabel3D" in myTestNode
    destroy myTestNode
