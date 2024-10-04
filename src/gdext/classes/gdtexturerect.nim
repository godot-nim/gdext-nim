{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setTexture*(self: TextureRect; texture: gdref Texture2D): void =
  expandMethodBind(className TextureRect, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: TextureRect): gdref Texture2D =
  expandMethodBind(className TextureRect, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setExpandMode*(self: TextureRect; expandMode: TextureRect_ExpandMode): void =
  expandMethodBind(className TextureRect, "set_expand_mode", 1870766882)
  var `?param` = [getPtr expandMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExpandMode*(self: TextureRect): TextureRect_ExpandMode =
  expandMethodBind(className TextureRect, "get_expand_mode", 3863824733)
  var ret: encoded TextureRect_ExpandMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextureRect_ExpandMode)

proc setFlipH*(self: TextureRect; enable: bool): void =
  expandMethodBind(className TextureRect, "set_flip_h", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFlippedH*(self: TextureRect): bool =
  expandMethodBind(className TextureRect, "is_flipped_h", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFlipV*(self: TextureRect; enable: bool): void =
  expandMethodBind(className TextureRect, "set_flip_v", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFlippedV*(self: TextureRect): bool =
  expandMethodBind(className TextureRect, "is_flipped_v", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setStretchMode*(self: TextureRect; stretchMode: TextureRect_StretchMode): void =
  expandMethodBind(className TextureRect, "set_stretch_mode", 58788729)
  var `?param` = [getPtr stretchMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStretchMode*(self: TextureRect): TextureRect_StretchMode =
  expandMethodBind(className TextureRect, "get_stretch_mode", 346396079)
  var ret: encoded TextureRect_StretchMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextureRect_StretchMode)

template texture*(self: TextureRect): untyped = self.getTexture()
template `texture=`*(self: TextureRect; value) = self.setTexture(value)

template expandMode*(self: TextureRect): untyped = self.getExpandMode()
template `expandMode=`*(self: TextureRect; value) = self.setExpandMode(value)

template stretchMode*(self: TextureRect): untyped = self.getStretchMode()
template `stretchMode=`*(self: TextureRect; value) = self.setStretchMode(value)

template flipH*(self: TextureRect): untyped = self.isFlippedH()
template `flipH=`*(self: TextureRect; value) = self.setFlipH(value)

template flipV*(self: TextureRect): untyped = self.isFlippedV()
template `flipV=`*(self: TextureRect; value) = self.setFlipV(value)

const TextureRect_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextureRect]): Table[string, string] = TextureRect_vmap