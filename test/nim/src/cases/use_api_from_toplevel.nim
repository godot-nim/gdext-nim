import std/unittest
unittest.disableParamFiltering()

import gdext
import gdext/core/gdclass
import classes/gdtestobject

type Test = enum
  test_proc_arg0_noret
  test_proc_arg1_noret
  test_proc_arg0_ret
  test_proc_arg1_ret

var passed: set[Test]

proc arg0_noret* {.gdsync.} =
  passed.incl test_proc_arg0_noret

proc arg0_ret*: string {.gdsync.} =
  passed.incl test_proc_arg0_ret
  "arg0_ret"

proc arg1_ret*(what: string): string {.gdsync.} =
  if what == "arg0_ret":
    passed.incl test_proc_arg1_ret
  what & " arg1_ret"

proc arg1_noret*(what: string) {.gdsync.} =
  if what == "arg0_ret arg1_ret":
    passed.incl test_proc_arg1_noret

proc signal_arg0*: Error {.gdsync, signal.}
proc signal_arg1*(what: string): Error {.gdsync, signal.}

proc listen_0* {.gdsync.} = discard
proc listen_1*(what: string) {.gdsync.} = discard


test "instantiate at global":
  let engineclass = instantiate Object
  let extentclass = instantiate TestObject

  check CLASS_getObjectPtr(engineclass) != nil
  check CLASS_getObjectPtr(extentclass) != nil

test "connect to global signal":
  var signal_arg0_obj = extmain.signal"signal_arg0"
  var signal_arg1_obj = extmain.signal"signal_arg1"

  check signal_arg0_obj.connect(extmain.callable"listen_0") == 0
  check signal_arg0_obj.connect(extmain.callable"listen_1") == 0
  check signal_arg1_obj.connect(extmain.callable"listen_0") == 0
  check signal_arg1_obj.connect(extmain.callable"listen_1") == 0

proc exec_checks_use_api_from_toplevel {.gdsync.} =
  test "use global proc":
    for t in Test:
      check t in passed
