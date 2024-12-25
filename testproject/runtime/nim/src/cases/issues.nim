import gdext
import gdext/classes/[gdCSGSphere3D, gdStandardMaterial3D]
import testutils

runtime: suite "Community Reported":

  test "set a StandardMaterial3D crash? #134":
    let s : CSGSphere3D = instantiate CSGSphere3D
    check s != nil

    let mat: GdRef[StandardMaterial3D] = instantiate StandardMaterial3D
    mat[].albedoColor = color(0, 0, 1)
    s.material = mat as GdRef[Material]

    destroy s
