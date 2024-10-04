{.warning[UnusedImport]:off.}

import ./localenums
import gdext/coronation/header/structs

type AudioFrame* = object
  left*: cfloat
  right*: cfloat

type CaretInfo* = object
  leadingCaret*: Rect2
  trailingCaret*: Rect2
  leadingDirection*: TextServer_Direction
  trailingDirection*: TextServer_Direction

type Glyph* = object
  start*: cint = -1
  `end`*: cint = -1
  count*: uint8 = 0
  repeat*: uint8 = 1
  flags*: uint16 = 0
  xOff*: cfloat = 0
  yOff*: cfloat = 0
  advance*: cfloat = 0
  fontRid*: RID
  fontSize*: cint = 0
  index*: int32 = 0

type ObjectId* = object
  id*: uint64 = 0

type PhysicsServer2DExtensionMotionResult* = object
  travel*: Vector2
  remainder*: Vector2
  collisionPoint*: Vector2
  collisionNormal*: Vector2
  colliderVelocity*: Vector2
  collisionDepth*: real_elem
  collisionSafeFraction*: real_elem
  collisionUnsafeFraction*: real_elem
  collisionLocalShape*: cint
  colliderId*: ObjectID
  collider*: RID
  colliderShape*: cint

type PhysicsServer2DExtensionRayResult* = object
  position*: Vector2
  normal*: Vector2
  rid*: RID
  colliderId*: ObjectID
  collider*: ptr Object
  shape*: cint

type PhysicsServer2DExtensionShapeRestInfo* = object
  point*: Vector2
  normal*: Vector2
  rid*: RID
  colliderId*: ObjectID
  shape*: cint
  linearVelocity*: Vector2

type PhysicsServer2DExtensionShapeResult* = object
  rid*: RID
  colliderId*: ObjectID
  collider*: ptr Object
  shape*: cint

type PhysicsServer3DExtensionMotionCollision* = object
  position*: Vector3
  normal*: Vector3
  colliderVelocity*: Vector3
  colliderAngularVelocity*: Vector3
  depth*: real_elem
  localShape*: cint
  colliderId*: ObjectID
  collider*: RID
  colliderShape*: cint

type PhysicsServer3DExtensionMotionResult* = object
  travel*: Vector3
  remainder*: Vector3
  collisionDepth*: real_elem
  collisionSafeFraction*: real_elem
  collisionUnsafeFraction*: real_elem
  collisions*: array[32, PhysicsServer3DExtensionMotionCollision]
  collisionCount*: cint

type PhysicsServer3DExtensionRayResult* = object
  position*: Vector3
  normal*: Vector3
  rid*: RID
  colliderId*: ObjectID
  collider*: ptr Object
  shape*: cint
  faceIndex*: cint

type PhysicsServer3DExtensionShapeRestInfo* = object
  point*: Vector3
  normal*: Vector3
  rid*: RID
  colliderId*: ObjectID
  shape*: cint
  linearVelocity*: Vector3

type PhysicsServer3DExtensionShapeResult* = object
  rid*: RID
  colliderId*: ObjectID
  collider*: ptr Object
  shape*: cint

type ScriptLanguageExtensionProfilingInfo* = object
  signature*: StringName
  callCount*: uint64
  totalTime*: uint64
  selfTime*: uint64