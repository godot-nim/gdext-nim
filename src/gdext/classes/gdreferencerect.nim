{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc getBorderColor*(self: ReferenceRect): Color =
  expandMethodBind(className ReferenceRect, "get_border_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setBorderColor*(self: ReferenceRect; color: Color): void =
  expandMethodBind(className ReferenceRect, "set_border_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBorderWidth*(self: ReferenceRect): Float =
  expandMethodBind(className ReferenceRect, "get_border_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBorderWidth*(self: ReferenceRect; width: Float): void =
  expandMethodBind(className ReferenceRect, "set_border_width", 373806689)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEditorOnly*(self: ReferenceRect): bool =
  expandMethodBind(className ReferenceRect, "get_editor_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEditorOnly*(self: ReferenceRect; enabled: bool): void =
  expandMethodBind(className ReferenceRect, "set_editor_only", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

template borderColor*(self: ReferenceRect): untyped = self.getBorderColor()
template `borderColor=`*(self: ReferenceRect; value) = self.setBorderColor(value)

template borderWidth*(self: ReferenceRect): untyped = self.getBorderWidth()
template `borderWidth=`*(self: ReferenceRect; value) = self.setBorderWidth(value)

template editorOnly*(self: ReferenceRect): untyped = self.getEditorOnly()
template `editorOnly=`*(self: ReferenceRect; value) = self.setEditorOnly(value)

const ReferenceRect_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ReferenceRect]): Table[string, string] = ReferenceRect_vmap