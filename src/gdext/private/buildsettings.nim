const
  Extension_name {.strdefine: "Extension.name".} = ""
  Extension_entrySymbol {.strdefine: "Extension.entrySymbol".} = "init_library"
  Extension_decimalPrecision {.strdefine: "Extension.decimalPrecision".} = "float"

  Assistance_checkEnv {.booldefine: "Assistance.checkenv".} = on
  Assistance_genEditorHelp {.booldefine: "Assistance.genEditorHelp".} = on

  Dev_debugCallbacks {.booldefine: "Dev.debugCallbacks".} = off
  Dev_debugEvents {.booldefine: "Dev.debugEvents".} = off

  Extension* = (
    name: Extension_name,
    entrySymbol: Extension_entrySymbol,
    decimalPrecision: Extension_decimalPrecision,
  )
  Assistance* = (
    checkEnv: Assistance_checkEnv,
    genEditorHelp: Assistance_genEditorHelp,
  )
  Dev* = (
    debugCallbacks: Dev_debugCallbacks,
    debugEvents: Dev_debugEvents,
  )

when Assistance.checkEnv:
  when appType != "lib": {.error: """
This project must be compiled as a dynamic library.
Instead, run `nimble build --app:lib` or append `--app: lib` to the config.nims file.""".}
  when Extension.name == "": {.error: """
name of the extension is not declared; try to describe in config.nims:
  import gdext/private/buildsettings
  Extension.name = "MyExtensionName"
""".}
