{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamInteractive, AudioStream)

const ClipAny* = -1

proc setClipCount*(self: AudioStreamInteractive; clipCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "set_clip_count", 1286410249)
  methodbind.ptrcall(self, [getPtr clipCount], void)

proc getClipCount*(self: AudioStreamInteractive): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_clip_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setInitialClip*(self: AudioStreamInteractive; clipIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "set_initial_clip", 1286410249)
  methodbind.ptrcall(self, [getPtr clipIndex], void)

proc getInitialClip*(self: AudioStreamInteractive): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_initial_clip", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setClipName*(self: AudioStreamInteractive; clipIndex: int32; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "set_clip_name", 3780747571)
  methodbind.ptrcall(self, [getPtr clipIndex, getPtr name], void)

proc getClipName*(self: AudioStreamInteractive; clipIndex: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_clip_name", 659327637)
  methodbind.ptrcall(self, [getPtr clipIndex], StringName)

proc setClipStream*(self: AudioStreamInteractive; clipIndex: int32; stream: gdref AudioStream): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "set_clip_stream", 111075094)
  methodbind.ptrcall(self, [getPtr clipIndex, getPtr stream], void)

proc getClipStream*(self: AudioStreamInteractive; clipIndex: int32): gdref AudioStream =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_clip_stream", 2739380747)
  methodbind.ptrcall(self, [getPtr clipIndex], gdref AudioStream)

proc setClipAutoAdvance*(self: AudioStreamInteractive; clipIndex: int32; mode: AudioStreamInteractive_AutoAdvanceMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "set_clip_auto_advance", 57217598)
  methodbind.ptrcall(self, [getPtr clipIndex, getPtr mode], void)

proc getClipAutoAdvance*(self: AudioStreamInteractive; clipIndex: int32): AudioStreamInteractive_AutoAdvanceMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_clip_auto_advance", 1778634807)
  methodbind.ptrcall(self, [getPtr clipIndex], AudioStreamInteractive_AutoAdvanceMode)

proc setClipAutoAdvanceNextClip*(self: AudioStreamInteractive; clipIndex: int32; autoAdvanceNextClip: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "set_clip_auto_advance_next_clip", 3937882851)
  methodbind.ptrcall(self, [getPtr clipIndex, getPtr autoAdvanceNextClip], void)

proc getClipAutoAdvanceNextClip*(self: AudioStreamInteractive; clipIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_clip_auto_advance_next_clip", 923996154)
  methodbind.ptrcall(self, [getPtr clipIndex], int32)

proc addTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32; fromTime: AudioStreamInteractive_TransitionFromTime; toTime: AudioStreamInteractive_TransitionToTime; fadeMode: AudioStreamInteractive_FadeMode; fadeBeats: Float; useFillerClip: bool = false; fillerClip: int32 = -1; holdPrevious: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "add_transition", 1630280552)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip, getPtr fromTime, getPtr toTime, getPtr fadeMode, getPtr fadeBeats, getPtr useFillerClip, getPtr fillerClip, getPtr holdPrevious], void)

proc hasTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "has_transition", 2522259332)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], bool)

proc eraseTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "erase_transition", 3937882851)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], void)

proc getTransitionList*(self: AudioStreamInteractive): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_transition_list", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc getTransitionFromTime*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_TransitionFromTime =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_transition_from_time", 3453338158)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], AudioStreamInteractive_TransitionFromTime)

proc getTransitionToTime*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_TransitionToTime =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_transition_to_time", 1369651373)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], AudioStreamInteractive_TransitionToTime)

proc getTransitionFadeMode*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_FadeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_transition_fade_mode", 4065396087)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], AudioStreamInteractive_FadeMode)

proc getTransitionFadeBeats*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_transition_fade_beats", 3085491603)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], Float)

proc isTransitionUsingFillerClip*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "is_transition_using_filler_clip", 2522259332)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], bool)

proc getTransitionFillerClip*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "get_transition_filler_clip", 3175239445)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], int32)

proc isTransitionHoldingPrevious*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamInteractive, "is_transition_holding_previous", 2522259332)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], bool)

template clipCount*(self: AudioStreamInteractive): untyped = self.getClipCount()
template `clipCount=`*(self: AudioStreamInteractive; value) = self.setClipCount(value)

template initialClip*(self: AudioStreamInteractive): untyped = self.getInitialClip()
template `initialClip=`*(self: AudioStreamInteractive; value) = self.setInitialClip(value)
