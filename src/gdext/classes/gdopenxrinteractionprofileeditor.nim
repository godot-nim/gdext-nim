{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrinteractionprofileeditorbase; export gdopenxrinteractionprofileeditorbase

const OpenXRInteractionProfileEditor_vmap =
  OpenXRInteractionProfileEditorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRInteractionProfileEditor]): Table[string, string] = OpenXRInteractionProfileEditor_vmap