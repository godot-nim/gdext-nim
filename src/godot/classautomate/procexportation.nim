

template argumentHead(info: ClassSignalInfo): ptr PropertyInfo =
  if info.arguments.len == 0: nil
  else: addr info.arguments[0]
template argumentSize(info: ClassSignalInfo): Int =
  info.arguments.len
proc useDefaultName(name: NimNode): bool = name.kind == nnkSym and name.eqIdent "Auto"

proc exportgd_impl(body: NimNode; gdname: NimNode = nil): NimNode =
  let procdef = body
  case procdef.kind
  of RoutineNodes:
    let arg0_T = procdef.params[1][1]
    let gdname = if gdname.useDefaultName: procdef.name.toStrLit else: gdname
    result = newStmtList()
    if body.name.kind != nnkSym:
      result.add procdef

    let signal = procdef.getPragma("signal")
    if signal.isNil:
      let methodinfoDef = classMethodInfo_fromdef(procdef, gdname)
      result.add quote do:
        discard define Service:
          [Unit]
          Before = toHashSet [get_registrationData(typedesc `arg0_T`).methods]
          [Service]
          ExecStart = proc(userdata: pointer) =
            let glue = `methodinfoDef`
            interface_ClassDB_registerExtensionClassMethod(library, addr className(typedesc `arg0_T`), addr glue.info)
    else:
      let signalInfoDef = classSignalInfo_fromdef(procdef, gdname)
      procdef.body = procdef.signalBody(gdname)

      result.add quote do:
        discard define Service:
          [Unit]
          Before = toHashSet [get_registrationData(typedesc `arg0_T`).signals]
          [Service]
          ExecStart = proc(userdata: pointer) =
            let info = `signalInfoDef`
            interface_ClassDB_registerExtensionClassSignal(library, addr className(typedesc `arg0_T`), addr info.name, info.argumentHead, info.argumentSize)
    return
  else:
    warning $procdef.kind, procdef
    return procdef
macro exportgd*(gdname: string; body): untyped =
  exportgd_impl(body, gdname)