{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc addTrack*(self: Animation; `type`: Animation_TrackType; atPosition: int32 = -1): int32 =
  expandMethodBind(className Animation, "add_track", 3843682357)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr `type`, getPtr atPosition], addr ret)
  (addr ret).decode_result(int32)

proc removeTrack*(self: Animation; trackIdx: int32): void =
  expandMethodBind(className Animation, "remove_track", 1286410249)
  methodbind.ptrcall(self, [getPtr trackIdx])

proc getTrackCount*(self: Animation): int32 =
  expandMethodBind(className Animation, "get_track_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc trackGetType*(self: Animation; trackIdx: int32): Animation_TrackType =
  expandMethodBind(className Animation, "track_get_type", 3445944217)
  var ret: encoded Animation_TrackType
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(Animation_TrackType)

proc trackGetPath*(self: Animation; trackIdx: int32): NodePath =
  expandMethodBind(className Animation, "track_get_path", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(NodePath)

proc trackSetPath*(self: Animation; trackIdx: int32; path: NodePath): void =
  expandMethodBind(className Animation, "track_set_path", 2761262315)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr path])

proc findTrack*(self: Animation; path: NodePath; `type`: Animation_TrackType): int32 =
  expandMethodBind(className Animation, "find_track", 245376003)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr path, getPtr `type`], addr ret)
  (addr ret).decode_result(int32)

proc trackMoveUp*(self: Animation; trackIdx: int32): void =
  expandMethodBind(className Animation, "track_move_up", 1286410249)
  methodbind.ptrcall(self, [getPtr trackIdx])

proc trackMoveDown*(self: Animation; trackIdx: int32): void =
  expandMethodBind(className Animation, "track_move_down", 1286410249)
  methodbind.ptrcall(self, [getPtr trackIdx])

proc trackMoveTo*(self: Animation; trackIdx: int32; toIdx: int32): void =
  expandMethodBind(className Animation, "track_move_to", 3937882851)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr toIdx])

proc trackSwap*(self: Animation; trackIdx: int32; withIdx: int32): void =
  expandMethodBind(className Animation, "track_swap", 3937882851)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr withIdx])

proc trackSetImported*(self: Animation; trackIdx: int32; imported: bool): void =
  expandMethodBind(className Animation, "track_set_imported", 300928843)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr imported])

proc trackIsImported*(self: Animation; trackIdx: int32): bool =
  expandMethodBind(className Animation, "track_is_imported", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(bool)

proc trackSetEnabled*(self: Animation; trackIdx: int32; enabled: bool): void =
  expandMethodBind(className Animation, "track_set_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr enabled])

proc trackIsEnabled*(self: Animation; trackIdx: int32): bool =
  expandMethodBind(className Animation, "track_is_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(bool)

proc positionTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; position: Vector3): int32 =
  expandMethodBind(className Animation, "position_track_insert_key", 2540608232)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr position], addr ret)
  (addr ret).decode_result(int32)

proc rotationTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; rotation: Quaternion): int32 =
  expandMethodBind(className Animation, "rotation_track_insert_key", 4165004800)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr rotation], addr ret)
  (addr ret).decode_result(int32)

proc scaleTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; scale: Vector3): int32 =
  expandMethodBind(className Animation, "scale_track_insert_key", 2540608232)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr scale], addr ret)
  (addr ret).decode_result(int32)

proc blendShapeTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; amount: Float): int32 =
  expandMethodBind(className Animation, "blend_shape_track_insert_key", 1534913637)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr amount], addr ret)
  (addr ret).decode_result(int32)

proc positionTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Vector3 =
  expandMethodBind(className Animation, "position_track_interpolate", 3530011197)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], addr ret)
  (addr ret).decode_result(Vector3)

proc rotationTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Quaternion =
  expandMethodBind(className Animation, "rotation_track_interpolate", 2915876792)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], addr ret)
  (addr ret).decode_result(Quaternion)

