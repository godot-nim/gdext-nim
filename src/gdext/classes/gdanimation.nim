{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Animation, Resource)

proc addTrack*(self: Animation; `type`: Animation_TrackType; atPosition: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "add_track", 3843682357)
  methodbind.ptrcall(self, [getPtr `type`, getPtr atPosition], int32)

proc removeTrack*(self: Animation; trackIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "remove_track", 1286410249)
  methodbind.ptrcall(self, [getPtr trackIdx], void)

proc getTrackCount*(self: Animation): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_track_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc trackGetType*(self: Animation; trackIdx: int32): Animation_TrackType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_get_type", 3445944217)
  methodbind.ptrcall(self, [getPtr trackIdx], Animation_TrackType)

proc trackGetPath*(self: Animation; trackIdx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_get_path", 408788394)
  methodbind.ptrcall(self, [getPtr trackIdx], NodePath)

proc trackSetPath*(self: Animation; trackIdx: int32; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_set_path", 2761262315)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr path], void)

proc findTrack*(self: Animation; path: NodePath; `type`: Animation_TrackType): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "find_track", 245376003)
  methodbind.ptrcall(self, [getPtr path, getPtr `type`], int32)

proc trackMoveUp*(self: Animation; trackIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_move_up", 1286410249)
  methodbind.ptrcall(self, [getPtr trackIdx], void)

proc trackMoveDown*(self: Animation; trackIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_move_down", 1286410249)
  methodbind.ptrcall(self, [getPtr trackIdx], void)

proc trackMoveTo*(self: Animation; trackIdx: int32; toIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_move_to", 3937882851)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr toIdx], void)

proc trackSwap*(self: Animation; trackIdx: int32; withIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_swap", 3937882851)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr withIdx], void)

proc trackSetImported*(self: Animation; trackIdx: int32; imported: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_set_imported", 300928843)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr imported], void)

proc trackIsImported*(self: Animation; trackIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_is_imported", 1116898809)
  methodbind.ptrcall(self, [getPtr trackIdx], bool)

proc trackSetEnabled*(self: Animation; trackIdx: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_set_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr enabled], void)

proc trackIsEnabled*(self: Animation; trackIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_is_enabled", 1116898809)
  methodbind.ptrcall(self, [getPtr trackIdx], bool)

proc positionTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; position: Vector3): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "position_track_insert_key", 2540608232)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr position], int32)

proc rotationTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; rotation: Quaternion): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "rotation_track_insert_key", 4165004800)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr rotation], int32)

proc scaleTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; scale: Vector3): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "scale_track_insert_key", 2540608232)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr scale], int32)

proc blendShapeTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; amount: Float): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "blend_shape_track_insert_key", 1534913637)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr amount], int32)

proc positionTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "position_track_interpolate", 3530011197)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], Vector3)

proc rotationTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "rotation_track_interpolate", 2915876792)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], Quaternion)

proc scaleTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "scale_track_interpolate", 3530011197)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], Vector3)

proc blendShapeTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "blend_shape_track_interpolate", 2482365182)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], Float)

