{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method instantiatePlayback*(self: VideoStream): gdref VideoStreamPlayback {.base.} = (discard)
proc registerVirtual_instantiatePlayback*[T: VideoStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_instantiate_playback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStream](p_instance).instantiatePlayback().encode(r_ret)

proc setFile*(self: VideoStream; file: String): void =
  expandMethodBind(className VideoStream, "set_file", 83702148)
  methodbind.ptrcall(self, [getPtr file])

proc getFile*(self: VideoStream): String =
  expandMethodBind(className VideoStream, "get_file", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template file*(self: VideoStream): untyped = self.getFile()
template `file=`*(self: VideoStream; value) = self.setFile(value)