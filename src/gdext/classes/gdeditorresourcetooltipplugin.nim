{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method handles*(self: EditorResourceTooltipPlugin; `type`: String): bool {.base.} = (discard)
proc handles(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourceTooltipPlugin](p_instance).handles(p_args[0].decode(String)).encode(r_ret)
template handles_bind*(_: typedesc[EditorResourceTooltipPlugin]): ClassCallVirtual = handles

method makeTooltipForPath*(self: EditorResourceTooltipPlugin; path: String; metadata: Dictionary; base: Control): Control {.base.} = (discard)
proc makeTooltipForPath(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourceTooltipPlugin](p_instance).makeTooltipForPath(p_args[0].decode(String), p_args[1].decode(Dictionary), p_args[2].decode(Control)).encode(r_ret)
template makeTooltipForPath_bind*(_: typedesc[EditorResourceTooltipPlugin]): ClassCallVirtual = makeTooltipForPath

proc requestThumbnail*(self: EditorResourceTooltipPlugin; path: String; control: TextureRect): void =
  expandMethodBind(className EditorResourceTooltipPlugin, "request_thumbnail", 3245519720)
  var `?param` = [getPtr path, getPtr control]
  methodbind.ptrcall(self, addr `?param`[0])

const EditorResourceTooltipPlugin_vmap =
  RefCounted.vmap.concat toTable {
    "handles" : "_handles",
    "maketooltipforpath" : "_make_tooltip_for_path",
    }
template vmap*(_: typedesc[EditorResourceTooltipPlugin]): Table[string, string] = EditorResourceTooltipPlugin_vmap