proc scaleTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Vector3 =
  expandMethodBind(className Animation, "scale_track_interpolate", 3530011197)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], addr ret)
  (addr ret).decode_result(Vector3)

proc blendShapeTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Float =
  expandMethodBind(className Animation, "blend_shape_track_interpolate", 2482365182)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], addr ret)
  (addr ret).decode_result(Float)

proc trackInsertKey*(self: Animation; trackIdx: int32; time: float64; key: Variant; transition: Float = 1): int32 =
  expandMethodBind(className Animation, "track_insert_key", 808952278)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr key, getPtr transition], addr ret)
  (addr ret).decode_result(int32)

proc trackRemoveKey*(self: Animation; trackIdx: int32; keyIdx: int32): void =
  expandMethodBind(className Animation, "track_remove_key", 3937882851)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx])

proc trackRemoveKeyAtTime*(self: Animation; trackIdx: int32; time: float64): void =
  expandMethodBind(className Animation, "track_remove_key_at_time", 1602489585)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time])

proc trackSetKeyValue*(self: Animation; trackIdx: int32; key: int32; value: Variant): void =
  expandMethodBind(className Animation, "track_set_key_value", 2060538656)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr key, getPtr value])

proc trackSetKeyTransition*(self: Animation; trackIdx: int32; keyIdx: int32; transition: Float): void =
  expandMethodBind(className Animation, "track_set_key_transition", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr transition])

proc trackSetKeyTime*(self: Animation; trackIdx: int32; keyIdx: int32; time: float64): void =
  expandMethodBind(className Animation, "track_set_key_time", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr time])

proc trackGetKeyTransition*(self: Animation; trackIdx: int32; keyIdx: int32): Float =
  expandMethodBind(className Animation, "track_get_key_transition", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(Float)

proc trackGetKeyCount*(self: Animation; trackIdx: int32): int32 =
  expandMethodBind(className Animation, "track_get_key_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(int32)

proc trackGetKeyValue*(self: Animation; trackIdx: int32; keyIdx: int32): Variant =
  expandMethodBind(className Animation, "track_get_key_value", 678354945)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(Variant)

proc trackGetKeyTime*(self: Animation; trackIdx: int32; keyIdx: int32): float64 =
  expandMethodBind(className Animation, "track_get_key_time", 3085491603)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(float64)

proc trackFindKey*(self: Animation; trackIdx: int32; time: float64; findMode: Animation_FindMode = findModeNearest; limit: bool = false; backward: bool = false): int32 =
  expandMethodBind(className Animation, "track_find_key", 4230953007)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr findMode, getPtr limit, getPtr backward], addr ret)
  (addr ret).decode_result(int32)

proc trackSetInterpolationType*(self: Animation; trackIdx: int32; interpolation: Animation_InterpolationType): void =
  expandMethodBind(className Animation, "track_set_interpolation_type", 4112932513)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr interpolation])

proc trackGetInterpolationType*(self: Animation; trackIdx: int32): Animation_InterpolationType =
  expandMethodBind(className Animation, "track_get_interpolation_type", 1530756894)
  var ret: encoded Animation_InterpolationType
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(Animation_InterpolationType)

proc trackSetInterpolationLoopWrap*(self: Animation; trackIdx: int32; interpolation: bool): void =
  expandMethodBind(className Animation, "track_set_interpolation_loop_wrap", 300928843)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr interpolation])

proc trackGetInterpolationLoopWrap*(self: Animation; trackIdx: int32): bool =
  expandMethodBind(className Animation, "track_get_interpolation_loop_wrap", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(bool)

proc trackIsCompressed*(self: Animation; trackIdx: int32): bool =
  expandMethodBind(className Animation, "track_is_compressed", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(bool)

proc valueTrackSetUpdateMode*(self: Animation; trackIdx: int32; mode: Animation_UpdateMode): void =
  expandMethodBind(className Animation, "value_track_set_update_mode", 2854058312)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr mode])