proc trackInsertKey*(self: Animation; trackIdx: int32; time: float64; key: Variant; transition: Float = 1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_insert_key", 808952278)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr key, getPtr transition], int32)

proc trackRemoveKey*(self: Animation; trackIdx: int32; keyIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_remove_key", 3937882851)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], void)

proc trackRemoveKeyAtTime*(self: Animation; trackIdx: int32; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_remove_key_at_time", 1602489585)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time], void)

proc trackSetKeyValue*(self: Animation; trackIdx: int32; key: int32; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_set_key_value", 2060538656)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr key, getPtr value], void)

proc trackSetKeyTransition*(self: Animation; trackIdx: int32; keyIdx: int32; transition: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_set_key_transition", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr transition], void)

proc trackSetKeyTime*(self: Animation; trackIdx: int32; keyIdx: int32; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_set_key_time", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr time], void)

proc trackGetKeyTransition*(self: Animation; trackIdx: int32; keyIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_get_key_transition", 3085491603)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], Float)

proc trackGetKeyCount*(self: Animation; trackIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_get_key_count", 923996154)
  methodbind.ptrcall(self, [getPtr trackIdx], int32)

proc trackGetKeyValue*(self: Animation; trackIdx: int32; keyIdx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_get_key_value", 678354945)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], Variant)

proc trackGetKeyTime*(self: Animation; trackIdx: int32; keyIdx: int32): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_get_key_time", 3085491603)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], float64)

proc trackFindKey*(self: Animation; trackIdx: int32; time: float64; findMode: Animation_FindMode = findModeNearest; limit: bool = false; backward: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_find_key", 4230953007)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr findMode, getPtr limit, getPtr backward], int32)

proc trackSetInterpolationType*(self: Animation; trackIdx: int32; interpolation: Animation_InterpolationType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_set_interpolation_type", 4112932513)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr interpolation], void)

proc trackGetInterpolationType*(self: Animation; trackIdx: int32): Animation_InterpolationType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_get_interpolation_type", 1530756894)
  methodbind.ptrcall(self, [getPtr trackIdx], Animation_InterpolationType)

proc trackSetInterpolationLoopWrap*(self: Animation; trackIdx: int32; interpolation: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_set_interpolation_loop_wrap", 300928843)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr interpolation], void)

proc trackGetInterpolationLoopWrap*(self: Animation; trackIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_get_interpolation_loop_wrap", 1116898809)
  methodbind.ptrcall(self, [getPtr trackIdx], bool)

proc trackIsCompressed*(self: Animation; trackIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "track_is_compressed", 1116898809)
  methodbind.ptrcall(self, [getPtr trackIdx], bool)

proc valueTrackSetUpdateMode*(self: Animation; trackIdx: int32; mode: Animation_UpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "value_track_set_update_mode", 2854058312)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr mode], void)

proc valueTrackGetUpdateMode*(self: Animation; trackIdx: int32): Animation_UpdateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "value_track_get_update_mode", 1440326473)
  methodbind.ptrcall(self, [getPtr trackIdx], Animation_UpdateMode)

proc valueTrackInterpolate*(self: Animation; trackIdx: int32; timeSec: float64; backward: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "value_track_interpolate", 747269075)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr timeSec, getPtr backward], Variant)

proc methodTrackGetName*(self: Animation; trackIdx: int32; keyIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "method_track_get_name", 351665558)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], StringName)

proc methodTrackGetParams*(self: Animation; trackIdx: int32; keyIdx: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "method_track_get_params", 2345056839)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], Array)

proc bezierTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; value: Float; inHandle: Vector2 = vector2(0, 0); outHandle: Vector2 = vector2(0, 0)): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "bezier_track_insert_key", 3656773645)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr value, getPtr inHandle, getPtr outHandle], int32)

proc bezierTrackSetKeyValue*(self: Animation; trackIdx: int32; keyIdx: int32; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "bezier_track_set_key_value", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr value], void)

proc bezierTrackSetKeyInHandle*(self: Animation; trackIdx: int32; keyIdx: int32; inHandle: Vector2; balancedValueTimeRatio: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "bezier_track_set_key_in_handle", 1719223284)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr inHandle, getPtr balancedValueTimeRatio], void)

proc bezierTrackSetKeyOutHandle*(self: Animation; trackIdx: int32; keyIdx: int32; outHandle: Vector2; balancedValueTimeRatio: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "bezier_track_set_key_out_handle", 1719223284)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr outHandle, getPtr balancedValueTimeRatio], void)

proc bezierTrackGetKeyValue*(self: Animation; trackIdx: int32; keyIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "bezier_track_get_key_value", 3085491603)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], Float)

proc bezierTrackGetKeyInHandle*(self: Animation; trackIdx: int32; keyIdx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "bezier_track_get_key_in_handle", 3016396712)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], Vector2)

proc bezierTrackGetKeyOutHandle*(self: Animation; trackIdx: int32; keyIdx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "bezier_track_get_key_out_handle", 3016396712)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], Vector2)

proc bezierTrackInterpolate*(self: Animation; trackIdx: int32; time: float64): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "bezier_track_interpolate", 1900462983)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time], Float)

proc audioTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; stream: gdref Resource; startOffset: Float = 0; endOffset: Float = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_insert_key", 4021027286)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr stream, getPtr startOffset, getPtr endOffset], int32)

