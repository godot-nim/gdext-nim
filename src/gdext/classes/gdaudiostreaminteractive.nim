{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setClipCount*(self: AudioStreamInteractive; clipCount: int32): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_count", 1286410249)
  methodbind.ptrcall(self, [getPtr clipCount])

proc getClipCount*(self: AudioStreamInteractive): int32 =
  expandMethodBind(className AudioStreamInteractive, "get_clip_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setInitialClip*(self: AudioStreamInteractive; clipIndex: int32): void =
  expandMethodBind(className AudioStreamInteractive, "set_initial_clip", 1286410249)
  methodbind.ptrcall(self, [getPtr clipIndex])

proc getInitialClip*(self: AudioStreamInteractive): int32 =
  expandMethodBind(className AudioStreamInteractive, "get_initial_clip", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setClipName*(self: AudioStreamInteractive; clipIndex: int32; name: StringName): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_name", 3780747571)
  methodbind.ptrcall(self, [getPtr clipIndex, getPtr name])

proc getClipName*(self: AudioStreamInteractive; clipIndex: int32): StringName =
  expandMethodBind(className AudioStreamInteractive, "get_clip_name", 659327637)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr clipIndex], addr ret)
  (addr ret).decode_result(StringName)

proc setClipStream*(self: AudioStreamInteractive; clipIndex: int32; stream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_stream", 111075094)
  methodbind.ptrcall(self, [getPtr clipIndex, getPtr stream])

proc getClipStream*(self: AudioStreamInteractive; clipIndex: int32): gdref AudioStream =
  expandMethodBind(className AudioStreamInteractive, "get_clip_stream", 2739380747)
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, [getPtr clipIndex], addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setClipAutoAdvance*(self: AudioStreamInteractive; clipIndex: int32; mode: AudioStreamInteractive_AutoAdvanceMode): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_auto_advance", 57217598)
  methodbind.ptrcall(self, [getPtr clipIndex, getPtr mode])

proc getClipAutoAdvance*(self: AudioStreamInteractive; clipIndex: int32): AudioStreamInteractive_AutoAdvanceMode =
  expandMethodBind(className AudioStreamInteractive, "get_clip_auto_advance", 1778634807)
  var ret: encoded AudioStreamInteractive_AutoAdvanceMode
  methodbind.ptrcall(self, [getPtr clipIndex], addr ret)
  (addr ret).decode_result(AudioStreamInteractive_AutoAdvanceMode)

proc setClipAutoAdvanceNextClip*(self: AudioStreamInteractive; clipIndex: int32; autoAdvanceNextClip: int32): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_auto_advance_next_clip", 3937882851)
  methodbind.ptrcall(self, [getPtr clipIndex, getPtr autoAdvanceNextClip])

proc getClipAutoAdvanceNextClip*(self: AudioStreamInteractive; clipIndex: int32): int32 =
  expandMethodBind(className AudioStreamInteractive, "get_clip_auto_advance_next_clip", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr clipIndex], addr ret)
  (addr ret).decode_result(int32)

proc addTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32; fromTime: AudioStreamInteractive_TransitionFromTime; toTime: AudioStreamInteractive_TransitionToTime; fadeMode: AudioStreamInteractive_FadeMode; fadeBeats: Float; useFillerClip: bool = false; fillerClip: int32 = -1; holdPrevious: bool = false): void =
  expandMethodBind(className AudioStreamInteractive, "add_transition", 1630280552)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip, getPtr fromTime, getPtr toTime, getPtr fadeMode, getPtr fadeBeats, getPtr useFillerClip, getPtr fillerClip, getPtr holdPrevious])

proc hasTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  expandMethodBind(className AudioStreamInteractive, "has_transition", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], addr ret)
  (addr ret).decode_result(bool)

proc eraseTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): void =
  expandMethodBind(className AudioStreamInteractive, "erase_transition", 3937882851)
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip])

proc getTransitionList*(self: AudioStreamInteractive): PackedInt32Array =
  expandMethodBind(className AudioStreamInteractive, "get_transition_list", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getTransitionFromTime*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_TransitionFromTime =
  expandMethodBind(className AudioStreamInteractive, "get_transition_from_time", 3453338158)
  var ret: encoded AudioStreamInteractive_TransitionFromTime
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], addr ret)
  (addr ret).decode_result(AudioStreamInteractive_TransitionFromTime)

proc getTransitionToTime*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_TransitionToTime =
  expandMethodBind(className AudioStreamInteractive, "get_transition_to_time", 1369651373)
  var ret: encoded AudioStreamInteractive_TransitionToTime
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], addr ret)
  (addr ret).decode_result(AudioStreamInteractive_TransitionToTime)

proc getTransitionFadeMode*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_FadeMode =
  expandMethodBind(className AudioStreamInteractive, "get_transition_fade_mode", 4065396087)
  var ret: encoded AudioStreamInteractive_FadeMode
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], addr ret)
  (addr ret).decode_result(AudioStreamInteractive_FadeMode)

proc getTransitionFadeBeats*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): Float =
  expandMethodBind(className AudioStreamInteractive, "get_transition_fade_beats", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], addr ret)
  (addr ret).decode_result(Float)

proc isTransitionUsingFillerClip*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  expandMethodBind(className AudioStreamInteractive, "is_transition_using_filler_clip", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], addr ret)
  (addr ret).decode_result(bool)

proc getTransitionFillerClip*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): int32 =
  expandMethodBind(className AudioStreamInteractive, "get_transition_filler_clip", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], addr ret)
  (addr ret).decode_result(int32)

proc isTransitionHoldingPrevious*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  expandMethodBind(className AudioStreamInteractive, "is_transition_holding_previous", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fromClip, getPtr toClip], addr ret)
  (addr ret).decode_result(bool)

template initialClip*(self: AudioStreamInteractive): untyped = self.getInitialClip()
template `initialClip=`*(self: AudioStreamInteractive; value) = self.setInitialClip(value)

template clipCount*(self: AudioStreamInteractive): untyped = self.getClipCount()
template `clipCount=`*(self: AudioStreamInteractive; value) = self.setClipCount(value)

const AudioStreamInteractive_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamInteractive]): Table[string, string] = AudioStreamInteractive_vmap