proc valueTrackGetUpdateMode*(self: Animation; trackIdx: int32): Animation_UpdateMode =
  expandMethodBind(className Animation, "value_track_get_update_mode", 1440326473)
  var ret: encoded Animation_UpdateMode
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(Animation_UpdateMode)

proc valueTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Variant =
  expandMethodBind(className Animation, "value_track_interpolate", 747269075)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], addr ret)
  (addr ret).decode_result(Variant)

proc methodTrackGetName*(self: Animation; trackIdx: int32; keyIdx: int32): StringName =
  expandMethodBind(className Animation, "method_track_get_name", 351665558)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(StringName)

proc methodTrackGetParams*(self: Animation; trackIdx: int32; keyIdx: int32): Array =
  expandMethodBind(className Animation, "method_track_get_params", 2345056839)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(Array)

proc bezierTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; value: Float; inHandle: Vector2 = vector2(0, 0); outHandle: Vector2 = vector2(0, 0)): int32 =
  expandMethodBind(className Animation, "bezier_track_insert_key", 3656773645)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr value, getPtr inHandle, getPtr outHandle], addr ret)
  (addr ret).decode_result(int32)

proc bezierTrackSetKeyValue*(self: Animation; trackIdx: int32; keyIdx: int32; value: Float): void =
  expandMethodBind(className Animation, "bezier_track_set_key_value", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr value])

proc bezierTrackSetKeyInHandle*(self: Animation; trackIdx: int32; keyIdx: int32; inHandle: Vector2; balancedValueTimeRatio: Float = 1.0): void =
  expandMethodBind(className Animation, "bezier_track_set_key_in_handle", 1719223284)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr inHandle, getPtr balancedValueTimeRatio])

proc bezierTrackSetKeyOutHandle*(self: Animation; trackIdx: int32; keyIdx: int32; outHandle: Vector2; balancedValueTimeRatio: Float = 1.0): void =
  expandMethodBind(className Animation, "bezier_track_set_key_out_handle", 1719223284)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr outHandle, getPtr balancedValueTimeRatio])

proc bezierTrackGetKeyValue*(self: Animation; trackIdx: int32; keyIdx: int32): Float =
  expandMethodBind(className Animation, "bezier_track_get_key_value", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(Float)

proc bezierTrackGetKeyInHandle*(self: Animation; trackIdx: int32; keyIdx: int32): Vector2 =
  expandMethodBind(className Animation, "bezier_track_get_key_in_handle", 3016396712)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc bezierTrackGetKeyOutHandle*(self: Animation; trackIdx: int32; keyIdx: int32): Vector2 =
  expandMethodBind(className Animation, "bezier_track_get_key_out_handle", 3016396712)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc bezierTrackInterpolate*(self: Animation; trackIdx: int32; time: float64): Float =
  expandMethodBind(className Animation, "bezier_track_interpolate", 1900462983)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time], addr ret)
  (addr ret).decode_result(Float)

proc audioTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; stream: gdref Resource; startOffset: Float = 0; endOffset: Float = 0): int32 =
  expandMethodBind(className Animation, "audio_track_insert_key", 4021027286)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr stream, getPtr startOffset, getPtr endOffset], addr ret)
  (addr ret).decode_result(int32)

proc audioTrackSetKeyStream*(self: Animation; trackIdx: int32; keyIdx: int32; stream: gdref Resource): void =
  expandMethodBind(className Animation, "audio_track_set_key_stream", 3886397084)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr stream])

proc audioTrackSetKeyStartOffset*(self: Animation; trackIdx: int32; keyIdx: int32; offset: Float): void =
  expandMethodBind(className Animation, "audio_track_set_key_start_offset", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr offset])

proc audioTrackSetKeyEndOffset*(self: Animation; trackIdx: int32; keyIdx: int32; offset: Float): void =
  expandMethodBind(className Animation, "audio_track_set_key_end_offset", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr offset])

