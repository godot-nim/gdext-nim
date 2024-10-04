{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

method instantiatePlayback*(self: VideoStream): gdref VideoStreamPlayback {.base.} = (discard)
proc instantiatePlayback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStream](p_instance).instantiatePlayback().encode(r_ret)
template instantiatePlayback_bind*(_: typedesc[VideoStream]): ClassCallVirtual = instantiatePlayback

proc setFile*(self: VideoStream; file: String): void =
  expandMethodBind(className VideoStream, "set_file", 83702148)
  var `?param` = [getPtr file]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFile*(self: VideoStream): String =
  expandMethodBind(className VideoStream, "get_file", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template file*(self: VideoStream): untyped = self.getFile()
template `file=`*(self: VideoStream; value) = self.setFile(value)

const VideoStream_vmap =
  Resource.vmap.concat toTable {
    "instantiateplayback" : "_instantiate_playback",
    }
template vmap*(_: typedesc[VideoStream]): Table[string, string] = VideoStream_vmap