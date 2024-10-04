{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

proc addBlendPoint*(self: AnimationNodeBlendSpace2D; node: gdref AnimationRootNode; pos: Vector2; atIndex: int32 = -1): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "add_blend_point", 402261981)
  var `?param` = [getPtr node, getPtr pos, getPtr atIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBlendPointPosition*(self: AnimationNodeBlendSpace2D; point: int32; pos: Vector2): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_blend_point_position", 163021252)
  var `?param` = [getPtr point, getPtr pos]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendPointPosition*(self: AnimationNodeBlendSpace2D; point: int32): Vector2 =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_blend_point_position", 2299179447)
  var `?param` = [getPtr point]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setBlendPointNode*(self: AnimationNodeBlendSpace2D; point: int32; node: gdref AnimationRootNode): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_blend_point_node", 4240341528)
  var `?param` = [getPtr point, getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendPointNode*(self: AnimationNodeBlendSpace2D; point: int32): gdref AnimationRootNode =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_blend_point_node", 665599029)
  var `?param` = [getPtr point]
  var ret: encoded gdref AnimationRootNode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AnimationRootNode)

proc removeBlendPoint*(self: AnimationNodeBlendSpace2D; point: int32): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "remove_blend_point", 1286410249)
  var `?param` = [getPtr point]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendPointCount*(self: AnimationNodeBlendSpace2D): int32 =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_blend_point_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addTriangle*(self: AnimationNodeBlendSpace2D; x: int32; y: int32; z: int32; atIndex: int32 = -1): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "add_triangle", 753017335)
  var `?param` = [getPtr x, getPtr y, getPtr z, getPtr atIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrianglePoint*(self: AnimationNodeBlendSpace2D; triangle: int32; point: int32): int32 =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_triangle_point", 50157827)
  var `?param` = [getPtr triangle, getPtr point]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc removeTriangle*(self: AnimationNodeBlendSpace2D; triangle: int32): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "remove_triangle", 1286410249)
  var `?param` = [getPtr triangle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTriangleCount*(self: AnimationNodeBlendSpace2D): int32 =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_triangle_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMinSpace*(self: AnimationNodeBlendSpace2D; minSpace: Vector2): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_min_space", 743155724)
  var `?param` = [getPtr minSpace]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinSpace*(self: AnimationNodeBlendSpace2D): Vector2 =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_min_space", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setMaxSpace*(self: AnimationNodeBlendSpace2D; maxSpace: Vector2): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_max_space", 743155724)
  var `?param` = [getPtr maxSpace]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxSpace*(self: AnimationNodeBlendSpace2D): Vector2 =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_max_space", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setSnap*(self: AnimationNodeBlendSpace2D; snap: Vector2): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_snap", 743155724)
  var `?param` = [getPtr snap]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSnap*(self: AnimationNodeBlendSpace2D): Vector2 =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_snap", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setXLabel*(self: AnimationNodeBlendSpace2D; text: String): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_x_label", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getXLabel*(self: AnimationNodeBlendSpace2D): String =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_x_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setYLabel*(self: AnimationNodeBlendSpace2D; text: String): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_y_label", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getYLabel*(self: AnimationNodeBlendSpace2D): String =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_y_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setAutoTriangles*(self: AnimationNodeBlendSpace2D; enable: bool): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_auto_triangles", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoTriangles*(self: AnimationNodeBlendSpace2D): bool =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_auto_triangles", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBlendMode*(self: AnimationNodeBlendSpace2D; mode: AnimationNodeBlendSpace2D_BlendMode): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_blend_mode", 81193520)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendMode*(self: AnimationNodeBlendSpace2D): AnimationNodeBlendSpace2D_BlendMode =
  expandMethodBind(className AnimationNodeBlendSpace2D, "get_blend_mode", 1398433632)
  var ret: encoded AnimationNodeBlendSpace2D_BlendMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationNodeBlendSpace2D_BlendMode)

proc setUseSync*(self: AnimationNodeBlendSpace2D; enable: bool): void =
  expandMethodBind(className AnimationNodeBlendSpace2D, "set_use_sync", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingSync*(self: AnimationNodeBlendSpace2D): bool =
  expandMethodBind(className AnimationNodeBlendSpace2D, "is_using_sync", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template autoTriangles*(self: AnimationNodeBlendSpace2D): untyped = self.getAutoTriangles()
template `autoTriangles=`*(self: AnimationNodeBlendSpace2D; value) = self.setAutoTriangles(value)

template triangles*(self: AnimationNodeBlendSpace2D): untyped = self.getTriangles()
template `triangles=`*(self: AnimationNodeBlendSpace2D; value) = self.setTriangles(value)

template minSpace*(self: AnimationNodeBlendSpace2D): untyped = self.getMinSpace()
template `minSpace=`*(self: AnimationNodeBlendSpace2D; value) = self.setMinSpace(value)

template maxSpace*(self: AnimationNodeBlendSpace2D): untyped = self.getMaxSpace()
template `maxSpace=`*(self: AnimationNodeBlendSpace2D; value) = self.setMaxSpace(value)

template snap*(self: AnimationNodeBlendSpace2D): untyped = self.getSnap()
template `snap=`*(self: AnimationNodeBlendSpace2D; value) = self.setSnap(value)

template xLabel*(self: AnimationNodeBlendSpace2D): untyped = self.getXLabel()
template `xLabel=`*(self: AnimationNodeBlendSpace2D; value) = self.setXLabel(value)

template yLabel*(self: AnimationNodeBlendSpace2D): untyped = self.getYLabel()
template `yLabel=`*(self: AnimationNodeBlendSpace2D; value) = self.setYLabel(value)

template blendMode*(self: AnimationNodeBlendSpace2D): untyped = self.getBlendMode()
template `blendMode=`*(self: AnimationNodeBlendSpace2D; value) = self.setBlendMode(value)

template sync*(self: AnimationNodeBlendSpace2D): untyped = self.isUsingSync()
template `sync=`*(self: AnimationNodeBlendSpace2D; value) = self.setUseSync(value)

const AnimationNodeBlendSpace2D_vmap =
  AnimationRootNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeBlendSpace2D]): Table[string, string] = AnimationNodeBlendSpace2D_vmap

proc trianglesUpdated*(self: AnimationNodeBlendSpace2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("triangles_updated")
  self.emitSignal(signalname)