proc audioTrackSetKeyStream*(self: Animation; trackIdx: int32; keyIdx: int32; stream: gdref Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_set_key_stream", 3886397084)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr stream], void)

proc audioTrackSetKeyStartOffset*(self: Animation; trackIdx: int32; keyIdx: int32; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_set_key_start_offset", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr offset], void)

proc audioTrackSetKeyEndOffset*(self: Animation; trackIdx: int32; keyIdx: int32; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_set_key_end_offset", 3506521499)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr offset], void)

proc audioTrackGetKeyStream*(self: Animation; trackIdx: int32; keyIdx: int32): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_get_key_stream", 635277205)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], gdref Resource)

proc audioTrackGetKeyStartOffset*(self: Animation; trackIdx: int32; keyIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_get_key_start_offset", 3085491603)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], Float)

proc audioTrackGetKeyEndOffset*(self: Animation; trackIdx: int32; keyIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_get_key_end_offset", 3085491603)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], Float)

proc audioTrackSetUseBlend*(self: Animation; trackIdx: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_set_use_blend", 300928843)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr enable], void)

proc audioTrackIsUseBlend*(self: Animation; trackIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "audio_track_is_use_blend", 1116898809)
  methodbind.ptrcall(self, [getPtr trackIdx], bool)

proc animationTrackInsertKey*(self: Animation; trackIdx: int32; time: float64; animation: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "animation_track_insert_key", 158676774)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr time, getPtr animation], int32)

proc animationTrackSetKeyAnimation*(self: Animation; trackIdx: int32; keyIdx: int32; animation: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "animation_track_set_key_animation", 117615382)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx, getPtr animation], void)

proc animationTrackGetKeyAnimation*(self: Animation; trackIdx: int32; keyIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "animation_track_get_key_animation", 351665558)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr keyIdx], StringName)

proc addMarker*(self: Animation; name: StringName; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "add_marker", 4135858297)
  methodbind.ptrcall(self, [getPtr name, getPtr time], void)

proc removeMarker*(self: Animation; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "remove_marker", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc hasMarker*(self: Animation; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "has_marker", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getMarkerAtTime*(self: Animation; time: float64): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_marker_at_time", 4079494655)
  methodbind.ptrcall(self, [getPtr time], StringName)

proc getNextMarker*(self: Animation; time: float64): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_next_marker", 4079494655)
  methodbind.ptrcall(self, [getPtr time], StringName)

proc getPrevMarker*(self: Animation; time: float64): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_prev_marker", 4079494655)
  methodbind.ptrcall(self, [getPtr time], StringName)

proc getMarkerTime*(self: Animation; name: StringName): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_marker_time", 2349060816)
  methodbind.ptrcall(self, [getPtr name], float64)

proc getMarkerNames*(self: Animation): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_marker_names", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getMarkerColor*(self: Animation; name: StringName): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_marker_color", 3742943038)
  methodbind.ptrcall(self, [getPtr name], Color)

proc setMarkerColor*(self: Animation; name: StringName; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "set_marker_color", 4260178595)
  methodbind.ptrcall(self, [getPtr name, getPtr color], void)

proc setLength*(self: Animation; timeSec: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr timeSec], void)

proc getLength*(self: Animation): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLoopMode*(self: Animation; loopMode: Animation_LoopMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "set_loop_mode", 3155355575)
  methodbind.ptrcall(self, [getPtr loopMode], void)

proc getLoopMode*(self: Animation): Animation_LoopMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_loop_mode", 1988889481)
  methodbind.ptrcall(self, [], Animation_LoopMode)

proc setStep*(self: Animation; sizeSec: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "set_step", 373806689)
  methodbind.ptrcall(self, [getPtr sizeSec], void)

proc getStep*(self: Animation): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "get_step", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc clear*(self: Animation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc copyTrack*(self: Animation; trackIdx: int32; toAnimation: gdref Animation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "copy_track", 148001024)
  methodbind.ptrcall(self, [getPtr trackIdx, getPtr toAnimation], void)

proc optimize*(self: Animation; allowedVelocityErr: Float = 0.01; allowedAngularErr: Float = 0.01; precision: int32 = 3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "optimize", 3303583852)
  methodbind.ptrcall(self, [getPtr allowedVelocityErr, getPtr allowedAngularErr, getPtr precision], void)

proc compress*(self: Animation; pageSize: uint32 = 8192'u32; fps: uint32 = 120'u32; splitTolerance: Float = 4.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "compress", 3608408117)
  methodbind.ptrcall(self, [getPtr pageSize, getPtr fps, getPtr splitTolerance], void)

proc isCaptureIncluded*(self: Animation): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Animation, "is_capture_included", 36873697)
  methodbind.ptrcall(self, [], bool)

template length*(self: Animation): untyped = self.getLength()
template `length=`*(self: Animation; value) = self.setLength(value)

template loopMode*(self: Animation): untyped = self.getLoopMode()
template `loopMode=`*(self: Animation; value) = self.setLoopMode(value)

template step*(self: Animation): untyped = self.getStep()
template `step=`*(self: Animation; value) = self.setStep(value)

template captureIncluded*(self: Animation): untyped = self.isCaptureIncluded()
