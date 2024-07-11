import godotcore/events
import godot/classtraits

type Contract = ref object
  virtual*: Event
  procedure*: Event

proc contract*(T: typedesc): Contract =
  var presult {.global.} : pointer
  if unlikely(presult.isNil):
    new result
    result.virtual = event($T & "::contract::virtual")
    result.procedure = event($T & "::contract::procedure")
    presult = cast[pointer](result)
  cast[Contract](presult)


proc invoke*(contract: Contract) =
  invoke contract.virtual
  invoke contract.procedure