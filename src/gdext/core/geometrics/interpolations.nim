import typedef
import std/math

func lerp*[T: SomeFloat](pFrom,pTo: T; t: T): T {.inline.} =
  pFrom + t * (pTo - pFrom)

func lerp*[T: SomeFloat](pFrom,pTo: Radian[T]; t: T): Radian[T] {.inline.} =
  let
    difference: T = floorMod(T(pTo) - T(pFrom), TAU)
    distance: T = floorMod(T(2) * difference, TAU) - difference
  Radian(T(p_from) + distance * t)

func cubicInterpolate*[T: SomeFloat](pFrom, pTo, pPre, pPost, pWeight: T): T {.inline.} =
  0.5 * ((2*pFrom) +
    (-pPre + pTo) * pWeight +
    (2*pPre - 5*pFrom + 4*pTo - pPost) * (pWeight * pWeight) +
    (-pPre + 3*pFrom - 3*pTo + pPost) * (pWeight * pWeight * pWeight))

func cubicInterpolate*[T: SomeFloat](pFrom, pTo, pPre, pPost: Radian[T]; pWeight: T): Radian[T] {.inline.} =
  let
    fromRot = floorMod(T(pFrom), TAU)

    preDiff = floorMod(T(pPre) - fromRot, TAU)
    preRot = fromRot + floorMod(2.0 * preDiff, TAU) - preDiff

    toDiff = floorMod(T(pTo) - fromRot, TAU)
    toRot = fromRot + floorMod(2.0 * toDiff, TAU) - toDiff

    postDiff = floorMod(T(pPost) - toRot, TAU)
    postRot = toRot + floorMod(2.0 * postDiff, TAU) - postDiff

  Radian cubicInterpolate(fromRot, toRot, preRot, postRot, pWeight)