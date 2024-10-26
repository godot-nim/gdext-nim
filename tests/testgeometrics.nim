import std/unittest, std/math
import gdext

suite "Geometrics":
  let v012 = [0f, 1, 2]
  let v345 = [3f, 4, 5]
  test "type":
    check ([0f32, 1, 2] * [3f64, 4, 5]) is Vector3
    check ([0f32, 1, 2] * 3f64) is Vector3
    check ([0f32, 1, 2] * 3f64) == [0f32, 3, 6]

  test "fmaps":
    check ((v012, v345).fmap(a + b)) == [3f, 5, 7]

  test "fold":
    check v012.all(a >= 0)
    check not v012.all(a >= 1)
    check v012.any(a >= 2)
    check not v012.any(a >= 3)

  test "Vector [+-*/] Vector":
    check v012 + v345 == [3f, 5, 7]
    check v012 - v345 == [-3f, -3, -3]
    check v012 * v345 == [0f, 4, 10]
    check v012 / v345 == [0f, 0.25, 0.4]

    check v345 + v012 == [3f, 5, 7]
    check v345 - v012 == [3f, 3, 3]
    check v345 * v012 == [0f, 4, 10]
    check v345 / v012 == [float32 system.Inf, 4, 2.5]

  test "Vector [+-*/] scalar":
    check 10f + v345 == [13f, 14, 15]
    check 10f - v345 == [7f, 6, 5]
    check 10f * v345 == [30f, 40, 50]
    check 10f / v345 == [10/3f, 10/4f, 10/5f]

    check v345 + 10f == [13f, 14, 15]
    check v345 - 10f == [-7f, -6, -5]
    check v345 * 10f == [30f, 40, 50]
    check v345 / 10f == [3/10f, 4/10f, 5/10f]

  test "Vector field access":
    var v2 = [1f, 2]
    check compiles v2.x += 10
    check compiles v2.y += 10
    check not compiles v2.z += 10
    check not compiles v2.w += 10

    var v3 = [3, 4, 5] # int
    check compiles v3.x += 10
    check compiles v3.y -= 10
    check compiles v3.z *= 10
    check not compiles v3.w += 10
    
    var v4 = [6f, 7, 8, 9]
    check compiles v4.x += 10
    check compiles v4.y -= 10
    check compiles v4.z *= 10
    check compiles v4.w /= 10
    
    v2.x += 10
    v2.y *= 10
    check v2.x == 11
    check v2.y == 20
    
    v3.x += 10
    v3.y -= 10
    v3.z *= 10
    check v3.x == 13
    check v3.y == -6
    check v3.z == 50
    
    v4.x += 10
    v4.y -= 10
    v4.z *= 10
    v4.w /= 10
    check v4.x == 16
    check v4.y == -3
    check v4.z == 80
    check v4.w.almostEqual 0.9

  test "normalize":
    check v012.dot(v345) == 14
    check [1f, 0, 0].length == 1
    check [1f, 1, 1].length == sqrt 3f

    let x: NVector[3, float32] = v012.normalized
    let y: Vector[3, float32] = x
    check x.length == 1
    check y.length != 1
    check y.length ~= 1

  test "swizzling":
    var v = [1, 2, 3]

    # echo v.x
    check v.*x == 1
    check v.*y == 2
    check v.*z == 3
    check not compiles v.*w
    check not compiles v.*a

    check v.*yx == [2, 1]
    check v.*yy == [2, 2]
    check v.*yz == [2, 3]

    check v.*xy == [1, 2]
    check v.*yy == [2, 2]
    check v.*zy == [3, 2]

    check v.*xxxxxxxxxx == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

    v.*xy = [4, 5]
    check v == [4, 5, 3]

    var v2 = [1, 2, 3, 4]
    check v2.*x == 1
    check v2.*y == 2
    check v2.*z == 3
    check v2.*w == 4
    check not compiles v2.*a

    check not compiles ([1, 2, 3, 4].*xyz = [5, 6, 7])
