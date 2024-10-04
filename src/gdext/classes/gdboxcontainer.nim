{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc addSpacer*(self: BoxContainer; begin: bool): Control =
  expandMethodBind(className BoxContainer, "add_spacer", 1326660695)
  var `?param` = [getPtr begin]
  var ret: encoded Control
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Control)

proc setAlignment*(self: BoxContainer; alignment: BoxContainer_AlignmentMode): void =
  expandMethodBind(className BoxContainer, "set_alignment", 2456745134)
  var `?param` = [getPtr alignment]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAlignment*(self: BoxContainer): BoxContainer_AlignmentMode =
  expandMethodBind(className BoxContainer, "get_alignment", 1915476527)
  var ret: encoded BoxContainer_AlignmentMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(BoxContainer_AlignmentMode)

proc setVertical*(self: BoxContainer; vertical: bool): void =
  expandMethodBind(className BoxContainer, "set_vertical", 2586408642)
  var `?param` = [getPtr vertical]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVertical*(self: BoxContainer): bool =
  expandMethodBind(className BoxContainer, "is_vertical", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template alignment*(self: BoxContainer): untyped = self.getAlignment()
template `alignment=`*(self: BoxContainer; value) = self.setAlignment(value)

template vertical*(self: BoxContainer): untyped = self.isVertical()
template `vertical=`*(self: BoxContainer; value) = self.setVertical(value)

const BoxContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[BoxContainer]): Table[string, string] = BoxContainer_vmap