proc audioTrackGetKeyStream*(self: Animation; trackIdx: int32; keyIdx: int32): gdref Resource =
  expandMethodBind(className Animation, "audio_track_get_key_stream", 635277205)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(gdref Resource)

proc audioTrackGetKeyStartOffset*(self: Animation; trackIdx: int32; keyIdx: int32): Float =
  expandMethodBind(className Animation, "audio_track_get_key_start_offset", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(Float)

proc audioTrackGetKeyEndOffset*(self: Animation; trackIdx: int32; keyIdx: int32): Float =
  expandMethodBind(className Animation, "audio_track_get_key_end_offset", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(Float)

proc audioTrackSetUseBlend*(self: Animation; trackIdx: int32; enable: bool): void =
  expandMethodBind(className Animation, "audio_track_set_use_blend", 300928843)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr enable])

proc audioTrackIsUseBlend*(self: Animation; trackIdx: int32): bool =
  expandMethodBind(className Animation, "audio_track_is_use_blend", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr trackIdx], addr ret)
  (addr ret).decode_result(bool)

proc animationTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; animation: StringName): int32 =
  expandMethodBind(className Animation, "animation_track_insert_key", 158676774)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr animation], addr ret)
  (addr ret).decode_result(int32)

proc animationTrackSetKeyAnimation*(self: Animation; trackIdx: int32; keyIdx: int32; animation: StringName): void =
  expandMethodBind(className Animation, "animation_track_set_key_animation", 117615382)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr animation])

proc animationTrackGetKeyAnimation*(self: Animation; trackIdx: int32; keyIdx: int32): StringName =
  expandMethodBind(className Animation, "animation_track_get_key_animation", 351665558)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], addr ret)
  (addr ret).decode_result(StringName)

proc setLength*(self: Animation; timeSec: Float): void =
  expandMethodBind(className Animation, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr timeSec])

proc getLength*(self: Animation): Float =
  expandMethodBind(className Animation, "get_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLoopMode*(self: Animation; loopMode: Animation_LoopMode): void =
  expandMethodBind(className Animation, "set_loop_mode", 3155355575)
  methodbind.ptrcall(self, [getPtr loopMode])

proc getLoopMode*(self: Animation): Animation_LoopMode =
  expandMethodBind(className Animation, "get_loop_mode", 1988889481)
  var ret: encoded Animation_LoopMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Animation_LoopMode)

proc setStep*(self: Animation; sizeSec: Float): void =
  expandMethodBind(className Animation, "set_step", 373806689)
  methodbind.ptrcall(self, [getPtr sizeSec])

proc getStep*(self: Animation): Float =
  expandMethodBind(className Animation, "get_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc clear*(self: Animation): void =
  expandMethodBind(className Animation, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc copyTrack*(self: Animation; trackIdx: int32; toAnimation: gdref Animation): void =
  expandMethodBind(className Animation, "copy_track", 148001024)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr toAnimation])

proc compress*(self: Animation; pageSize: uint32 = 8192'u32; fps: uint32 = 120'u32; splitTolerance: Float = 4.0): void =
  expandMethodBind(className Animation, "compress", 3608408117)
  methodbind.ptrcall(self, [getPtr pageSize, getPtr fps, getPtr splitTolerance])

proc isCaptureIncluded*(self: Animation): bool =
  expandMethodBind(className Animation, "is_capture_included", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template length*(self: Animation): untyped = self.getLength()
template `length=`*(self: Animation; value) = self.setLength(value)

template loopMode*(self: Animation): untyped = self.getLoopMode()
template `loopMode=`*(self: Animation; value) = self.setLoopMode(value)

template step*(self: Animation): untyped = self.getStep()
template `step=`*(self: Animation; value) = self.setStep(value)

template captureIncluded*(self: Animation): untyped = self.isCaptureIncluded()

const Animation_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Animation]): Table[string, string] = Animation_vmap