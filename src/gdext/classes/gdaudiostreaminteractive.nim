{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setClipCount*(self: AudioStreamInteractive; clipCount: int32): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_count", 1286410249)
  var `?param` = [getPtr clipCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getClipCount*(self: AudioStreamInteractive): int32 =
  expandMethodBind(className AudioStreamInteractive, "get_clip_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setInitialClip*(self: AudioStreamInteractive; clipIndex: int32): void =
  expandMethodBind(className AudioStreamInteractive, "set_initial_clip", 1286410249)
  var `?param` = [getPtr clipIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInitialClip*(self: AudioStreamInteractive): int32 =
  expandMethodBind(className AudioStreamInteractive, "get_initial_clip", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setClipName*(self: AudioStreamInteractive; clipIndex: int32; name: StringName): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_name", 3780747571)
  var `?param` = [getPtr clipIndex, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getClipName*(self: AudioStreamInteractive; clipIndex: int32): StringName =
  expandMethodBind(className AudioStreamInteractive, "get_clip_name", 659327637)
  var `?param` = [getPtr clipIndex]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setClipStream*(self: AudioStreamInteractive; clipIndex: int32; stream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_stream", 111075094)
  var `?param` = [getPtr clipIndex, getPtr stream]
  methodbind.ptrcall(self, addr `?param`[0])

proc getClipStream*(self: AudioStreamInteractive; clipIndex: int32): gdref AudioStream =
  expandMethodBind(className AudioStreamInteractive, "get_clip_stream", 2739380747)
  var `?param` = [getPtr clipIndex]
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setClipAutoAdvance*(self: AudioStreamInteractive; clipIndex: int32; mode: AudioStreamInteractive_AutoAdvanceMode): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_auto_advance", 57217598)
  var `?param` = [getPtr clipIndex, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getClipAutoAdvance*(self: AudioStreamInteractive; clipIndex: int32): AudioStreamInteractive_AutoAdvanceMode =
  expandMethodBind(className AudioStreamInteractive, "get_clip_auto_advance", 1778634807)
  var `?param` = [getPtr clipIndex]
  var ret: encoded AudioStreamInteractive_AutoAdvanceMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(AudioStreamInteractive_AutoAdvanceMode)

proc setClipAutoAdvanceNextClip*(self: AudioStreamInteractive; clipIndex: int32; autoAdvanceNextClip: int32): void =
  expandMethodBind(className AudioStreamInteractive, "set_clip_auto_advance_next_clip", 3937882851)
  var `?param` = [getPtr clipIndex, getPtr autoAdvanceNextClip]
  methodbind.ptrcall(self, addr `?param`[0])

proc getClipAutoAdvanceNextClip*(self: AudioStreamInteractive; clipIndex: int32): int32 =
  expandMethodBind(className AudioStreamInteractive, "get_clip_auto_advance_next_clip", 923996154)
  var `?param` = [getPtr clipIndex]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32; fromTime: AudioStreamInteractive_TransitionFromTime; toTime: AudioStreamInteractive_TransitionToTime; fadeMode: AudioStreamInteractive_FadeMode; fadeBeats: Float; useFillerClip: bool = false; fillerClip: int32 = -1; holdPrevious: bool = false): void =
  expandMethodBind(className AudioStreamInteractive, "add_transition", 1630280552)
  var `?param` = [getPtr fromClip, getPtr toClip, getPtr fromTime, getPtr toTime, getPtr fadeMode, getPtr fadeBeats, getPtr useFillerClip, getPtr fillerClip, getPtr holdPrevious]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  expandMethodBind(className AudioStreamInteractive, "has_transition", 2522259332)
  var `?param` = [getPtr fromClip, getPtr toClip]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc eraseTransition*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): void =
  expandMethodBind(className AudioStreamInteractive, "erase_transition", 3937882851)
  var `?param` = [getPtr fromClip, getPtr toClip]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransitionList*(self: AudioStreamInteractive): PackedInt32Array =
  expandMethodBind(className AudioStreamInteractive, "get_transition_list", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getTransitionFromTime*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_TransitionFromTime =
  expandMethodBind(className AudioStreamInteractive, "get_transition_from_time", 3453338158)
  var `?param` = [getPtr fromClip, getPtr toClip]
  var ret: encoded AudioStreamInteractive_TransitionFromTime
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(AudioStreamInteractive_TransitionFromTime)

proc getTransitionToTime*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_TransitionToTime =
  expandMethodBind(className AudioStreamInteractive, "get_transition_to_time", 1369651373)
  var `?param` = [getPtr fromClip, getPtr toClip]
  var ret: encoded AudioStreamInteractive_TransitionToTime
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(AudioStreamInteractive_TransitionToTime)

proc getTransitionFadeMode*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): AudioStreamInteractive_FadeMode =
  expandMethodBind(className AudioStreamInteractive, "get_transition_fade_mode", 4065396087)
  var `?param` = [getPtr fromClip, getPtr toClip]
  var ret: encoded AudioStreamInteractive_FadeMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(AudioStreamInteractive_FadeMode)

proc getTransitionFadeBeats*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): Float =
  expandMethodBind(className AudioStreamInteractive, "get_transition_fade_beats", 3085491603)
  var `?param` = [getPtr fromClip, getPtr toClip]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc isTransitionUsingFillerClip*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  expandMethodBind(className AudioStreamInteractive, "is_transition_using_filler_clip", 2522259332)
  var `?param` = [getPtr fromClip, getPtr toClip]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getTransitionFillerClip*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): int32 =
  expandMethodBind(className AudioStreamInteractive, "get_transition_filler_clip", 3175239445)
  var `?param` = [getPtr fromClip, getPtr toClip]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc isTransitionHoldingPrevious*(self: AudioStreamInteractive; fromClip: int32; toClip: int32): bool =
  expandMethodBind(className AudioStreamInteractive, "is_transition_holding_previous", 2522259332)
  var `?param` = [getPtr fromClip, getPtr toClip]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

template initialClip*(self: AudioStreamInteractive): untyped = self.getInitialClip()
template `initialClip=`*(self: AudioStreamInteractive; value) = self.setInitialClip(value)

template clipCount*(self: AudioStreamInteractive): untyped = self.getClipCount()
template `clipCount=`*(self: AudioStreamInteractive; value) = self.setClipCount(value)

const AudioStreamInteractive_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamInteractive]): Table[string, string] = AudioStreamInteractive_vmap